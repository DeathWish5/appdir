#include "defs.h"
#include "memlayout.h"
#include "riscv.h"

void main();

// entry.S needs one stack per CPU.
__attribute__((aligned(16))) char stack0[4096];

// entry.S jumps here in machine mode on stack0.
void start() {
    // set M Previous Privilege mode to Supervisor, for mret.
    unsigned long x = r_mstatus();
    x &= ~MSTATUS_MPP_MASK;
    x |= MSTATUS_MPP_S;
    w_mstatus(x);

    // set M Exception Program Counter to main, for mret.
    // requires gcc -mcmodel=medany
    w_mepc((uint64) main);

    // disable paging for now.
    w_satp(0);

    // delegate all interrupts and exceptions to supervisor mode.
    w_medeleg(0xffff);
    w_mideleg(0xffff);
    w_sie(r_sie() | SIE_SEIE | SIE_STIE | SIE_SSIE);

    // switch to supervisor mode and jump to main().
    asm volatile("mret");
}