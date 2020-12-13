#include "defs.h"
#include "proc.h"
#include "riscv.h"
#include "trap.h"
#include "memory_layout.h"

static int app_cur, app_num;
static uint64 *app_info_ptr;
extern char _app_num[], _app_names[];
int fin = 0;

char names[10][100];

int finished() {
    ++fin;
    if (fin >= app_num)
        panic("all apps over\n");
    return 0;
}

void batchinit() {
    char* s;
    app_info_ptr = (uint64 *) _app_num;
    app_cur = -1;
    app_num = *app_info_ptr;
    app_info_ptr++;

    s = _app_names;
    for(int i = 0; i < app_num; ++i) {
        int len = strlen(s);
        strncpy(names[i], (const char*)s, len);
        s += len + 1;
        printf("new name: %s\n", names[i]);
        trace("new name: %s\n", names[i]);
    }
}

int get_id_by_name(char* name) {
    for(int i = 0; i < app_num; ++i) {
        if(strncmp(name, names[i], 100))
            return i;
    }
    return -1;
}

void bin_loader(uint64 start, uint64 end, struct proc *p) {
    uint64 s = PGROUNDDOWN(start), e = PGROUNDUP(end);
    info("range : [%p, %p] start = %p\n", s, e, start);
    p->offset = p->sz;
    if(p->offset != 0x1000)
        panic("offset must be 0x1000\n");
    for(uint64 cur = s; cur < e; cur += PGSIZE) {
        void* page = kalloc();
        if(page == 0) {
            panic("");
        }
        memmove(page, (const void*)cur, PGSIZE);
        if (mappages(p->pagetable, p->sz, PGSIZE, (uint64)page, PTE_U | PTE_R | PTE_W | PTE_X) != 0) {
            panic("mappages\n");
        }
        p->sz += PGSIZE;
    }
    p->trapframe->epc = p->offset + start - s;
    p->trapframe->sp = p->ustack + USTACK_SIZE;
}

void loader(int id, void* p) {
    bin_loader(app_info_ptr[id], app_info_ptr[id+1], p);
}

int run_all_app() {
    for (int i = 0; i < app_num; ++i) {
        app_cur++;
        struct proc *p = allocproc();
        p->parent = 0;
        info("run app %d\n", app_cur);
        loader(i, p);
        p->state = RUNNABLE;
    }
    return 0;
}