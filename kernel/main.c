#include "defs.h"

extern char stext[];
extern char etext[];
extern char srodata[];
extern char erodata[];
extern char sdata[];
extern char edata[];
extern char sbss[];
extern char ebss[];

void clean_bss() {
    char* p;
    for(p = sbss; p < ebss; ++p)
        *p = 0;
}

int debug_level = INFO;

void main() {
    clean_bss();
    trapinit();
    kinit();
    procinit();
    kvminit();
    kvminithart();
    batchinit();
    timerinit();
    run_all_app();
    info("start scheduler!\n");
    scheduler();
}
