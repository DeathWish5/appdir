#include "riscv.h"
#include "defs.h"
#include "trap.h"

extern char trampoline[], uservec[], boot_stack[];
extern void* userret(uint64);

// set up to take exceptions and traps while in the kernel.
void trapinit(void)
{
    w_stvec((uint64)uservec & ~0x3);
}

//
// handle an interrupt, exception, or system call from user space.
// called from trampoline.S
//
void usertrap(struct trapframe *trapframe)
{
    if((r_sstatus() & SSTATUS_SPP) != 0)
        panic("usertrap: not from user mode");

    if(r_scause() == UserEnvCall){
        trapframe->epc += 4;
        syscall();
    } else {
        run_next_app();
        panic("all apps over\n");
    }
    usertrapret(trapframe, (uint64)boot_stack);
}

//
// return to user space
//
void usertrapret(struct trapframe* trapframe, uint64 kstack)
{
    // w_stvec((uint64)uservec);
    trapframe->kernel_satp = r_satp();         // kernel page table
    trapframe->kernel_sp = kstack + PGSIZE; // process's kernel stack
    trapframe->kernel_trap = (uint64)usertrap;
    trapframe->kernel_hartid = r_tp();         // hartid for cpuid()

    w_sepc(trapframe->epc);
    // set up the registers that trampoline.S's sret will use
    // to get to user space.

    // set S Previous Privilege mode to User.
    uint64 x = r_sstatus();
    x &= ~SSTATUS_SPP; // clear SPP to 0 for user mode
    x |= SSTATUS_SPIE; // enable interrupts in user mode
    w_sstatus(x);

    // tell trampoline.S the user page table to switch to.
    // uint64 satp = MAKE_SATP(p->pagetable);
    userret((uint64)trapframe);
}