#include <stdio.h>
#include <string.h>
#include <unistd.h>

#define F_PERM 1
#define F_NORD 4
#define F_NOWR 8
#define F_EOF  16
#define F_ERR  32
#define F_SVB  64
#define F_APP  128

#define NL_ARGMAX     9
#define NL_MSGMAX     32767
#define NL_SETMAX     255
#define NL_TEXTMAX    2048
#define LDBL_MANT_DIG 64

#define ALT_FORM (1U << ('#' - ' '))
#define ZERO_PAD (1U << ('0' - ' '))
#define LEFT_ADJ (1U << ('-' - ' '))
#define PAD_POS  (1U << (' ' - ' '))
#define MARK_POS (1U << ('+' - ' '))
#define GROUPED  (1U << ('\'' - ' '))
#define FLAGMASK (ALT_FORM | ZERO_PAD | LEFT_ADJ | PAD_POS | MARK_POS | GROUPED)

#define OOB(x) ((unsigned)(x) - 'A' > 'z' - 'A')
#define S(x)   [(x) - 'A']

#define MAX(a, b) ((a) > (b) ? (a) : (b))
#define MIN(a, b) ((a) < (b) ? (a) : (b))

int putchar(int c)
{
    char byte = c;
    return write(stdout, &byte, 1);
}

int puts(const char* s)
{
    int r;
    r = -(write(stdout, s, strlen(s)) < 0 || putchar('\n') < 0);
    return r;
}

enum {
    BARE,
    LPRE,
    LLPRE,
    HPRE,
    HHPRE,
    BIGLPRE,
    ZTPRE,
    JPRE,
    STOP,
    PTR,
    INT,
    UINT,
    ULLONG,
    LONG,
    ULONG,
    SHORT,
    USHORT,
    CHAR,
    UCHAR,
    LLONG,
    SIZET,
    IMAX,
    UMAX,
    PDIFF,
    UIPTR,
    DBL,
    LDBL,
    NOARG,
    MAXSTATE
};

static const unsigned char states[]['z' - 'A' + 1] = {
        {
                /* 0: bare types */
                S('d') = INT,   S('i') = INT,   S('o') = UINT, S('u') = UINT,    S('x') = UINT,
                S('X') = UINT,  S('e') = DBL,   S('f') = DBL,  S('g') = DBL,     S('a') = DBL,
                S('E') = DBL,   S('F') = DBL,   S('G') = DBL,  S('A') = DBL,     S('c') = CHAR,
                S('C') = INT,   S('s') = PTR,   S('S') = PTR,  S('p') = UIPTR,   S('n') = PTR,
                S('m') = NOARG, S('l') = LPRE,  S('h') = HPRE, S('L') = BIGLPRE, S('z') = ZTPRE,
                S('j') = JPRE,  S('t') = ZTPRE,
        },
        {
                /* 1: l-prefixed */
                S('d') = LONG,
                S('i') = LONG,
                S('o') = ULONG,
                S('u') = ULONG,
                S('x') = ULONG,
                S('X') = ULONG,
                S('e') = DBL,
                S('f') = DBL,
                S('g') = DBL,
                S('a') = DBL,
                S('E') = DBL,
                S('F') = DBL,
                S('G') = DBL,
                S('A') = DBL,
                S('c') = INT,
                S('s') = PTR,
                S('n') = PTR,
                S('l') = LLPRE,
        },
        {
                /* 2: ll-prefixed */
                S('d') = LLONG,
                S('i') = LLONG,
                S('o') = ULLONG,
                S('u') = ULLONG,
                S('x') = ULLONG,
                S('X') = ULLONG,
                S('n') = PTR,
        },
        {
                /* 3: h-prefixed */
                S('d') = SHORT,
                S('i') = SHORT,
                S('o') = USHORT,
                S('u') = USHORT,
                S('x') = USHORT,
                S('X') = USHORT,
                S('n') = PTR,
                S('h') = HHPRE,
        },
        {
                /* 4: hh-prefixed */
                S('d') = CHAR,
                S('i') = CHAR,
                S('o') = UCHAR,
                S('u') = UCHAR,
                S('x') = UCHAR,
                S('X') = UCHAR,
                S('n') = PTR,
        },
        {
                /* 5: L-prefixed */
                S('e') = LDBL,
                S('f') = LDBL,
                S('g') = LDBL,
                S('a') = LDBL,
                S('E') = LDBL,
                S('F') = LDBL,
                S('G') = LDBL,
                S('A') = LDBL,
                S('n') = PTR,
        },
        {
                /* 6: z- or t-prefixed (assumed to be same size) */
                S('d') = PDIFF,
                S('i') = PDIFF,
                S('o') = SIZET,
                S('u') = SIZET,
                S('x') = SIZET,
                S('X') = SIZET,
                S('n') = PTR,
        },
        {
                /* 7: j-prefixed */
                S('d') = IMAX,
                S('i') = IMAX,
                S('o') = UMAX,
                S('u') = UMAX,
                S('x') = UMAX,
                S('X') = UMAX,
                S('n') = PTR,
        }};

