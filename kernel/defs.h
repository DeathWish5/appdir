#ifndef __DEF_H__
#define __DEF_H__

typedef unsigned int uint;
typedef unsigned short ushort;
typedef unsigned char uchar;
typedef unsigned char uint8;
typedef unsigned short uint16;
typedef unsigned int uint32;
typedef unsigned long uint64;
typedef uint64 pte_t;
typedef uint64 pde_t;
typedef uint64 *pagetable_t;// 512 PTEs

struct context;
struct proc;

// panic.c
void loop();
void panic(char *);

// sbi.c
void console_putchar(int);
int console_getchar();
void set_timer(uint64);

// console.c
void consoleinit(void);
void consputc(int);

// logger.c
void printf(const char*, ...);
#include "logger.h"

// trap.c
void trapinit();
void usertrapret();
void set_usertrap(void);
void set_kerneltrap(void);

// string.c
int memcmp(const void *, const void *, uint);
void *memmove(void *, const void *, uint);
void *memset(void *, int, uint);
char *safestrcpy(char *, const char *, int);
int strlen(const char *);
int strncmp(const char *, const char *, uint);
char *strncpy(char *, const char *, int);

// syscall.c
void syscall();

// swtch.S
void swtch(struct context *, struct context *);

// loader.c
int finished();
void batchinit();
int run_all_app();
int get_id_by_name(char* name);
void loader(int, void*);

// proc.c
struct proc *curr_proc();
void exit(int);
void procinit(void);
void scheduler(void) __attribute__((noreturn));
void sched(void);
void yield(void);
struct proc *allocproc();

// kalloc.c
void *kalloc(void);
void kfree(void *);
void kinit(void);

// vm.c
void kvminit(void);
void kvminithart(void);
void kvmmap(pagetable_t, uint64, uint64, uint64, int);
int mappages(pagetable_t, uint64, uint64, uint64, int);
pagetable_t uvmcreate(void);
void uvminit(pagetable_t, uchar *, uint);
uint64 uvmalloc(pagetable_t, uint64, uint64);
uint64 uvmdealloc(pagetable_t, uint64, uint64);
int uvmcopy(pagetable_t, pagetable_t, uint64);
void uvmfree(pagetable_t, uint64);
void uvmunmap(pagetable_t, uint64, uint64, int);
void uvmclear(pagetable_t, uint64);
uint64 walkaddr(pagetable_t, uint64);
int copyout(pagetable_t, uint64, char *, uint64);
int copyin(pagetable_t, char *, uint64, uint64);
int copyinstr(pagetable_t, char *, uint64, uint64);
void debugwalk(pagetable_t, int);
// timer.c
uint64 get_cycle();
void timerinit();
void set_next_timer();

#define MIN(a, b) (a < b ? a : b)
#define MAX(a, b) (a > b ? a : b)

// number of elements in fixed-size array
#define NELEM(x) (sizeof(x) / sizeof((x)[0]))

#endif