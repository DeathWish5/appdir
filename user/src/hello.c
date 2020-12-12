#include <stdio.h>
#include <unistd.h>

int main() {
    puts("hello wrold!\n");
    sched_yield();
    puts("hello world!\n");
    puts("hello world!\n");
    sched_yield();
    puts("hello world!\n");
    return 0;
}