#include <stddef.h>
#include <unistd.h>

#include "syscall.h"

int open(const char* path, int flags, int mode) {
    return syscall(SYS_openat, path, flags, mode);
}

int close(int fd) {
    return syscall(SYS_close, fd);
}

ssize_t write(int fd, const void* buf, size_t len)
{
    return syscall(SYS_write, fd, buf, len);
}

int getpid(void)
{
    return syscall(SYS_getpid);
}

int sched_yield(void)
{
    return syscall(SYS_sched_yield);
}

void exit(int code)
{
    syscall(SYS_exit, code);
}