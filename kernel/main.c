#include "defs.h"

extern char sbss[];
extern char ebss[];

int debug_level;

void clean_bss() {
    char* p;
    for(p = sbss; p < ebss; ++p)
        *p = 0;
    debug_level = INFO;
}

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
