#ifndef __STDIO_H__
#define __STDIO_H__

#define stdin  0
#define stdout 0
#define stderr 0

#define va_start(ap, last) (__builtin_va_start(ap, last))
#define va_arg(ap, type)   (__builtin_va_arg(ap, type))
#define va_end(ap)         (__builtin_va_end(ap))
#define va_copy(d, s)      (__builtin_va_copy(d, s))

typedef __builtin_va_list va_list;
typedef unsigned long int uintmax_t;
typedef long int intmax_t;
int puts(const char* s);
int fprintf(int fd, const char* fmt, ...);
int printf(const char* fmt, ...);

#endif // __STDIO_H__