union arg {
    uintmax_t i;
    long double f;
    void* p;
};

static void out(int f, const char* s, size_t l)
{
    write(f, s, l);
}

static void pop_arg(union arg* arg, int type, va_list* ap)
{
    switch (type) {
        case PTR:
            arg->p = va_arg(*ap, void*);
            break;
        case INT:
            arg->i = va_arg(*ap, int);
            break;
        case UINT:
            arg->i = va_arg(*ap, unsigned int);
            break;
        case LONG:
            arg->i = va_arg(*ap, long);
            break;
        case ULONG:
            arg->i = va_arg(*ap, unsigned long);
            break;
        case ULLONG:
            arg->i = va_arg(*ap, unsigned long long);
            break;
        case SHORT:
            arg->i = (short)va_arg(*ap, int);
            break;
        case USHORT:
            arg->i = (unsigned short)va_arg(*ap, int);
            break;
        case CHAR:
            arg->i = (signed char)va_arg(*ap, int);
            break;
        case UCHAR:
            arg->i = (unsigned char)va_arg(*ap, int);
            break;
        case LLONG:
            arg->i = va_arg(*ap, long long);
            break;
        case SIZET:
            arg->i = va_arg(*ap, size_t);
            break;
        case IMAX:
            arg->i = va_arg(*ap, intmax_t);
            break;
        case UMAX:
            arg->i = va_arg(*ap, uintmax_t);
            break;
        case PDIFF:
            arg->i = va_arg(*ap, ptrdiff_t);
            break;
        case UIPTR:
            arg->i = (uintptr_t)va_arg(*ap, void*);
            break;
    }
}

static void pad(int f, char c, int w, int l, int fl)
{
    char pad[256];
    if (fl & (LEFT_ADJ | ZERO_PAD) || l >= w)
        return;
    l = w - l;
    memset(pad, c, l > sizeof pad ? sizeof pad : l);
    for (; l >= sizeof pad; l -= sizeof pad)
        out(f, pad, sizeof pad);
    out(f, pad, l);
}

static const char xdigits[16] = {"0123456789ABCDEF"};

static char* fmt_x(uintmax_t x, char* s, int lower)
{
    for (; x; x >>= 4)
        *--s = xdigits[(x & 15)] | lower;
    return s;
}

static char* fmt_o(uintmax_t x, char* s)
{
    for (; x; x >>= 3)
        *--s = '0' + (x & 7);
    return s;
}

static char* fmt_u(uintmax_t x, char* s)
{
    unsigned long y;
    for (; x > ULONG_MAX; x /= 10)
        *--s = '0' + x % 10;
    for (y = x; y; y /= 10)
        *--s = '0' + y % 10;
    return s;
}

