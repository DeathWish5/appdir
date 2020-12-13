#include "defs.h"
#include "proc.h"
#include "trap.h"
#include "riscv.h"
#include "memory_layout.h"

struct proc pool[NPROC];

__attribute__ ((aligned (16))) char kstack[NPROC][KSTACK_SIZE];
extern char trampoline[];

extern char boot_stack[];
struct proc* current_proc;
struct proc idle;


struct proc* curr_proc() {
    return current_proc;
}

void
procinit(void)
{
    struct proc *p;
    for(p = pool; p < &pool[NPROC]; p++) {
        p->state = UNUSED;
        p->kstack = (uint64) kstack[p - pool];
    }
    idle.kstack = (uint64)boot_stack;
    idle.pid = 0;
    idle.killed = 0;
}

int allocpid() {
    static int PID = 1;
    return PID++;
}

pagetable_t
proc_pagetable(struct proc *p)
{
    pagetable_t pagetable;

    // An empty page table.
    pagetable = uvmcreate();
    if(pagetable == 0)
        panic("");

    if(mappages(pagetable, TRAMPOLINE, PGSIZE,
                (uint64)trampoline, PTE_R | PTE_X) < 0){
        uvmfree(pagetable, 0);
        return 0;
    }

    if((p->trapframe = (struct trapframe *)kalloc()) == 0){
        panic("kalloc\n");
    }

    // map the trapframe just below TRAMPOLINE, for trampoline.S.
    if(mappages(pagetable, TRAPFRAME, PGSIZE,
                (uint64)(p->trapframe), PTE_R | PTE_W) < 0){;
        panic("");
    }

    p->ustack = 0;
    p->sz = USTACK_SIZE;
    if(mappages(pagetable, p->ustack, USTACK_SIZE,
                (uint64)kalloc(), PTE_R | PTE_W | PTE_U) < 0){;
        panic("");
    }
    return pagetable;
}

// Free a process's page table, and free the
// physical memory it refers to.
void
proc_freepagetable(pagetable_t pagetable, uint64 sz)
{
    uvmunmap(pagetable, TRAMPOLINE, 1, 0);
    uvmunmap(pagetable, TRAPFRAME, 1, 0);
    uvmfree(pagetable, sz);
}

static void
freeproc(struct proc *p)
{
    if(p->trapframe)
        kfree((void*)p->trapframe);
    p->trapframe = 0;
    if(p->pagetable)
        proc_freepagetable(p->pagetable, p->sz);
    p->pagetable = 0;
    p->state = UNUSED;
}

struct proc* allocproc(void)
{
    struct proc *p;
    for(p = pool; p < &pool[NPROC]; p++) {
        if(p->state == UNUSED) {
            goto found;
        }
    }
    return 0;

found:
    p->pid = allocpid();
    p->state = USED;
    p->offset = 0;
    // An empty user page table.
    p->pagetable = proc_pagetable(p);
    if(p->pagetable == 0){
        panic("");
    }

    memset(&p->context, 0, sizeof(p->context));
    memset((void*)p->kstack, 0, KSTACK_SIZE);
    p->context.ra = (uint64)usertrapret;
    p->context.sp = p->kstack + PGSIZE;
    return p;
}


void
scheduler(void)
{
    struct proc *p;

    for(;;){
        for(p = pool; p < &pool[NPROC]; p++) {
            if(p->state == RUNNABLE) {
                p->state = RUNNING;
                current_proc = p;
                printf("switch to next proc\n");
                swtch(&idle.context, &p->context);
            }
        }
    }
}

// Switch to scheduler.  Must hold only p->lock
// and have changed proc->state. Saves and restores
// intena because intena is a property of this
// kernel thread, not this CPU. It should
// be proc->intena and proc->noff, but that would
// break in the few places where a lock is held but
// there's no process.
void
sched(void)
{
    struct proc *p = curr_proc();
    if(p->state == RUNNING)
        panic("sched running");
    swtch(&p->context, &idle.context);
}

// Give up the CPU for one scheduling round.
void yield(void)
{
    current_proc->state = RUNNABLE;
    sched();
}

int
fork(void)
{
    int pid;
    struct proc *np;
    struct proc *p = curr_proc();

    // Allocate process.
    if((np = allocproc()) == 0){
        panic("allocproc\n");
    }

    // Copy user memory from parent to child.
    if(uvmcopy(p->pagetable, np->pagetable, p->sz) < 0){
        panic("uvmcopy\n");
    }
    np->sz = p->sz;

    // copy saved user registers.
    *(np->trapframe) = *(p->trapframe);

    // Cause fork to return 0 in the child.
    np->trapframe->a0 = 0;
    pid = np->pid;
    np->parent = p;
    np->state = RUNNABLE;
    return pid;
}

int exec(char* name) {
    int id = get_id_by_name(name);
    struct proc *p = curr_proc();
    uvmfree(p->pagetable, p->sz);
    loader(id, p);
    return 0;
}


void exit(int code) {
    struct proc *p = curr_proc();
    p->exit_code = code;
    printf("proc %d exit with %d\n", p->pid, code);
    freeproc(p);
    finished();
    sched();
}