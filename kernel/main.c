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

void show_memory_layout() {
    printf("\n");
    printf("stext: %p\n", stext);
    printf("etext: %p\n", etext);
    printf("sroda: %p\n", srodata);
    printf("eroda: %p\n", erodata);
    printf("sdata: %p\n", sdata);
    printf("edata: %p\n", edata);
    printf("sbss : %p\n", sbss);
    printf("ebss : %p\n", ebss);
    printf("\n");
}

void main() {
    clean_bss();
    printf("GOGOGO!\n");
    trapinit();
    batchinit();
    procinit();
    run_all_app();
    printf("start scheduler!\n");
    scheduler();
}
