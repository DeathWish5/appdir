#ifndef __STDDEF_H__
#define __STDDEF_H__

/* Represents true-or-false values */
typedef int bool;

/* Explicitly-sized versions of integer types */
typedef char int8_t;
typedef unsigned char uint8_t;
typedef short int16_t;
typedef unsigned short uint16_t;
typedef int int32_t;
typedef unsigned int uint32_t;
typedef long long int64_t;
typedef unsigned long long uint64_t;

typedef long ptrdiff_t;

#define ULONG_MAX  (0xffffffffffffffffULL)
#define LONG_MAX   (0x7fffffffffffffffLL)
#define INTMAX_MAX LONG_MAX
#define UINT_MAX   (0xffffffffU)
#define INT_MAX    (0x7fffffff)
#define UCHAR_MAX  (0xffU)
#define CHAR_MAX   (0x7f)

/* *
 * Pointers and addresses are 32 bits long.
 * We use pointer types to represent addresses,
 * uintptr_t to represent the numerical values of addresses.
 * */
#if __riscv_xlen == 64
typedef int64_t intptr_t;
typedef uint64_t uintptr_t;
#elif __riscv_xlen == 32
typedef int32_t intptr_t;
typedef uint32_t uintptr_t;
#endif

/* size_t is used for memory object sizes */
typedef uintptr_t size_t;
typedef intptr_t ssize_t;

typedef int pid_t;

#define NULL ((void *)0)

#endif // __STDDEF_H__