static int getint(char** s)
{
    int i;
    for (i = 0; isdigit(**s); (*s)++) {
        if (i > INT_MAX / 10U || **s - '0' > INT_MAX - 10 * i)
            i = -1;
        else
            i = 10 * i + (**s - '0');
    }
    return i;
}

static int printf_core(int f, const char* fmt, va_list* ap, union arg* nl_arg, int* nl_type)
{
    char *a, *z, *s = (char*)fmt;
    unsigned l10n = 0, fl;
    int w, p, xp;
    union arg arg;
    int argpos;
    unsigned st, ps;
    int cnt = 0, l = 0;
    size_t i;
    char buf[sizeof(uintmax_t) * 3 + 3 + LDBL_MANT_DIG / 4];
    const char* prefix;
    int t, pl;

    for (;;) {
        /* Update output count, end loop when fmt is exhausted */
        cnt += l;
        if (!*s)
            break;
        /* Handle literal text and %% format specifiers */
        for (a = s; *s && *s != '%'; s++)
            ;
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
            ;
        if (z - a > INT_MAX - cnt)
            goto overflow;
        l = z - a;
        if (f)
            out(f, a, l);
        if (l)
            continue;

        if (isdigit(s[1]) && s[2] == '$') {
            l10n = 1;
            argpos = s[1] - '0';
            s += 3;
        } else {
            argpos = -1;
            s++;
        }

        /* Read modifier flags */
        for (fl = 0; ((unsigned)*s - ' ') < 32 && (FLAGMASK & (1U << (*s - ' '))); s++)
            fl |= 1U << (*s - ' ');

        /* Read field width */
        if (*s == '*') {
            if (isdigit(s[1]) && s[2] == '$') {
                l10n = 1;
                nl_type[s[1] - '0'] = INT;
                w = nl_arg[s[1] - '0'].i;
                s += 3;
            } else if (!l10n) {
                w = f ? va_arg(*ap, int) : 0;
                s++;
            } else
                goto inval;
            if (w < 0)
                fl |= LEFT_ADJ, w = -w;
        } else if ((w = getint(&s)) < 0)
            goto overflow;

        /* Read precision */
        if (*s == '.' && s[1] == '*') {
            if (isdigit(s[2]) && s[3] == '$') {
                nl_type[s[2] - '0'] = INT;
                p = nl_arg[s[2] - '0'].i;
                s += 4;
            } else if (!l10n) {
                p = f ? va_arg(*ap, int) : 0;
                s += 2;
            } else
                goto inval;
            xp = (p >= 0);
        } else if (*s == '.') {
            s++;
            p = getint(&s);
            xp = 1;
        } else {
            p = -1;
            xp = 0;
        }

        /* Format specifier state machine */
        st = 0;
        do {
            if (OOB(*s))
                goto inval;
            ps = st;
            st = states[st] S(*s++);
        } while (st - 1 < STOP);
        if (!st)
            goto inval;

        /* Check validity of argument type (nl/normal) */
        if (st == NOARG) {
            if (argpos >= 0)
                goto inval;
        } else {
            if (argpos >= 0) {
                nl_type[argpos] = st, arg = nl_arg[argpos];
            } else if (f)
                pop_arg(&arg, st, ap);
            else
                return 0;
        }

        if (!f)
            continue;

        z = buf + sizeof(buf);
        prefix = "-+   0X0x";
        pl = 0;
        t = s[-1];

        /* Transform ls,lc -> S,C */
        if (ps && (t & 15) == 3)
            t &= ~32;

        /* - and 0 flags are mutually exclusive */
        if (fl & LEFT_ADJ)
            fl &= ~ZERO_PAD;

        switch (t) {
            case 'n':
                switch (ps) {
                    case BARE:
                        *(int*)arg.p = cnt;
                        break;
                    case LPRE:
                        *(long*)arg.p = cnt;
                        break;
                    case LLPRE:
                        *(long long*)arg.p = cnt;
                        break;
                    case HPRE:
                        *(unsigned short*)arg.p = cnt;
                        break;
                    case HHPRE:
                        *(unsigned char*)arg.p = cnt;
                        break;
                    case ZTPRE:
                        *(size_t*)arg.p = cnt;
                        break;
                    case JPRE:
                        *(uintmax_t*)arg.p = cnt;
                        break;
                }
                continue;
            case 'p':
                p = MAX(p, 2 * sizeof(void*));
                t = 'x';
                fl |= ALT_FORM;
            case 'x':
            case 'X':
                a = fmt_x(arg.i, z, t & 32);
                if (arg.i && (fl & ALT_FORM))
                    prefix += (t >> 4), pl = 2;
                if (0) {
                    case 'o':
                        a = fmt_o(arg.i, z);
                    if ((fl & ALT_FORM) && p < z - a + 1)
                        p = z - a + 1;
                }
                if (0) {
                    case 'd':
                    case 'i':
                        pl = 1;
                    if (arg.i > INTMAX_MAX) {
                        arg.i = -arg.i;
                    } else if (fl & MARK_POS) {
                        prefix++;
                    } else if (fl & PAD_POS) {
                        prefix += 2;
                    } else
                        pl = 0;
                    case 'u':
                        a = fmt_u(arg.i, z);
                }
                if (xp && p < 0)
                    goto overflow;
                if (xp)
                    fl &= ~ZERO_PAD;
                if (!arg.i && !p) {
                    a = z;
                    break;
                }
                p = MAX(p, z - a + !arg.i);
                break;
            case 'c':
                *(a = z - (p = 1)) = arg.i;
                fl &= ~ZERO_PAD;
                break;
            case 's':
                a = arg.p ? arg.p : "(null)";
                z = a + strnlen(a, p < 0 ? INT_MAX : p);
                if (p < 0 && *z)
                    goto overflow;
                p = z - a;
                fl &= ~ZERO_PAD;
                break;
        }
        if (p < z - a)
            p = z - a;
        if (p > INT_MAX - pl)
            goto overflow;
        if (w < pl + p)
            w = pl + p;
        if (w > INT_MAX - cnt)
            goto overflow;

        pad(f, ' ', w, pl + p, fl);
        out(f, prefix, pl);
        pad(f, '0', w, pl + p, fl ^ ZERO_PAD);
        pad(f, '0', p, z - a, 0);
        out(f, a, z - a);
        pad(f, ' ', w, pl + p, fl ^ LEFT_ADJ);

        l = w;
    }

    if (f)
        return cnt;
    if (!l10n)
        return 0;

    for (i = 1; i <= NL_ARGMAX && nl_type[i]; i++)
        pop_arg(nl_arg + i, nl_type[i], ap);
    for (; i <= NL_ARGMAX && !nl_type[i]; i++)
        ;
    if (i <= NL_ARGMAX)
        goto inval;
    return 1;

    inval:
    return -1;
    overflow:
    return -1;
}

int vfprintf(int f, const char* restrict fmt, va_list ap)
{
    va_list ap2;
    int nl_type[NL_ARGMAX + 1] = {0};
    union arg nl_arg[NL_ARGMAX + 1];
    int ret;
    /* the copy allows passing va_list* even if va_list is an array */
    va_copy(ap2, ap);
    if (printf_core(0, fmt, &ap2, nl_arg, nl_type) < 0) {
        va_end(ap2);
        return -1;
    }
    ret = printf_core(f, fmt, &ap2, nl_arg, nl_type);
    va_end(ap2);
    return ret;
}

int printf(const char* restrict fmt, ...)
{
    int ret;
    va_list ap;
    va_start(ap, fmt);
    ret = vfprintf(stdout, fmt, ap);
    va_end(ap);
    return ret;
}