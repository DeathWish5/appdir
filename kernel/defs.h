// console.c
void consoleinit(void);
void consputc(int);

// printf.c
void printf(char *, ...);
void panic(char *) __attribute__((noreturn));
void printfinit(void);

// uart.c
void uartinit(void);
void uartputc_sync(int);

// number of elements in fixed-size array
#define NELEM(x) (sizeof(x) / sizeof((x)[0]))
