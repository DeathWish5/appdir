typedef unsigned int   uint;
typedef unsigned short ushort;
typedef unsigned char  uchar;
typedef unsigned char uint8;
typedef unsigned short uint16;
typedef unsigned int  uint32;
typedef unsigned long uint64;

// panic.c
void loop();

// sbi.c
void console_putchar(int);
int console_getchar();
void shutdown();

// console.c
void consoleinit(void);
void consputc(int);

// printf.c
void printf(char *, ...);
void printfinit(void);
void panic(char*);

// number of elements in fixed-size array
#define NELEM(x) (sizeof(x) / sizeof((x)[0]))