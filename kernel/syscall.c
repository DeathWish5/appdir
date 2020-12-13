#include "defs.h"
#include "syscall_ids.h"
#include "trap.h"
#include "proc.h"

#define min(a, b) a < b ? a : b;

uint64 sys_write(int fd, uint64 va, uint len) {
    if (fd != 0)
        return -1;
    struct proc *p = curr_proc();
    char* str = (char*)(walkaddr(p->pagetable, va) | (va & 0xfffULL));
    int size = min(strlen(str), len);
    for(int i = 0; i < size; ++i) {
        console_putchar(str[i]);
    }
    return size;
}

uint64 sys_exit(int code) {
    exit(code);
    return 0;
}

uint64 sys_sched_yield() {
    yield();
    return 0;
}

uint64 sys_getpid() {
    return curr_proc()->pid;
}

void syscall() {
    struct proc *p = curr_proc();
    struct trapframe *trapframe = p->trapframe;
    int id = trapframe->a7, ret;
    uint64 args[6] = {trapframe->a0, trapframe->a1, trapframe->a2, trapframe->a3, trapframe->a4, trapframe->a5};
    trace("syscall %d args:%p %p %p %p %p %p\n", id, args[0], args[1], args[2], args[3], args[4], args[5]);
    switch (id) {
        case SYS_write:
            ret = sys_write(args[0], args[1], args[2]);
            break;
        case SYS_exit:
            ret = sys_exit(args[0]);
            break;
        case SYS_sched_yield:
            ret = sys_sched_yield();
            break;
        case SYS_getgid:
            ret = sys_getpid();
            break;
        default:
            ret = -1;
            warn("unknown syscall %d\n", id);
    }
    trapframe->a0 = ret;
    info("syscall ret %d\n", ret);
}
