
build/riscv64/hello:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <main>:
#include <stdio.h>
#include <unistd.h>

int main() {
   100b0:	1141                	addi	sp,sp,-16
    puts("hello wrold!");
   100b2:	00001517          	auipc	a0,0x1
   100b6:	f5e50513          	addi	a0,a0,-162 # 11010 <exit+0xc>
int main() {
   100ba:	e406                	sd	ra,8(sp)
    puts("hello wrold!");
   100bc:	253000ef          	jal	ra,10b0e <puts>
    sched_yield();
   100c0:	739000ef          	jal	ra,10ff8 <sched_yield>
    puts("hello world!");
   100c4:	00001517          	auipc	a0,0x1
   100c8:	f5c50513          	addi	a0,a0,-164 # 11020 <exit+0x1c>
   100cc:	243000ef          	jal	ra,10b0e <puts>
    puts("hello world!");
   100d0:	00001517          	auipc	a0,0x1
   100d4:	f5050513          	addi	a0,a0,-176 # 11020 <exit+0x1c>
   100d8:	237000ef          	jal	ra,10b0e <puts>
    sched_yield();
   100dc:	71d000ef          	jal	ra,10ff8 <sched_yield>
    puts("hello world!");
   100e0:	00001517          	auipc	a0,0x1
   100e4:	f4050513          	addi	a0,a0,-192 # 11020 <exit+0x1c>
   100e8:	227000ef          	jal	ra,10b0e <puts>
    return 0;
   100ec:	60a2                	ld	ra,8(sp)
   100ee:	4501                	li	a0,0
   100f0:	0141                	addi	sp,sp,16
   100f2:	8082                	ret

00000000000100f4 <_start>:
.text
.globl _start
_start:
    mv a0, sp
   100f4:	850a                	mv	a0,sp
    tail __start_main
   100f6:	0040006f          	j	100fa <__start_main>

00000000000100fa <__start_main>:
#include <unistd.h>

extern int main();

int __start_main(long* p)
{
   100fa:	1141                	addi	sp,sp,-16
   100fc:	e406                	sd	ra,8(sp)
    exit(main());
   100fe:	fb3ff0ef          	jal	ra,100b0 <main>
   10102:	703000ef          	jal	ra,11004 <exit>
    return 0;
}
   10106:	60a2                	ld	ra,8(sp)
   10108:	4501                	li	a0,0
   1010a:	0141                	addi	sp,sp,16
   1010c:	8082                	ret

000000000001010e <pop_arg.isra.0>:
    write(f, s, l);
}

static void pop_arg(union arg* arg, int type, va_list* ap)
{
    switch (type) {
   1010e:	35dd                	addiw	a1,a1,-9
   10110:	0005871b          	sext.w	a4,a1
   10114:	47bd                	li	a5,15
   10116:	02e7e363          	bltu	a5,a4,1013c <pop_arg.isra.0+0x2e>
   1011a:	1582                	slli	a1,a1,0x20
   1011c:	9181                	srli	a1,a1,0x20
   1011e:	00001717          	auipc	a4,0x1
   10122:	f1270713          	addi	a4,a4,-238 # 11030 <exit+0x2c>
   10126:	058a                	slli	a1,a1,0x2
   10128:	95ba                	add	a1,a1,a4
   1012a:	419c                	lw	a5,0(a1)
   1012c:	97ba                	add	a5,a5,a4
   1012e:	8782                	jr	a5
            break;
        case PDIFF:
            arg->i = va_arg(*ap, ptrdiff_t);
            break;
        case UIPTR:
            arg->i = (uintptr_t)va_arg(*ap, void*);
   10130:	621c                	ld	a5,0(a2)
   10132:	00878713          	addi	a4,a5,8
   10136:	e218                	sd	a4,0(a2)
   10138:	639c                	ld	a5,0(a5)
   1013a:	e11c                	sd	a5,0(a0)
            break;
    }
}
   1013c:	8082                	ret
            arg->i = va_arg(*ap, ptrdiff_t);
   1013e:	621c                	ld	a5,0(a2)
   10140:	6398                	ld	a4,0(a5)
   10142:	07a1                	addi	a5,a5,8
   10144:	e21c                	sd	a5,0(a2)
   10146:	e118                	sd	a4,0(a0)
            break;
   10148:	8082                	ret
            arg->i = va_arg(*ap, int);
   1014a:	621c                	ld	a5,0(a2)
   1014c:	4398                	lw	a4,0(a5)
   1014e:	07a1                	addi	a5,a5,8
   10150:	e21c                	sd	a5,0(a2)
   10152:	e118                	sd	a4,0(a0)
            break;
   10154:	8082                	ret
            arg->i = va_arg(*ap, unsigned int);
   10156:	621c                	ld	a5,0(a2)
   10158:	0007e703          	lwu	a4,0(a5)
   1015c:	07a1                	addi	a5,a5,8
   1015e:	e21c                	sd	a5,0(a2)
   10160:	e118                	sd	a4,0(a0)
            break;
   10162:	8082                	ret
            arg->i = (unsigned char)va_arg(*ap, int);
   10164:	621c                	ld	a5,0(a2)
   10166:	0007c703          	lbu	a4,0(a5)
   1016a:	07a1                	addi	a5,a5,8
   1016c:	e21c                	sd	a5,0(a2)
   1016e:	e118                	sd	a4,0(a0)
            break;
   10170:	8082                	ret
            arg->i = (signed char)va_arg(*ap, int);
   10172:	621c                	ld	a5,0(a2)
   10174:	00078703          	lb	a4,0(a5)
   10178:	07a1                	addi	a5,a5,8
   1017a:	e21c                	sd	a5,0(a2)
   1017c:	e118                	sd	a4,0(a0)
            break;
   1017e:	8082                	ret
            arg->i = (unsigned short)va_arg(*ap, int);
   10180:	621c                	ld	a5,0(a2)
   10182:	0007d703          	lhu	a4,0(a5)
   10186:	07a1                	addi	a5,a5,8
   10188:	e21c                	sd	a5,0(a2)
   1018a:	e118                	sd	a4,0(a0)
            break;
   1018c:	8082                	ret
            arg->i = (short)va_arg(*ap, int);
   1018e:	621c                	ld	a5,0(a2)
   10190:	00079703          	lh	a4,0(a5)
   10194:	07a1                	addi	a5,a5,8
   10196:	e21c                	sd	a5,0(a2)
   10198:	e118                	sd	a4,0(a0)
            break;
   1019a:	8082                	ret

000000000001019c <printf_core>:
    }
    return i;
}

static int printf_core(int f, const char* fmt, va_list* ap, union arg* nl_arg, int* nl_type)
{
   1019c:	df010113          	addi	sp,sp,-528
   101a0:	fbca                	sd	s2,496(sp)
   101a2:	20113423          	sd	ra,520(sp)
   101a6:	20813023          	sd	s0,512(sp)
   101aa:	ffa6                	sd	s1,504(sp)
   101ac:	f7ce                	sd	s3,488(sp)
   101ae:	f3d2                	sd	s4,480(sp)
   101b0:	efd6                	sd	s5,472(sp)
   101b2:	ebda                	sd	s6,464(sp)
   101b4:	e7de                	sd	s7,456(sp)
   101b6:	e3e2                	sd	s8,448(sp)
   101b8:	ff66                	sd	s9,440(sp)
   101ba:	fb6a                	sd	s10,432(sp)
   101bc:	f76e                	sd	s11,424(sp)
   101be:	892e                	mv	s2,a1
    int t, pl;

    for (;;) {
        /* Update output count, end loop when fmt is exhausted */
        cnt += l;
        if (!*s)
   101c0:	0005c583          	lbu	a1,0(a1)
{
   101c4:	ec32                	sd	a2,24(sp)
   101c6:	f836                	sd	a3,48(sp)
   101c8:	f03a                	sd	a4,32(sp)
    unsigned l10n = 0, fl;
   101ca:	e802                	sd	zero,16(sp)
        if (!*s)
   101cc:	7e058963          	beqz	a1,109be <printf_core+0x822>
        if (i > INT_MAX / 10U || **s - '0' > INT_MAX - 10 * i)
   101d0:	0cccdc37          	lui	s8,0xcccd
        /* Handle literal text and %% format specifiers */
        for (a = s; *s && *s != '%'; s++)
            ;
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
            ;
        if (z - a > INT_MAX - cnt)
   101d4:	80000bb7          	lui	s7,0x80000
            argpos = -1;
            s++;
        }

        /* Read modifier flags */
        for (fl = 0; ((unsigned)*s - ' ') < 32 && (FLAGMASK & (1U << (*s - ' '))); s++)
   101d8:	6acd                	lui	s5,0x13
        if (i > INT_MAX / 10U || **s - '0' > INT_MAX - 10 * i)
   101da:	cccc0793          	addi	a5,s8,-820 # ccccccc <__global_pointer$+0xccba1bc>
   101de:	89aa                	mv	s3,a0
   101e0:	4a01                	li	s4,0
        if (z - a > INT_MAX - cnt)
   101e2:	fffbcb93          	not	s7,s7
        for (fl = 0; ((unsigned)*s - ' ') < 32 && (FLAGMASK & (1U << (*s - ' '))); s++)
   101e6:	889a8a9b          	addiw	s5,s5,-1911
        if (i > INT_MAX / 10U || **s - '0' > INT_MAX - 10 * i)
   101ea:	e03e                	sd	a5,0(sp)
        st = 0;
        do {
            if (OOB(*s))
                goto inval;
            ps = st;
            st = states[st] S(*s++);
   101ec:	00001b17          	auipc	s6,0x1
   101f0:	f2cb0b13          	addi	s6,s6,-212 # 11118 <states>
        for (a = s; *s && *s != '%'; s++)
   101f4:	87ca                	mv	a5,s2
   101f6:	02500713          	li	a4,37
   101fa:	12e58f63          	beq	a1,a4,10338 <printf_core+0x19c>
   101fe:	0017c583          	lbu	a1,1(a5)
   10202:	0785                	addi	a5,a5,1
   10204:	f9fd                	bnez	a1,101fa <printf_core+0x5e>
   10206:	412784b3          	sub	s1,a5,s2
   1020a:	8c3e                	mv	s8,a5
        if (z - a > INT_MAX - cnt)
   1020c:	414b8cbb          	subw	s9,s7,s4
   10210:	149cce63          	blt	s9,s1,1036c <printf_core+0x1d0>
        l = z - a;
   10214:	2481                	sext.w	s1,s1
        if (f)
   10216:	00099b63          	bnez	s3,1022c <printf_core+0x90>
        if (l)
   1021a:	cc99                	beqz	s1,10238 <printf_core+0x9c>
   1021c:	01448a3b          	addw	s4,s1,s4
        if (!*s)
   10220:	000c4583          	lbu	a1,0(s8)
   10224:	34058863          	beqz	a1,10574 <printf_core+0x3d8>
   10228:	8962                	mv	s2,s8
   1022a:	b7e9                	j	101f4 <printf_core+0x58>
    write(f, s, l);
   1022c:	8626                	mv	a2,s1
   1022e:	85ca                	mv	a1,s2
   10230:	854e                	mv	a0,s3
   10232:	5b1000ef          	jal	ra,10fe2 <write>
        if (l)
   10236:	f0fd                	bnez	s1,1021c <printf_core+0x80>
        if (isdigit(s[1]) && s[2] == '$') {
   10238:	001c4503          	lbu	a0,1(s8)
   1023c:	197000ef          	jal	ra,10bd2 <isdigit>
   10240:	14050d63          	beqz	a0,1039a <printf_core+0x1fe>
   10244:	002c4683          	lbu	a3,2(s8)
   10248:	02400793          	li	a5,36
   1024c:	001c4603          	lbu	a2,1(s8)
   10250:	22f68e63          	beq	a3,a5,1048c <printf_core+0x2f0>
            argpos = -1;
   10254:	57fd                	li	a5,-1
            s++;
   10256:	0c05                	addi	s8,s8,1
            argpos = -1;
   10258:	e43e                	sd	a5,8(sp)
        for (fl = 0; ((unsigned)*s - ' ') < 32 && (FLAGMASK & (1U << (*s - ' '))); s++)
   1025a:	fe06081b          	addiw	a6,a2,-32
   1025e:	46fd                	li	a3,31
   10260:	87c2                	mv	a5,a6
   10262:	4401                	li	s0,0
            fl |= 1U << (*s - ' ');
   10264:	4505                	li	a0,1
        for (fl = 0; ((unsigned)*s - ' ') < 32 && (FLAGMASK & (1U << (*s - ' '))); s++)
   10266:	45fd                	li	a1,31
   10268:	0106ff63          	bgeu	a3,a6,10286 <printf_core+0xea>
   1026c:	a00d                	j	1028e <printf_core+0xf2>
   1026e:	001c4603          	lbu	a2,1(s8)
            fl |= 1U << (*s - ' ');
   10272:	00f517bb          	sllw	a5,a0,a5
   10276:	8c5d                	or	s0,s0,a5
        for (fl = 0; ((unsigned)*s - ' ') < 32 && (FLAGMASK & (1U << (*s - ' '))); s++)
   10278:	fe06069b          	addiw	a3,a2,-32
   1027c:	87b6                	mv	a5,a3
   1027e:	0c05                	addi	s8,s8,1
            fl |= 1U << (*s - ' ');
   10280:	2401                	sext.w	s0,s0
        for (fl = 0; ((unsigned)*s - ' ') < 32 && (FLAGMASK & (1U << (*s - ' '))); s++)
   10282:	00d5e663          	bltu	a1,a3,1028e <printf_core+0xf2>
   10286:	00fad6bb          	srlw	a3,s5,a5
   1028a:	8a85                	andi	a3,a3,1
   1028c:	f2ed                	bnez	a3,1026e <printf_core+0xd2>
        if (*s == '*') {
   1028e:	02a00793          	li	a5,42
    for (i = 0; isdigit(**s); (*s)++) {
   10292:	4d81                	li	s11,0
        if (*s == '*') {
   10294:	22f60763          	beq	a2,a5,104c2 <printf_core+0x326>
    for (i = 0; isdigit(**s); (*s)++) {
   10298:	000c4503          	lbu	a0,0(s8)
   1029c:	137000ef          	jal	ra,10bd2 <isdigit>
   102a0:	c91d                	beqz	a0,102d6 <printf_core+0x13a>
        if (i > INT_MAX / 10U || **s - '0' > INT_MAX - 10 * i)
   102a2:	6782                	ld	a5,0(sp)
   102a4:	0fb7e863          	bltu	a5,s11,10394 <printf_core+0x1f8>
   102a8:	002d979b          	slliw	a5,s11,0x2
   102ac:	000c4683          	lbu	a3,0(s8)
   102b0:	01b7883b          	addw	a6,a5,s11
   102b4:	0018179b          	slliw	a5,a6,0x1
   102b8:	fd06861b          	addiw	a2,a3,-48
   102bc:	40fb85bb          	subw	a1,s7,a5
            i = -1;
   102c0:	5dfd                	li	s11,-1
        if (i > INT_MAX / 10U || **s - '0' > INT_MAX - 10 * i)
   102c2:	00c5c463          	blt	a1,a2,102ca <printf_core+0x12e>
            i = 10 * i + (**s - '0');
   102c6:	00f60dbb          	addw	s11,a2,a5
    for (i = 0; isdigit(**s); (*s)++) {
   102ca:	0c05                	addi	s8,s8,1
   102cc:	000c4503          	lbu	a0,0(s8)
   102d0:	103000ef          	jal	ra,10bd2 <isdigit>
   102d4:	f579                	bnez	a0,102a2 <printf_core+0x106>
        } else if ((w = getint(&s)) < 0)
   102d6:	080dcb63          	bltz	s11,1036c <printf_core+0x1d0>
        if (*s == '.' && s[1] == '*') {
   102da:	000c4683          	lbu	a3,0(s8)
   102de:	02e00793          	li	a5,46
   102e2:	0af69f63          	bne	a3,a5,103a0 <printf_core+0x204>
   102e6:	001c4683          	lbu	a3,1(s8)
   102ea:	02a00793          	li	a5,42
   102ee:	16f68363          	beq	a3,a5,10454 <printf_core+0x2b8>
    for (i = 0; isdigit(**s); (*s)++) {
   102f2:	001c4503          	lbu	a0,1(s8)
            s++;
   102f6:	0c05                	addi	s8,s8,1
    for (i = 0; isdigit(**s); (*s)++) {
   102f8:	4d01                	li	s10,0
   102fa:	0d9000ef          	jal	ra,10bd2 <isdigit>
   102fe:	c91d                	beqz	a0,10334 <printf_core+0x198>
        if (i > INT_MAX / 10U || **s - '0' > INT_MAX - 10 * i)
   10300:	6782                	ld	a5,0(sp)
   10302:	1ba7ed63          	bltu	a5,s10,104bc <printf_core+0x320>
   10306:	002d179b          	slliw	a5,s10,0x2
   1030a:	000c4683          	lbu	a3,0(s8)
   1030e:	01a78d3b          	addw	s10,a5,s10
   10312:	001d179b          	slliw	a5,s10,0x1
   10316:	fd06861b          	addiw	a2,a3,-48
   1031a:	40fb85bb          	subw	a1,s7,a5
            i = -1;
   1031e:	5d7d                	li	s10,-1
        if (i > INT_MAX / 10U || **s - '0' > INT_MAX - 10 * i)
   10320:	00c5c463          	blt	a1,a2,10328 <printf_core+0x18c>
            i = 10 * i + (**s - '0');
   10324:	00f60d3b          	addw	s10,a2,a5
    for (i = 0; isdigit(**s); (*s)++) {
   10328:	0c05                	addi	s8,s8,1
   1032a:	000c4503          	lbu	a0,0(s8)
   1032e:	0a5000ef          	jal	ra,10bd2 <isdigit>
   10332:	f579                	bnez	a0,10300 <printf_core+0x164>
            xp = 1;
   10334:	4885                	li	a7,1
   10336:	a0bd                	j	103a4 <printf_core+0x208>
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
   10338:	0007c603          	lbu	a2,0(a5)
   1033c:	8c3e                	mv	s8,a5
   1033e:	02500693          	li	a3,37
   10342:	412784b3          	sub	s1,a5,s2
   10346:	00b60963          	beq	a2,a1,10358 <printf_core+0x1bc>
   1034a:	b5c9                	j	1020c <printf_core+0x70>
   1034c:	002c4603          	lbu	a2,2(s8)
   10350:	0785                	addi	a5,a5,1
   10352:	0c09                	addi	s8,s8,2
   10354:	00d61663          	bne	a2,a3,10360 <printf_core+0x1c4>
   10358:	001c4603          	lbu	a2,1(s8)
   1035c:	fed608e3          	beq	a2,a3,1034c <printf_core+0x1b0>
   10360:	412784b3          	sub	s1,a5,s2
        if (z - a > INT_MAX - cnt)
   10364:	414b8cbb          	subw	s9,s7,s4
   10368:	ea9cd6e3          	bge	s9,s1,10214 <printf_core+0x78>
    return 1;

    inval:
    return -1;
    overflow:
    return -1;
   1036c:	5a7d                	li	s4,-1
}
   1036e:	20813083          	ld	ra,520(sp)
   10372:	20013403          	ld	s0,512(sp)
   10376:	74fe                	ld	s1,504(sp)
   10378:	795e                	ld	s2,496(sp)
   1037a:	79be                	ld	s3,488(sp)
   1037c:	6afe                	ld	s5,472(sp)
   1037e:	6b5e                	ld	s6,464(sp)
   10380:	6bbe                	ld	s7,456(sp)
   10382:	6c1e                	ld	s8,448(sp)
   10384:	7cfa                	ld	s9,440(sp)
   10386:	7d5a                	ld	s10,432(sp)
   10388:	7dba                	ld	s11,424(sp)
   1038a:	8552                	mv	a0,s4
   1038c:	7a1e                	ld	s4,480(sp)
   1038e:	21010113          	addi	sp,sp,528
   10392:	8082                	ret
            i = -1;
   10394:	5dfd                	li	s11,-1
    for (i = 0; isdigit(**s); (*s)++) {
   10396:	0c05                	addi	s8,s8,1
   10398:	bf15                	j	102cc <printf_core+0x130>
   1039a:	001c4603          	lbu	a2,1(s8)
   1039e:	bd5d                	j	10254 <printf_core+0xb8>
            xp = 0;
   103a0:	4881                	li	a7,0
            p = -1;
   103a2:	5d7d                	li	s10,-1
        st = 0;
   103a4:	4781                	li	a5,0
            if (OOB(*s))
   103a6:	03900513          	li	a0,57
            st = states[st] S(*s++);
   103aa:	03a00e13          	li	t3,58
        } while (st - 1 < STOP);
   103ae:	431d                	li	t1,7
   103b0:	a015                	j	103d4 <printf_core+0x238>
            st = states[st] S(*s++);
   103b2:	02079693          	slli	a3,a5,0x20
   103b6:	9281                	srli	a3,a3,0x20
   103b8:	03c686b3          	mul	a3,a3,t3
   103bc:	0c05                	addi	s8,s8,1
   103be:	96da                	add	a3,a3,s6
   103c0:	96b2                	add	a3,a3,a2
   103c2:	0006c683          	lbu	a3,0(a3)
        } while (st - 1 < STOP);
   103c6:	fff6861b          	addiw	a2,a3,-1
            st = states[st] S(*s++);
   103ca:	0006859b          	sext.w	a1,a3
        } while (st - 1 < STOP);
   103ce:	00c36a63          	bltu	t1,a2,103e2 <printf_core+0x246>
   103d2:	87ae                	mv	a5,a1
            if (OOB(*s))
   103d4:	000c4683          	lbu	a3,0(s8)
   103d8:	fbf6861b          	addiw	a2,a3,-65
   103dc:	fcc57be3          	bgeu	a0,a2,103b2 <printf_core+0x216>
   103e0:	b771                	j	1036c <printf_core+0x1d0>
        if (!st)
   103e2:	d5c9                	beqz	a1,1036c <printf_core+0x1d0>
        if (st == NOARG) {
   103e4:	466d                	li	a2,27
            if (argpos >= 0)
   103e6:	6722                	ld	a4,8(sp)
        if (st == NOARG) {
   103e8:	0ac58b63          	beq	a1,a2,1049e <printf_core+0x302>
            if (argpos >= 0) {
   103ec:	16074963          	bltz	a4,1055e <printf_core+0x3c2>
                nl_type[argpos] = st, arg = nl_arg[argpos];
   103f0:	75c2                	ld	a1,48(sp)
   103f2:	00471613          	slli	a2,a4,0x4
   103f6:	962e                	add	a2,a2,a1
   103f8:	6208                	ld	a0,0(a2)
   103fa:	660c                	ld	a1,8(a2)
   103fc:	00271613          	slli	a2,a4,0x2
   10400:	7702                	ld	a4,32(sp)
   10402:	f0aa                	sd	a0,96(sp)
   10404:	f4ae                	sd	a1,104(sp)
   10406:	963a                	add	a2,a2,a4
   10408:	c214                	sw	a3,0(a2)
        if (!f)
   1040a:	e0098be3          	beqz	s3,10220 <printf_core+0x84>
        t = s[-1];
   1040e:	fffc4683          	lbu	a3,-1(s8)
   10412:	0006861b          	sext.w	a2,a3
        if (ps && (t & 15) == 3)
   10416:	c789                	beqz	a5,10420 <printf_core+0x284>
   10418:	8abd                	andi	a3,a3,15
   1041a:	458d                	li	a1,3
   1041c:	12b68e63          	beq	a3,a1,10558 <printf_core+0x3bc>
        if (fl & LEFT_ADJ)
   10420:	03241713          	slli	a4,s0,0x32
   10424:	00075563          	bgez	a4,1042e <printf_core+0x292>
            fl &= ~ZERO_PAD;
   10428:	76c1                	lui	a3,0xffff0
   1042a:	16fd                	addi	a3,a3,-1
   1042c:	8c75                	and	s0,s0,a3
        switch (t) {
   1042e:	fa86069b          	addiw	a3,a2,-88
   10432:	0006851b          	sext.w	a0,a3
   10436:	02000593          	li	a1,32
   1043a:	18a5e963          	bltu	a1,a0,105cc <printf_core+0x430>
   1043e:	1682                	slli	a3,a3,0x20
   10440:	9281                	srli	a3,a3,0x20
   10442:	00001597          	auipc	a1,0x1
   10446:	c2e58593          	addi	a1,a1,-978 # 11070 <exit+0x6c>
   1044a:	068a                	slli	a3,a3,0x2
   1044c:	96ae                	add	a3,a3,a1
   1044e:	4294                	lw	a3,0(a3)
   10450:	96ae                	add	a3,a3,a1
   10452:	8682                	jr	a3
            if (isdigit(s[2]) && s[3] == '$') {
   10454:	002c4503          	lbu	a0,2(s8)
   10458:	77a000ef          	jal	ra,10bd2 <isdigit>
   1045c:	c519                	beqz	a0,1046a <printf_core+0x2ce>
   1045e:	003c4683          	lbu	a3,3(s8)
   10462:	02400793          	li	a5,36
   10466:	0cf68463          	beq	a3,a5,1052e <printf_core+0x392>
            } else if (!l10n) {
   1046a:	67c2                	ld	a5,16(sp)
   1046c:	f00790e3          	bnez	a5,1036c <printf_core+0x1d0>
                p = f ? va_arg(*ap, int) : 0;
   10470:	08098863          	beqz	s3,10500 <printf_core+0x364>
   10474:	6762                	ld	a4,24(sp)
                s += 2;
   10476:	0c09                	addi	s8,s8,2
                p = f ? va_arg(*ap, int) : 0;
   10478:	631c                	ld	a5,0(a4)
   1047a:	0007ad03          	lw	s10,0(a5)
   1047e:	07a1                	addi	a5,a5,8
   10480:	e31c                	sd	a5,0(a4)
   10482:	fffd4893          	not	a7,s10
   10486:	01f8d89b          	srliw	a7,a7,0x1f
            xp = (p >= 0);
   1048a:	bf29                	j	103a4 <printf_core+0x208>
            argpos = s[1] - '0';
   1048c:	fd06079b          	addiw	a5,a2,-48
   10490:	e43e                	sd	a5,8(sp)
            l10n = 1;
   10492:	4785                	li	a5,1
            s += 3;
   10494:	0c0d                	addi	s8,s8,3
            l10n = 1;
   10496:	e83e                	sd	a5,16(sp)
   10498:	000c4603          	lbu	a2,0(s8)
            s += 3;
   1049c:	bb7d                	j	1025a <printf_core+0xbe>
            if (argpos >= 0)
   1049e:	f60746e3          	bltz	a4,1040a <printf_core+0x26e>
   104a2:	b5e9                	j	1036c <printf_core+0x1d0>
                switch (ps) {
   104a4:	469d                	li	a3,7
   104a6:	d6f6ede3          	bltu	a3,a5,10220 <printf_core+0x84>
   104aa:	00001697          	auipc	a3,0x1
   104ae:	c4a68693          	addi	a3,a3,-950 # 110f4 <exit+0xf0>
   104b2:	078a                	slli	a5,a5,0x2
   104b4:	97b6                	add	a5,a5,a3
   104b6:	439c                	lw	a5,0(a5)
   104b8:	97b6                	add	a5,a5,a3
   104ba:	8782                	jr	a5
            i = -1;
   104bc:	5d7d                	li	s10,-1
    for (i = 0; isdigit(**s); (*s)++) {
   104be:	0c05                	addi	s8,s8,1
   104c0:	b5ad                	j	1032a <printf_core+0x18e>
            if (isdigit(s[1]) && s[2] == '$') {
   104c2:	001c4503          	lbu	a0,1(s8)
   104c6:	70c000ef          	jal	ra,10bd2 <isdigit>
   104ca:	c519                	beqz	a0,104d8 <printf_core+0x33c>
   104cc:	002c4683          	lbu	a3,2(s8)
   104d0:	02400793          	li	a5,36
   104d4:	02f68a63          	beq	a3,a5,10508 <printf_core+0x36c>
            } else if (!l10n) {
   104d8:	67c2                	ld	a5,16(sp)
   104da:	e80799e3          	bnez	a5,1036c <printf_core+0x1d0>
                w = f ? va_arg(*ap, int) : 0;
   104de:	0c05                	addi	s8,s8,1
   104e0:	4d81                	li	s11,0
   104e2:	de098ce3          	beqz	s3,102da <printf_core+0x13e>
   104e6:	6762                	ld	a4,24(sp)
   104e8:	631c                	ld	a5,0(a4)
   104ea:	0007ad83          	lw	s11,0(a5)
   104ee:	07a1                	addi	a5,a5,8
   104f0:	e31c                	sd	a5,0(a4)
            if (w < 0)
   104f2:	de0dd4e3          	bgez	s11,102da <printf_core+0x13e>
                fl |= LEFT_ADJ, w = -w;
   104f6:	6789                	lui	a5,0x2
   104f8:	8c5d                	or	s0,s0,a5
   104fa:	41b00dbb          	negw	s11,s11
   104fe:	bbf1                	j	102da <printf_core+0x13e>
                p = f ? va_arg(*ap, int) : 0;
   10500:	4d01                	li	s10,0
   10502:	4885                	li	a7,1
                s += 2;
   10504:	0c09                	addi	s8,s8,2
            xp = (p >= 0);
   10506:	bd79                	j	103a4 <printf_core+0x208>
                nl_type[s[1] - '0'] = INT;
   10508:	001c4783          	lbu	a5,1(s8)
   1050c:	7702                	ld	a4,32(sp)
   1050e:	46a9                	li	a3,10
   10510:	078a                	slli	a5,a5,0x2
   10512:	97ba                	add	a5,a5,a4
                s += 3;
   10514:	0c0d                	addi	s8,s8,3
                nl_type[s[1] - '0'] = INT;
   10516:	f4d7a023          	sw	a3,-192(a5) # 1f40 <main-0xe170>
                l10n = 1;
   1051a:	4705                	li	a4,1
                w = nl_arg[s[1] - '0'].i;
   1051c:	ffec4783          	lbu	a5,-2(s8)
                l10n = 1;
   10520:	e83a                	sd	a4,16(sp)
                w = nl_arg[s[1] - '0'].i;
   10522:	7742                	ld	a4,48(sp)
   10524:	0792                	slli	a5,a5,0x4
   10526:	97ba                	add	a5,a5,a4
   10528:	d007ad83          	lw	s11,-768(a5)
                s += 3;
   1052c:	b7d9                	j	104f2 <printf_core+0x356>
                nl_type[s[2] - '0'] = INT;
   1052e:	002c4783          	lbu	a5,2(s8)
   10532:	7702                	ld	a4,32(sp)
   10534:	46a9                	li	a3,10
   10536:	078a                	slli	a5,a5,0x2
   10538:	97ba                	add	a5,a5,a4
                s += 4;
   1053a:	0c11                	addi	s8,s8,4
                nl_type[s[2] - '0'] = INT;
   1053c:	f4d7a023          	sw	a3,-192(a5)
                p = nl_arg[s[2] - '0'].i;
   10540:	ffec4783          	lbu	a5,-2(s8)
   10544:	7742                	ld	a4,48(sp)
   10546:	0792                	slli	a5,a5,0x4
   10548:	97ba                	add	a5,a5,a4
   1054a:	d007ad03          	lw	s10,-768(a5)
                s += 4;
   1054e:	fffd4893          	not	a7,s10
   10552:	01f8d89b          	srliw	a7,a7,0x1f
   10556:	b5b9                	j	103a4 <printf_core+0x208>
            t &= ~32;
   10558:	0df67613          	andi	a2,a2,223
   1055c:	b5d1                	j	10420 <printf_core+0x284>
   1055e:	f43e                	sd	a5,40(sp)
   10560:	e446                	sd	a7,8(sp)
            } else if (f)
   10562:	44098e63          	beqz	s3,109be <printf_core+0x822>
                pop_arg(&arg, st, ap);
   10566:	6662                	ld	a2,24(sp)
   10568:	1088                	addi	a0,sp,96
   1056a:	ba5ff0ef          	jal	ra,1010e <pop_arg.isra.0>
        if (!f)
   1056e:	68a2                	ld	a7,8(sp)
   10570:	77a2                	ld	a5,40(sp)
   10572:	bd71                	j	1040e <printf_core+0x272>
    if (f)
   10574:	de099de3          	bnez	s3,1036e <printf_core+0x1d2>
    if (!l10n)
   10578:	67c2                	ld	a5,16(sp)
   1057a:	44078263          	beqz	a5,109be <printf_core+0x822>
   1057e:	7782                	ld	a5,32(sp)
    for (i = 1; i <= NL_ARGMAX && nl_type[i]; i++)
   10580:	4485                	li	s1,1
   10582:	49a9                	li	s3,10
   10584:	00478913          	addi	s2,a5,4
   10588:	77c2                	ld	a5,48(sp)
   1058a:	01078413          	addi	s0,a5,16
   1058e:	00092583          	lw	a1,0(s2)
   10592:	4c058663          	beqz	a1,10a5e <printf_core+0x8c2>
        pop_arg(nl_arg + i, nl_type[i], ap);
   10596:	6662                	ld	a2,24(sp)
   10598:	8522                	mv	a0,s0
    for (i = 1; i <= NL_ARGMAX && nl_type[i]; i++)
   1059a:	0485                	addi	s1,s1,1
        pop_arg(nl_arg + i, nl_type[i], ap);
   1059c:	b73ff0ef          	jal	ra,1010e <pop_arg.isra.0>
    for (i = 1; i <= NL_ARGMAX && nl_type[i]; i++)
   105a0:	0911                	addi	s2,s2,4
   105a2:	0441                	addi	s0,s0,16
   105a4:	ff3495e3          	bne	s1,s3,1058e <printf_core+0x3f2>
    return 1;
   105a8:	4a05                	li	s4,1
   105aa:	b3d1                	j	1036e <printf_core+0x1d2>
                        *(uintmax_t*)arg.p = cnt;
   105ac:	7786                	ld	a5,96(sp)
   105ae:	0147b023          	sd	s4,0(a5)
                        break;
   105b2:	b1bd                	j	10220 <printf_core+0x84>
                        *(unsigned char*)arg.p = cnt;
   105b4:	7786                	ld	a5,96(sp)
   105b6:	01478023          	sb	s4,0(a5)
                        break;
   105ba:	b19d                	j	10220 <printf_core+0x84>
                        *(unsigned short*)arg.p = cnt;
   105bc:	7786                	ld	a5,96(sp)
   105be:	01479023          	sh	s4,0(a5)
                        break;
   105c2:	b9b9                	j	10220 <printf_core+0x84>
                        *(int*)arg.p = cnt;
   105c4:	7786                	ld	a5,96(sp)
   105c6:	0147a023          	sw	s4,0(a5)
                        break;
   105ca:	b999                	j	10220 <printf_core+0x84>
   105cc:	09b10793          	addi	a5,sp,155
   105d0:	412787b3          	sub	a5,a5,s2
   105d4:	f43e                	sd	a5,40(sp)
        if (p < z - a)
   105d6:	3cfd5963          	bge	s10,a5,109a8 <printf_core+0x80c>
            p = z - a;
   105da:	5d22                	lw	s10,40(sp)
        if (p < z - a)
   105dc:	80000537          	lui	a0,0x80000
   105e0:	00001797          	auipc	a5,0x1
   105e4:	d1878793          	addi	a5,a5,-744 # 112f8 <xdigits+0x10>
   105e8:	fff54513          	not	a0,a0
   105ec:	e4be                	sd	a5,72(sp)
        if (p > INT_MAX - pl)
   105ee:	d7a54fe3          	blt	a0,s10,1036c <printf_core+0x1d0>
   105f2:	01a487bb          	addw	a5,s1,s10
   105f6:	e0be                	sd	a5,64(sp)
   105f8:	873e                	mv	a4,a5
        if (w < pl + p)
   105fa:	87ee                	mv	a5,s11
   105fc:	00edd363          	bge	s11,a4,10602 <printf_core+0x466>
   10600:	87ba                	mv	a5,a4
   10602:	0007871b          	sext.w	a4,a5
   10606:	e8ba                	sd	a4,80(sp)
        if (w > INT_MAX - cnt)
   10608:	d6ecc2e3          	blt	s9,a4,1036c <printf_core+0x1d0>
    if (fl & (LEFT_ADJ | ZERO_PAD) || l >= w)
   1060c:	6cc9                	lui	s9,0x12
   1060e:	019477b3          	and	a5,s0,s9
   10612:	32079363          	bnez	a5,10938 <printf_core+0x79c>
   10616:	87ba                	mv	a5,a4
   10618:	6706                	ld	a4,64(sp)
   1061a:	36f75663          	bge	a4,a5,10986 <printf_core+0x7ea>
    l = w - l;
   1061e:	40e7883b          	subw	a6,a5,a4
   10622:	10000613          	li	a2,256
   10626:	87c2                	mv	a5,a6
   10628:	86c2                	mv	a3,a6
    memset(pad, c, l > sizeof pad ? sizeof pad : l);
   1062a:	01065463          	bge	a2,a6,10632 <printf_core+0x496>
   1062e:	10000793          	li	a5,256
   10632:	0a010c93          	addi	s9,sp,160
   10636:	863e                	mv	a2,a5
   10638:	02000593          	li	a1,32
   1063c:	8566                	mv	a0,s9
   1063e:	fc42                	sd	a6,56(sp)
   10640:	e436                	sd	a3,8(sp)
   10642:	ecbe                	sd	a5,88(sp)
   10644:	640000ef          	jal	ra,10c84 <memset>
    for (; l >= sizeof pad; l -= sizeof pad)
   10648:	7862                	ld	a6,56(sp)
   1064a:	0ff00613          	li	a2,255
   1064e:	66a2                	ld	a3,8(sp)
   10650:	8dc2                	mv	s11,a6
   10652:	39065e63          	bge	a2,a6,109ee <printf_core+0x852>
   10656:	87c2                	mv	a5,a6
   10658:	f007879b          	addiw	a5,a5,-256
    write(f, s, l);
   1065c:	10000613          	li	a2,256
   10660:	85e6                	mv	a1,s9
   10662:	854e                	mv	a0,s3
    for (; l >= sizeof pad; l -= sizeof pad)
   10664:	e43e                	sd	a5,8(sp)
   10666:	fc3e                	sd	a5,56(sp)
    write(f, s, l);
   10668:	17b000ef          	jal	ra,10fe2 <write>
    for (; l >= sizeof pad; l -= sizeof pad)
   1066c:	67a2                	ld	a5,8(sp)
   1066e:	0ff00713          	li	a4,255
   10672:	fef763e3          	bltu	a4,a5,10658 <printf_core+0x4bc>
    write(f, s, l);
   10676:	863e                	mv	a2,a5
   10678:	85e6                	mv	a1,s9
   1067a:	854e                	mv	a0,s3
   1067c:	167000ef          	jal	ra,10fe2 <write>
   10680:	65a6                	ld	a1,72(sp)
   10682:	8626                	mv	a2,s1
   10684:	854e                	mv	a0,s3
   10686:	15d000ef          	jal	ra,10fe2 <write>
        pad(f, '0', w, pl + p, fl ^ ZERO_PAD);
   1068a:	66c1                	lui	a3,0x10
   1068c:	8ea1                	xor	a3,a3,s0
    if (fl & (LEFT_ADJ | ZERO_PAD) || l >= w)
   1068e:	6649                	lui	a2,0x12
   10690:	8ef1                	and	a3,a3,a2
   10692:	ea8d                	bnez	a3,106c4 <printf_core+0x528>
    memset(pad, c, l > sizeof pad ? sizeof pad : l);
   10694:	6666                	ld	a2,88(sp)
   10696:	03000593          	li	a1,48
   1069a:	8566                	mv	a0,s9
   1069c:	5e8000ef          	jal	ra,10c84 <memset>
    for (; l >= sizeof pad; l -= sizeof pad)
   106a0:	0ff00493          	li	s1,255
    write(f, s, l);
   106a4:	10000613          	li	a2,256
   106a8:	85e6                	mv	a1,s9
   106aa:	854e                	mv	a0,s3
    for (; l >= sizeof pad; l -= sizeof pad)
   106ac:	f00d8d9b          	addiw	s11,s11,-256
    write(f, s, l);
   106b0:	133000ef          	jal	ra,10fe2 <write>
    for (; l >= sizeof pad; l -= sizeof pad)
   106b4:	86ee                	mv	a3,s11
   106b6:	ffb4e7e3          	bltu	s1,s11,106a4 <printf_core+0x508>
    write(f, s, l);
   106ba:	8636                	mv	a2,a3
   106bc:	85e6                	mv	a1,s9
   106be:	854e                	mv	a0,s3
   106c0:	123000ef          	jal	ra,10fe2 <write>
        pad(f, '0', p, z - a, 0);
   106c4:	57a2                	lw	a5,40(sp)
    if (fl & (LEFT_ADJ | ZERO_PAD) || l >= w)
   106c6:	05a7d963          	bge	a5,s10,10718 <printf_core+0x57c>
    l = w - l;
   106ca:	40fd0d3b          	subw	s10,s10,a5
    memset(pad, c, l > sizeof pad ? sizeof pad : l);
   106ce:	10000693          	li	a3,256
    l = w - l;
   106d2:	866a                	mv	a2,s10
   106d4:	8dea                	mv	s11,s10
    memset(pad, c, l > sizeof pad ? sizeof pad : l);
   106d6:	01a6d463          	bge	a3,s10,106de <printf_core+0x542>
   106da:	10000613          	li	a2,256
   106de:	0a010c93          	addi	s9,sp,160
   106e2:	03000593          	li	a1,48
   106e6:	8566                	mv	a0,s9
   106e8:	59c000ef          	jal	ra,10c84 <memset>
    for (; l >= sizeof pad; l -= sizeof pad)
   106ec:	0ff00693          	li	a3,255
   106f0:	01a6df63          	bge	a3,s10,1070e <printf_core+0x572>
   106f4:	0ff00493          	li	s1,255
    write(f, s, l);
   106f8:	10000613          	li	a2,256
   106fc:	85e6                	mv	a1,s9
   106fe:	854e                	mv	a0,s3
    for (; l >= sizeof pad; l -= sizeof pad)
   10700:	f00d0d1b          	addiw	s10,s10,-256
    write(f, s, l);
   10704:	0df000ef          	jal	ra,10fe2 <write>
    for (; l >= sizeof pad; l -= sizeof pad)
   10708:	8dea                	mv	s11,s10
   1070a:	ffa4e7e3          	bltu	s1,s10,106f8 <printf_core+0x55c>
    write(f, s, l);
   1070e:	866e                	mv	a2,s11
   10710:	85e6                	mv	a1,s9
   10712:	854e                	mv	a0,s3
   10714:	0cf000ef          	jal	ra,10fe2 <write>
   10718:	7622                	ld	a2,40(sp)
   1071a:	85ca                	mv	a1,s2
   1071c:	854e                	mv	a0,s3
   1071e:	0c5000ef          	jal	ra,10fe2 <write>
    if (fl & (LEFT_ADJ | ZERO_PAD) || l >= w)
   10722:	6746                	ld	a4,80(sp)
        pad(f, ' ', w, pl + p, fl ^ LEFT_ADJ);
   10724:	6789                	lui	a5,0x2
   10726:	8fa1                	xor	a5,a5,s0
    if (fl & (LEFT_ADJ | ZERO_PAD) || l >= w)
   10728:	66c9                	lui	a3,0x12
   1072a:	8ff5                	and	a5,a5,a3
   1072c:	01470a3b          	addw	s4,a4,s4
   10730:	ae0798e3          	bnez	a5,10220 <printf_core+0x84>
   10734:	87ba                	mv	a5,a4
   10736:	6706                	ld	a4,64(sp)
   10738:	aef754e3          	bge	a4,a5,10220 <printf_core+0x84>
    l = w - l;
   1073c:	40e784bb          	subw	s1,a5,a4
    memset(pad, c, l > sizeof pad ? sizeof pad : l);
   10740:	10000793          	li	a5,256
    l = w - l;
   10744:	8626                	mv	a2,s1
   10746:	8926                	mv	s2,s1
    memset(pad, c, l > sizeof pad ? sizeof pad : l);
   10748:	0097d463          	bge	a5,s1,10750 <printf_core+0x5b4>
   1074c:	10000613          	li	a2,256
   10750:	0a010c93          	addi	s9,sp,160
   10754:	02000593          	li	a1,32
   10758:	8566                	mv	a0,s9
   1075a:	52a000ef          	jal	ra,10c84 <memset>
    for (; l >= sizeof pad; l -= sizeof pad)
   1075e:	0ff00793          	li	a5,255
   10762:	0097df63          	bge	a5,s1,10780 <printf_core+0x5e4>
   10766:	0ff00413          	li	s0,255
    write(f, s, l);
   1076a:	10000613          	li	a2,256
   1076e:	85e6                	mv	a1,s9
   10770:	854e                	mv	a0,s3
    for (; l >= sizeof pad; l -= sizeof pad)
   10772:	f004849b          	addiw	s1,s1,-256
    write(f, s, l);
   10776:	06d000ef          	jal	ra,10fe2 <write>
    for (; l >= sizeof pad; l -= sizeof pad)
   1077a:	8926                	mv	s2,s1
   1077c:	fe9467e3          	bltu	s0,s1,1076a <printf_core+0x5ce>
    write(f, s, l);
   10780:	864a                	mv	a2,s2
   10782:	85e6                	mv	a1,s9
   10784:	854e                	mv	a0,s3
   10786:	05d000ef          	jal	ra,10fe2 <write>
   1078a:	bc59                	j	10220 <printf_core+0x84>
   1078c:	02067513          	andi	a0,a2,32
   10790:	2501                	sext.w	a0,a0
                a = fmt_x(arg.i, z, t & 32);
   10792:	7786                	ld	a5,96(sp)
    for (; x; x >>= 4)
   10794:	1e078f63          	beqz	a5,10992 <printf_core+0x7f6>
   10798:	09b10593          	addi	a1,sp,155
   1079c:	0185151b          	slliw	a0,a0,0x18
   107a0:	4185551b          	sraiw	a0,a0,0x18
   107a4:	892e                	mv	s2,a1
        *--s = xdigits[(x & 15)] | lower;
   107a6:	00f7f693          	andi	a3,a5,15
   107aa:	96da                	add	a3,a3,s6
   107ac:	1d06c683          	lbu	a3,464(a3) # 121d0 <xdigits+0xee8>
   107b0:	197d                	addi	s2,s2,-1
    for (; x; x >>= 4)
   107b2:	8391                	srli	a5,a5,0x4
        *--s = xdigits[(x & 15)] | lower;
   107b4:	8ec9                	or	a3,a3,a0
   107b6:	00d90023          	sb	a3,0(s2)
    for (; x; x >>= 4)
   107ba:	f7f5                	bnez	a5,107a6 <printf_core+0x60a>
                if (arg.i && (fl & ALT_FORM))
   107bc:	00847793          	andi	a5,s0,8
   107c0:	20079a63          	bnez	a5,109d4 <printf_core+0x838>
   107c4:	80000537          	lui	a0,0x80000
        prefix = "-+   0X0x";
   107c8:	00001797          	auipc	a5,0x1
   107cc:	b3078793          	addi	a5,a5,-1232 # 112f8 <xdigits+0x10>
   107d0:	fff54513          	not	a0,a0
   107d4:	e4be                	sd	a5,72(sp)
                if (xp && p < 0)
   107d6:	0c089e63          	bnez	a7,108b2 <printf_core+0x716>
                if (!arg.i && !p) {
   107da:	7786                	ld	a5,96(sp)
                p = MAX(p, z - a + !arg.i);
   107dc:	41258733          	sub	a4,a1,s2
   107e0:	0017b793          	seqz	a5,a5
   107e4:	f43a                	sd	a4,40(sp)
   107e6:	97ba                	add	a5,a5,a4
   107e8:	01a7d363          	bge	a5,s10,107ee <printf_core+0x652>
   107ec:	87ea                	mv	a5,s10
   107ee:	00078d1b          	sext.w	s10,a5
        if (p < z - a)
   107f2:	77a2                	ld	a5,40(sp)
   107f4:	defd5de3          	bge	s10,a5,105ee <printf_core+0x452>
            p = z - a;
   107f8:	5d22                	lw	s10,40(sp)
   107fa:	bbd5                	j	105ee <printf_core+0x452>
                    if (arg.i > INTMAX_MAX) {
   107fc:	7786                	ld	a5,96(sp)
   107fe:	2207c363          	bltz	a5,10a24 <printf_core+0x888>
                    } else if (fl & MARK_POS) {
   10802:	03441713          	slli	a4,s0,0x34
   10806:	2c074a63          	bltz	a4,10ada <printf_core+0x93e>
                    } else if (fl & PAD_POS) {
   1080a:	00147693          	andi	a3,s0,1
   1080e:	80000537          	lui	a0,0x80000
   10812:	10068363          	beqz	a3,10918 <printf_core+0x77c>
                        prefix += 2;
   10816:	00001717          	auipc	a4,0x1
   1081a:	ae470713          	addi	a4,a4,-1308 # 112fa <xdigits+0x12>
   1081e:	ffe54513          	xori	a0,a0,-2
                        pl = 1;
   10822:	4485                	li	s1,1
                        prefix += 2;
   10824:	e4ba                	sd	a4,72(sp)
    for (y = x; y; y /= 10)
   10826:	16078b63          	beqz	a5,1099c <printf_core+0x800>
        prefix = "-+   0X0x";
   1082a:	09b10593          	addi	a1,sp,155
   1082e:	892e                	mv	s2,a1
        *--s = '0' + y % 10;
   10830:	4629                	li	a2,10
    for (y = x; y; y /= 10)
   10832:	4e25                	li	t3,9
        *--s = '0' + y % 10;
   10834:	02c7f6b3          	remu	a3,a5,a2
   10838:	197d                	addi	s2,s2,-1
   1083a:	833e                	mv	t1,a5
   1083c:	0306869b          	addiw	a3,a3,48
   10840:	00d90023          	sb	a3,0(s2)
    for (y = x; y; y /= 10)
   10844:	02c7d7b3          	divu	a5,a5,a2
   10848:	fe6e66e3          	bltu	t3,t1,10834 <printf_core+0x698>
   1084c:	b769                	j	107d6 <printf_core+0x63a>
                *(a = z - (p = 1)) = arg.i;
   1084e:	7786                	ld	a5,96(sp)
   10850:	4d05                	li	s10,1
   10852:	09a10913          	addi	s2,sp,154
   10856:	08f10d23          	sb	a5,154(sp)
                fl &= ~ZERO_PAD;
   1085a:	77c1                	lui	a5,0xffff0
   1085c:	17fd                	addi	a5,a5,-1
   1085e:	8c7d                	and	s0,s0,a5
                break;
   10860:	4785                	li	a5,1
   10862:	e0be                	sd	a5,64(sp)
   10864:	f43e                	sd	a5,40(sp)
        prefix = "-+   0X0x";
   10866:	00001797          	auipc	a5,0x1
   1086a:	a9278793          	addi	a5,a5,-1390 # 112f8 <xdigits+0x10>
   1086e:	6706                	ld	a4,64(sp)
   10870:	e4be                	sd	a5,72(sp)
                break;
   10872:	b361                	j	105fa <printf_core+0x45e>
                        a = fmt_o(arg.i, z);
   10874:	7786                	ld	a5,96(sp)
    for (; x; x >>= 3)
   10876:	09b10593          	addi	a1,sp,155
   1087a:	892e                	mv	s2,a1
                        a = fmt_o(arg.i, z);
   1087c:	86be                	mv	a3,a5
    for (; x; x >>= 3)
   1087e:	cb91                	beqz	a5,10892 <printf_core+0x6f6>
        *--s = '0' + (x & 7);
   10880:	0076f613          	andi	a2,a3,7
   10884:	197d                	addi	s2,s2,-1
   10886:	0306061b          	addiw	a2,a2,48
   1088a:	00c90023          	sb	a2,0(s2)
    for (; x; x >>= 3)
   1088e:	828d                	srli	a3,a3,0x3
   10890:	fae5                	bnez	a3,10880 <printf_core+0x6e4>
                    if ((fl & ALT_FORM) && p < z - a + 1)
   10892:	00847693          	andi	a3,s0,8
   10896:	c699                	beqz	a3,108a4 <printf_core+0x708>
   10898:	412586b3          	sub	a3,a1,s2
   1089c:	01a6c463          	blt	a3,s10,108a4 <printf_core+0x708>
                        p = z - a + 1;
   108a0:	00168d1b          	addiw	s10,a3,1
                if (xp && p < 0)
   108a4:	10088f63          	beqz	a7,109c2 <printf_core+0x826>
   108a8:	00001797          	auipc	a5,0x1
   108ac:	a5078793          	addi	a5,a5,-1456 # 112f8 <xdigits+0x10>
   108b0:	e4be                	sd	a5,72(sp)
   108b2:	aa0d4de3          	bltz	s10,1036c <printf_core+0x1d0>
                    fl &= ~ZERO_PAD;
   108b6:	7786                	ld	a5,96(sp)
   108b8:	76c1                	lui	a3,0xffff0
   108ba:	16fd                	addi	a3,a3,-1
   108bc:	8c75                	and	s0,s0,a3
                if (!arg.i && !p) {
   108be:	ebb5                	bnez	a5,10932 <printf_core+0x796>
   108c0:	060d1963          	bnez	s10,10932 <printf_core+0x796>
   108c4:	e0a6                	sd	s1,64(sp)
   108c6:	f402                	sd	zero,40(sp)
                    a = z;
   108c8:	892e                	mv	s2,a1
        if (p > INT_MAX - pl)
   108ca:	8726                	mv	a4,s1
   108cc:	b33d                	j	105fa <printf_core+0x45e>
                p = MAX(p, 2 * sizeof(void*));
   108ce:	46c1                	li	a3,16
   108d0:	87ea                	mv	a5,s10
   108d2:	00dd7363          	bgeu	s10,a3,108d8 <printf_core+0x73c>
   108d6:	47c1                	li	a5,16
   108d8:	00078d1b          	sext.w	s10,a5
                fl |= ALT_FORM;
   108dc:	00846413          	ori	s0,s0,8
   108e0:	02000513          	li	a0,32
                t = 'x';
   108e4:	07800613          	li	a2,120
   108e8:	b56d                	j	10792 <printf_core+0x5f6>
                a = arg.p ? arg.p : "(null)";
   108ea:	7906                	ld	s2,96(sp)
   108ec:	02090e63          	beqz	s2,10928 <printf_core+0x78c>
                z = a + strnlen(a, p < 0 ? INT_MAX : p);
   108f0:	140d4863          	bltz	s10,10a40 <printf_core+0x8a4>
   108f4:	85ea                	mv	a1,s10
   108f6:	854a                	mv	a0,s2
   108f8:	5a8000ef          	jal	ra,10ea0 <strnlen>
   108fc:	8d2a                	mv	s10,a0
   108fe:	00a90733          	add	a4,s2,a0
                fl &= ~ZERO_PAD;
   10902:	77c1                	lui	a5,0xffff0
   10904:	17fd                	addi	a5,a5,-1
   10906:	8c7d                	and	s0,s0,a5
   10908:	412707b3          	sub	a5,a4,s2
                p = z - a;
   1090c:	2d01                	sext.w	s10,s10
                break;
   1090e:	f43e                	sd	a5,40(sp)
   10910:	b1d9                	j	105d6 <printf_core+0x43a>
   10912:	7786                	ld	a5,96(sp)
                        prefix += 2;
   10914:	80000537          	lui	a0,0x80000
   10918:	00001717          	auipc	a4,0x1
   1091c:	9e070713          	addi	a4,a4,-1568 # 112f8 <xdigits+0x10>
   10920:	fff54513          	not	a0,a0
   10924:	e4ba                	sd	a4,72(sp)
   10926:	b701                	j	10826 <printf_core+0x68a>
                a = arg.p ? arg.p : "(null)";
   10928:	00001917          	auipc	s2,0x1
   1092c:	9e090913          	addi	s2,s2,-1568 # 11308 <xdigits+0x20>
   10930:	b7c1                	j	108f0 <printf_core+0x754>
   10932:	409b853b          	subw	a0,s7,s1
   10936:	b55d                	j	107dc <printf_core+0x640>
    write(f, s, l);
   10938:	65a6                	ld	a1,72(sp)
   1093a:	8626                	mv	a2,s1
   1093c:	854e                	mv	a0,s3
   1093e:	6a4000ef          	jal	ra,10fe2 <write>
        pad(f, '0', w, pl + p, fl ^ ZERO_PAD);
   10942:	67c1                	lui	a5,0x10
   10944:	8fa1                	xor	a5,a5,s0
    if (fl & (LEFT_ADJ | ZERO_PAD) || l >= w)
   10946:	0197fcb3          	and	s9,a5,s9
   1094a:	d60c9de3          	bnez	s9,106c4 <printf_core+0x528>
   1094e:	67c6                	ld	a5,80(sp)
   10950:	6706                	ld	a4,64(sp)
   10952:	d6f759e3          	bge	a4,a5,106c4 <printf_core+0x528>
   10956:	40e786bb          	subw	a3,a5,a4
    memset(pad, c, l > sizeof pad ? sizeof pad : l);
   1095a:	10000593          	li	a1,256
   1095e:	8636                	mv	a2,a3
   10960:	8db6                	mv	s11,a3
   10962:	00d5d463          	bge	a1,a3,1096a <printf_core+0x7ce>
   10966:	10000613          	li	a2,256
   1096a:	0a010c93          	addi	s9,sp,160
   1096e:	03000593          	li	a1,48
   10972:	8566                	mv	a0,s9
   10974:	e436                	sd	a3,8(sp)
   10976:	30e000ef          	jal	ra,10c84 <memset>
    for (; l >= sizeof pad; l -= sizeof pad)
   1097a:	66a2                	ld	a3,8(sp)
   1097c:	0ff00613          	li	a2,255
   10980:	d2d640e3          	blt	a2,a3,106a0 <printf_core+0x504>
   10984:	bb1d                	j	106ba <printf_core+0x51e>
    write(f, s, l);
   10986:	65a6                	ld	a1,72(sp)
   10988:	8626                	mv	a2,s1
   1098a:	854e                	mv	a0,s3
   1098c:	656000ef          	jal	ra,10fe2 <write>
    if (fl & (LEFT_ADJ | ZERO_PAD) || l >= w)
   10990:	bb15                	j	106c4 <printf_core+0x528>
        prefix = "-+   0X0x";
   10992:	00001797          	auipc	a5,0x1
   10996:	96678793          	addi	a5,a5,-1690 # 112f8 <xdigits+0x10>
   1099a:	e4be                	sd	a5,72(sp)
                if (xp && p < 0)
   1099c:	00088c63          	beqz	a7,109b4 <printf_core+0x818>
   109a0:	09b10593          	addi	a1,sp,155
   109a4:	892e                	mv	s2,a1
   109a6:	b731                	j	108b2 <printf_core+0x716>
        if (p < z - a)
   109a8:	00001797          	auipc	a5,0x1
   109ac:	95078793          	addi	a5,a5,-1712 # 112f8 <xdigits+0x10>
   109b0:	e4be                	sd	a5,72(sp)
   109b2:	b181                	j	105f2 <printf_core+0x456>
                if (!arg.i && !p) {
   109b4:	09b10593          	addi	a1,sp,155
   109b8:	4781                	li	a5,0
   109ba:	892e                	mv	s2,a1
   109bc:	b711                	j	108c0 <printf_core+0x724>
        cnt += l;
   109be:	4a01                	li	s4,0
   109c0:	b27d                	j	1036e <printf_core+0x1d2>
   109c2:	00001717          	auipc	a4,0x1
   109c6:	93670713          	addi	a4,a4,-1738 # 112f8 <xdigits+0x10>
   109ca:	e4ba                	sd	a4,72(sp)
                if (!arg.i && !p) {
   109cc:	4481                	li	s1,0
   109ce:	ee0789e3          	beqz	a5,108c0 <printf_core+0x724>
   109d2:	b785                	j	10932 <printf_core+0x796>
                    prefix += (t >> 4), pl = 2;
   109d4:	8211                	srli	a2,a2,0x4
   109d6:	00001797          	auipc	a5,0x1
   109da:	92278793          	addi	a5,a5,-1758 # 112f8 <xdigits+0x10>
   109de:	97b2                	add	a5,a5,a2
   109e0:	80000537          	lui	a0,0x80000
   109e4:	e4be                	sd	a5,72(sp)
   109e6:	ffd54513          	xori	a0,a0,-3
   109ea:	4489                	li	s1,2
   109ec:	b3ed                	j	107d6 <printf_core+0x63a>
    write(f, s, l);
   109ee:	8642                	mv	a2,a6
   109f0:	85e6                	mv	a1,s9
   109f2:	854e                	mv	a0,s3
   109f4:	e436                	sd	a3,8(sp)
   109f6:	5ec000ef          	jal	ra,10fe2 <write>
   109fa:	65a6                	ld	a1,72(sp)
   109fc:	8626                	mv	a2,s1
   109fe:	854e                	mv	a0,s3
   10a00:	5e2000ef          	jal	ra,10fe2 <write>
        pad(f, '0', w, pl + p, fl ^ ZERO_PAD);
   10a04:	67c1                	lui	a5,0x10
   10a06:	8fa1                	xor	a5,a5,s0
    if (fl & (LEFT_ADJ | ZERO_PAD) || l >= w)
   10a08:	6649                	lui	a2,0x12
   10a0a:	8ff1                	and	a5,a5,a2
   10a0c:	66a2                	ld	a3,8(sp)
   10a0e:	ca079be3          	bnez	a5,106c4 <printf_core+0x528>
    memset(pad, c, l > sizeof pad ? sizeof pad : l);
   10a12:	6666                	ld	a2,88(sp)
   10a14:	03000593          	li	a1,48
   10a18:	8566                	mv	a0,s9
   10a1a:	e436                	sd	a3,8(sp)
   10a1c:	268000ef          	jal	ra,10c84 <memset>
    for (; l >= sizeof pad; l -= sizeof pad)
   10a20:	66a2                	ld	a3,8(sp)
   10a22:	b961                	j	106ba <printf_core+0x51e>
                        arg.i = -arg.i;
   10a24:	40f007b3          	neg	a5,a5
   10a28:	80000537          	lui	a0,0x80000
        prefix = "-+   0X0x";
   10a2c:	00001717          	auipc	a4,0x1
   10a30:	8cc70713          	addi	a4,a4,-1844 # 112f8 <xdigits+0x10>
                        arg.i = -arg.i;
   10a34:	f0be                	sd	a5,96(sp)
   10a36:	ffe54513          	xori	a0,a0,-2
                        pl = 1;
   10a3a:	4485                	li	s1,1
        prefix = "-+   0X0x";
   10a3c:	e4ba                	sd	a4,72(sp)
   10a3e:	b3f5                	j	1082a <printf_core+0x68e>
                z = a + strnlen(a, p < 0 ? INT_MAX : p);
   10a40:	800005b7          	lui	a1,0x80000
   10a44:	fff5c593          	not	a1,a1
   10a48:	854a                	mv	a0,s2
   10a4a:	456000ef          	jal	ra,10ea0 <strnlen>
   10a4e:	00a90733          	add	a4,s2,a0
                if (p < 0 && *z)
   10a52:	00074783          	lbu	a5,0(a4)
                z = a + strnlen(a, p < 0 ? INT_MAX : p);
   10a56:	8d2a                	mv	s10,a0
                if (p < 0 && *z)
   10a58:	ea0785e3          	beqz	a5,10902 <printf_core+0x766>
   10a5c:	ba01                	j	1036c <printf_core+0x1d0>
    for (; i <= NL_ARGMAX && !nl_type[i]; i++)
   10a5e:	00148793          	addi	a5,s1,1
   10a62:	4729                	li	a4,10
   10a64:	b4e782e3          	beq	a5,a4,105a8 <printf_core+0x40c>
   10a68:	7602                	ld	a2,32(sp)
   10a6a:	078a                	slli	a5,a5,0x2
   10a6c:	97b2                	add	a5,a5,a2
   10a6e:	4394                	lw	a3,0(a5)
   10a70:	8e069ee3          	bnez	a3,1036c <printf_core+0x1d0>
   10a74:	00248693          	addi	a3,s1,2
   10a78:	b2e688e3          	beq	a3,a4,105a8 <printf_core+0x40c>
   10a7c:	43d4                	lw	a3,4(a5)
   10a7e:	8e0697e3          	bnez	a3,1036c <printf_core+0x1d0>
   10a82:	00348693          	addi	a3,s1,3
   10a86:	b2e681e3          	beq	a3,a4,105a8 <printf_core+0x40c>
   10a8a:	4794                	lw	a3,8(a5)
   10a8c:	8e0690e3          	bnez	a3,1036c <printf_core+0x1d0>
   10a90:	00448693          	addi	a3,s1,4
   10a94:	b0e68ae3          	beq	a3,a4,105a8 <printf_core+0x40c>
   10a98:	47d4                	lw	a3,12(a5)
   10a9a:	8c0699e3          	bnez	a3,1036c <printf_core+0x1d0>
   10a9e:	00548693          	addi	a3,s1,5
   10aa2:	b0e683e3          	beq	a3,a4,105a8 <printf_core+0x40c>
   10aa6:	4b98                	lw	a4,16(a5)
   10aa8:	8c0712e3          	bnez	a4,1036c <printf_core+0x1d0>
   10aac:	00648713          	addi	a4,s1,6
   10ab0:	46a9                	li	a3,10
   10ab2:	aed70be3          	beq	a4,a3,105a8 <printf_core+0x40c>
   10ab6:	4bd8                	lw	a4,20(a5)
   10ab8:	8a071ae3          	bnez	a4,1036c <printf_core+0x1d0>
   10abc:	00748713          	addi	a4,s1,7
   10ac0:	aed704e3          	beq	a4,a3,105a8 <printf_core+0x40c>
   10ac4:	4f9c                	lw	a5,24(a5)
   10ac6:	8a0793e3          	bnez	a5,1036c <printf_core+0x1d0>
   10aca:	4785                	li	a5,1
   10acc:	acf49ee3          	bne	s1,a5,105a8 <printf_core+0x40c>
   10ad0:	525c                	lw	a5,36(a2)
   10ad2:	88079de3          	bnez	a5,1036c <printf_core+0x1d0>
    return 1;
   10ad6:	4a05                	li	s4,1
   10ad8:	b859                	j	1036e <printf_core+0x1d2>
   10ada:	80000537          	lui	a0,0x80000
                        prefix++;
   10ade:	00001717          	auipc	a4,0x1
   10ae2:	81b70713          	addi	a4,a4,-2021 # 112f9 <xdigits+0x11>
   10ae6:	ffe54513          	xori	a0,a0,-2
                        pl = 1;
   10aea:	4485                	li	s1,1
                        prefix++;
   10aec:	e4ba                	sd	a4,72(sp)
   10aee:	bb25                	j	10826 <printf_core+0x68a>

0000000000010af0 <putchar>:
{
   10af0:	1101                	addi	sp,sp,-32
   10af2:	87aa                	mv	a5,a0
    return write(stdout, &byte, 1);
   10af4:	00f10593          	addi	a1,sp,15
   10af8:	4605                	li	a2,1
   10afa:	4501                	li	a0,0
{
   10afc:	ec06                	sd	ra,24(sp)
    char byte = c;
   10afe:	00f107a3          	sb	a5,15(sp)
    return write(stdout, &byte, 1);
   10b02:	4e0000ef          	jal	ra,10fe2 <write>
}
   10b06:	60e2                	ld	ra,24(sp)
   10b08:	2501                	sext.w	a0,a0
   10b0a:	6105                	addi	sp,sp,32
   10b0c:	8082                	ret

0000000000010b0e <puts>:
{
   10b0e:	1101                	addi	sp,sp,-32
   10b10:	e822                	sd	s0,16(sp)
   10b12:	ec06                	sd	ra,24(sp)
   10b14:	842a                	mv	s0,a0
    r = -(write(stdout, s, strlen(s)) < 0 || putchar('\n') < 0);
   10b16:	29e000ef          	jal	ra,10db4 <strlen>
   10b1a:	862a                	mv	a2,a0
   10b1c:	85a2                	mv	a1,s0
   10b1e:	4501                	li	a0,0
   10b20:	4c2000ef          	jal	ra,10fe2 <write>
   10b24:	00055763          	bgez	a0,10b32 <puts+0x24>
}
   10b28:	60e2                	ld	ra,24(sp)
   10b2a:	6442                	ld	s0,16(sp)
   10b2c:	557d                	li	a0,-1
   10b2e:	6105                	addi	sp,sp,32
   10b30:	8082                	ret
    return write(stdout, &byte, 1);
   10b32:	00f10593          	addi	a1,sp,15
    char byte = c;
   10b36:	47a9                	li	a5,10
    return write(stdout, &byte, 1);
   10b38:	4605                	li	a2,1
   10b3a:	4501                	li	a0,0
    char byte = c;
   10b3c:	00f107a3          	sb	a5,15(sp)
    return write(stdout, &byte, 1);
   10b40:	4a2000ef          	jal	ra,10fe2 <write>
}
   10b44:	60e2                	ld	ra,24(sp)
   10b46:	6442                	ld	s0,16(sp)
   10b48:	41f5551b          	sraiw	a0,a0,0x1f
   10b4c:	6105                	addi	sp,sp,32
   10b4e:	8082                	ret

0000000000010b50 <vfprintf>:

int vfprintf(int f, const char* restrict fmt, va_list ap)
{
   10b50:	7151                	addi	sp,sp,-240
   10b52:	f1a2                	sd	s0,224(sp)
   10b54:	8832                	mv	a6,a2
   10b56:	842a                	mv	s0,a0
    int nl_type[NL_ARGMAX + 1] = {0};
    union arg nl_arg[NL_ARGMAX + 1];
    int ret;
    /* the copy allows passing va_list* even if va_list is an array */
    va_copy(ap2, ap);
    if (printf_core(0, fmt, &ap2, nl_arg, nl_type) < 0) {
   10b58:	0038                	addi	a4,sp,8
   10b5a:	1814                	addi	a3,sp,48
   10b5c:	860a                	mv	a2,sp
   10b5e:	4501                	li	a0,0
{
   10b60:	eda6                	sd	s1,216(sp)
   10b62:	f586                	sd	ra,232(sp)
   10b64:	84ae                	mv	s1,a1
    int nl_type[NL_ARGMAX + 1] = {0};
   10b66:	e402                	sd	zero,8(sp)
   10b68:	e802                	sd	zero,16(sp)
   10b6a:	ec02                	sd	zero,24(sp)
   10b6c:	f002                	sd	zero,32(sp)
   10b6e:	f402                	sd	zero,40(sp)
    va_copy(ap2, ap);
   10b70:	e042                	sd	a6,0(sp)
    if (printf_core(0, fmt, &ap2, nl_arg, nl_type) < 0) {
   10b72:	e2aff0ef          	jal	ra,1019c <printf_core>
   10b76:	00054e63          	bltz	a0,10b92 <vfprintf+0x42>
        va_end(ap2);
        return -1;
    }
    ret = printf_core(f, fmt, &ap2, nl_arg, nl_type);
   10b7a:	0038                	addi	a4,sp,8
   10b7c:	1814                	addi	a3,sp,48
   10b7e:	860a                	mv	a2,sp
   10b80:	85a6                	mv	a1,s1
   10b82:	8522                	mv	a0,s0
   10b84:	e18ff0ef          	jal	ra,1019c <printf_core>
    va_end(ap2);
    return ret;
}
   10b88:	70ae                	ld	ra,232(sp)
   10b8a:	740e                	ld	s0,224(sp)
   10b8c:	64ee                	ld	s1,216(sp)
   10b8e:	616d                	addi	sp,sp,240
   10b90:	8082                	ret
        return -1;
   10b92:	557d                	li	a0,-1
   10b94:	bfd5                	j	10b88 <vfprintf+0x38>

0000000000010b96 <printf>:

int printf(const char* restrict fmt, ...)
{
   10b96:	711d                	addi	sp,sp,-96
    int ret;
    va_list ap;
    va_start(ap, fmt);
   10b98:	02810313          	addi	t1,sp,40
{
   10b9c:	f42e                	sd	a1,40(sp)
   10b9e:	f832                	sd	a2,48(sp)
    ret = vfprintf(stdout, fmt, ap);
   10ba0:	85aa                	mv	a1,a0
   10ba2:	861a                	mv	a2,t1
   10ba4:	4501                	li	a0,0
{
   10ba6:	ec06                	sd	ra,24(sp)
   10ba8:	fc36                	sd	a3,56(sp)
   10baa:	e0ba                	sd	a4,64(sp)
   10bac:	e4be                	sd	a5,72(sp)
   10bae:	e8c2                	sd	a6,80(sp)
   10bb0:	ecc6                	sd	a7,88(sp)
    va_start(ap, fmt);
   10bb2:	e41a                	sd	t1,8(sp)
    ret = vfprintf(stdout, fmt, ap);
   10bb4:	f9dff0ef          	jal	ra,10b50 <vfprintf>
    va_end(ap);
    return ret;
   10bb8:	60e2                	ld	ra,24(sp)
   10bba:	6125                	addi	sp,sp,96
   10bbc:	8082                	ret

0000000000010bbe <isspace>:
#define HIGHS      (ONES * (UCHAR_MAX / 2 + 1))
#define HASZERO(x) (((x)-ONES) & ~(x) & HIGHS)

int isspace(int c)
{
    return c == ' ' || (unsigned)c - '\t' < 5;
   10bbe:	02000793          	li	a5,32
   10bc2:	00f50663          	beq	a0,a5,10bce <isspace+0x10>
   10bc6:	355d                	addiw	a0,a0,-9
   10bc8:	00553513          	sltiu	a0,a0,5
   10bcc:	8082                	ret
   10bce:	4505                	li	a0,1
}
   10bd0:	8082                	ret

0000000000010bd2 <isdigit>:

int isdigit(int c)
{
    return (unsigned)c - '0' < 10;
   10bd2:	fd05051b          	addiw	a0,a0,-48
}
   10bd6:	00a53513          	sltiu	a0,a0,10
   10bda:	8082                	ret

0000000000010bdc <atoi>:
    return c == ' ' || (unsigned)c - '\t' < 5;
   10bdc:	02000613          	li	a2,32
   10be0:	4591                	li	a1,4

int atoi(const char* s)
{
    int n = 0, neg = 0;
    while (isspace(*s))
   10be2:	00054703          	lbu	a4,0(a0) # ffffffff80000000 <__global_pointer$+0xffffffff7ffed4f0>
    return c == ' ' || (unsigned)c - '\t' < 5;
   10be6:	ff77069b          	addiw	a3,a4,-9
   10bea:	04c70d63          	beq	a4,a2,10c44 <atoi+0x68>
   10bee:	0007079b          	sext.w	a5,a4
   10bf2:	04d5f963          	bgeu	a1,a3,10c44 <atoi+0x68>
        s++;
    switch (*s) {
   10bf6:	02b00693          	li	a3,43
   10bfa:	04d70a63          	beq	a4,a3,10c4e <atoi+0x72>
   10bfe:	02d00693          	li	a3,45
   10c02:	06d70463          	beq	a4,a3,10c6a <atoi+0x8e>
        neg = 1;
    case '+':
        s++;
    }
    /* Compute n as a negative number to avoid overflow on INT_MIN */
    while (isdigit(*s))
   10c06:	fd07859b          	addiw	a1,a5,-48
   10c0a:	4625                	li	a2,9
   10c0c:	873e                	mv	a4,a5
   10c0e:	86aa                	mv	a3,a0
    int n = 0, neg = 0;
   10c10:	4e01                	li	t3,0
    while (isdigit(*s))
   10c12:	04b66a63          	bltu	a2,a1,10c66 <atoi+0x8a>
    int n = 0, neg = 0;
   10c16:	4501                	li	a0,0
    while (isdigit(*s))
   10c18:	4825                	li	a6,9
   10c1a:	0016c603          	lbu	a2,1(a3) # ffffffffffff0001 <__global_pointer$+0xfffffffffffdd4f1>
        n = 10 * n - (*s++ - '0');
   10c1e:	0025179b          	slliw	a5,a0,0x2
   10c22:	9d3d                	addw	a0,a0,a5
   10c24:	fd07031b          	addiw	t1,a4,-48
   10c28:	0015189b          	slliw	a7,a0,0x1
    while (isdigit(*s))
   10c2c:	fd06059b          	addiw	a1,a2,-48
        n = 10 * n - (*s++ - '0');
   10c30:	0685                	addi	a3,a3,1
   10c32:	4068853b          	subw	a0,a7,t1
    while (isdigit(*s))
   10c36:	0006071b          	sext.w	a4,a2
   10c3a:	feb870e3          	bgeu	a6,a1,10c1a <atoi+0x3e>
    return neg ? n : -n;
   10c3e:	000e0563          	beqz	t3,10c48 <atoi+0x6c>
}
   10c42:	8082                	ret
        s++;
   10c44:	0505                	addi	a0,a0,1
   10c46:	bf71                	j	10be2 <atoi+0x6>
   10c48:	4113053b          	subw	a0,t1,a7
   10c4c:	8082                	ret
    while (isdigit(*s))
   10c4e:	00154783          	lbu	a5,1(a0)
   10c52:	4625                	li	a2,9
        s++;
   10c54:	00150693          	addi	a3,a0,1
    while (isdigit(*s))
   10c58:	fd07859b          	addiw	a1,a5,-48
   10c5c:	0007871b          	sext.w	a4,a5
    int n = 0, neg = 0;
   10c60:	4e01                	li	t3,0
    while (isdigit(*s))
   10c62:	fab67ae3          	bgeu	a2,a1,10c16 <atoi+0x3a>
   10c66:	4501                	li	a0,0
}
   10c68:	8082                	ret
    while (isdigit(*s))
   10c6a:	00154783          	lbu	a5,1(a0)
   10c6e:	4625                	li	a2,9
        s++;
   10c70:	00150693          	addi	a3,a0,1
    while (isdigit(*s))
   10c74:	fd07859b          	addiw	a1,a5,-48
   10c78:	0007871b          	sext.w	a4,a5
   10c7c:	feb665e3          	bltu	a2,a1,10c66 <atoi+0x8a>
        neg = 1;
   10c80:	4e05                	li	t3,1
   10c82:	bf51                	j	10c16 <atoi+0x3a>

0000000000010c84 <memset>:

    /* Fill head and tail with minimal branching. Each
     * conditional ensures that all the subsequently used
     * offsets are well-defined and in the dest region. */

    if (!n)
   10c84:	c679                	beqz	a2,10d52 <memset+0xce>
        return dest;
    s[0] = c;
   10c86:	0ff5f793          	andi	a5,a1,255
   10c8a:	00f50023          	sb	a5,0(a0)
    s[n - 1] = c;
   10c8e:	00c50733          	add	a4,a0,a2
   10c92:	fef70fa3          	sb	a5,-1(a4)
    if (n <= 2)
   10c96:	4689                	li	a3,2
   10c98:	0ac6fd63          	bgeu	a3,a2,10d52 <memset+0xce>
        return dest;
    s[1] = c;
   10c9c:	00f500a3          	sb	a5,1(a0)
    s[2] = c;
   10ca0:	00f50123          	sb	a5,2(a0)
    s[n - 2] = c;
   10ca4:	fef70f23          	sb	a5,-2(a4)
    s[n - 3] = c;
   10ca8:	fef70ea3          	sb	a5,-3(a4)
    if (n <= 6)
   10cac:	4699                	li	a3,6
   10cae:	0ac6f263          	bgeu	a3,a2,10d52 <memset+0xce>
        return dest;
    s[3] = c;
   10cb2:	00f501a3          	sb	a5,3(a0)
    s[n - 4] = c;
   10cb6:	fef70e23          	sb	a5,-4(a4)
    if (n <= 8)
   10cba:	46a1                	li	a3,8
   10cbc:	08c6fb63          	bgeu	a3,a2,10d52 <memset+0xce>

    /* Pure C fallback with no aliasing violations. */
    typedef uint32_t __attribute__((__may_alias__)) u32;
    typedef uint64_t __attribute__((__may_alias__)) u64;

    u32 c32 = ((u32)-1) / 255 * (unsigned char)c;
   10cc0:	0ff5f593          	andi	a1,a1,255
   10cc4:	0085979b          	slliw	a5,a1,0x8
    k = -(uintptr_t)s & 3;
   10cc8:	40a00733          	neg	a4,a0
   10ccc:	8b0d                	andi	a4,a4,3
    u32 c32 = ((u32)-1) / 255 * (unsigned char)c;
   10cce:	9dbd                	addw	a1,a1,a5
    n -= k;
   10cd0:	8e19                	sub	a2,a2,a4
    u32 c32 = ((u32)-1) / 255 * (unsigned char)c;
   10cd2:	0105979b          	slliw	a5,a1,0x10
   10cd6:	9dbd                	addw	a1,a1,a5
    s += k;
   10cd8:	972a                	add	a4,a4,a0
    n &= -4;
   10cda:	9a71                	andi	a2,a2,-4
     * an 8-byte bounary, fill head/tail up to 28 bytes each.
     * As in the initial byte-based head/tail fill, each
     * conditional below ensures that the subsequent offsets
     * are valid (e.g. !(n<=24) implies n>=28). */

    *(u32*)(s + 0) = c32;
   10cdc:	c30c                	sw	a1,0(a4)
    *(u32*)(s + n - 4) = c32;
   10cde:	00c707b3          	add	a5,a4,a2
   10ce2:	feb7ae23          	sw	a1,-4(a5) # fffc <main-0xb4>
    if (n <= 8)
   10ce6:	06c6f663          	bgeu	a3,a2,10d52 <memset+0xce>
        return dest;
    *(u32*)(s + 4) = c32;
   10cea:	c34c                	sw	a1,4(a4)
    *(u32*)(s + 8) = c32;
   10cec:	c70c                	sw	a1,8(a4)
    *(u32*)(s + n - 12) = c32;
   10cee:	feb7aa23          	sw	a1,-12(a5)
    *(u32*)(s + n - 8) = c32;
   10cf2:	feb7ac23          	sw	a1,-8(a5)
    if (n <= 24)
   10cf6:	46e1                	li	a3,24
   10cf8:	04c6fd63          	bgeu	a3,a2,10d52 <memset+0xce>

    /* Align to a multiple of 8 so we can fill 64 bits at a time,
     * and avoid writing the same bytes twice as much as is
     * practical without introducing additional branching. */

    k = 24 + ((uintptr_t)s & 4);
   10cfc:	00477813          	andi	a6,a4,4
    *(u32*)(s + 12) = c32;
   10d00:	c74c                	sw	a1,12(a4)
    *(u32*)(s + 16) = c32;
   10d02:	cb0c                	sw	a1,16(a4)
    *(u32*)(s + 20) = c32;
   10d04:	cb4c                	sw	a1,20(a4)
    *(u32*)(s + 24) = c32;
   10d06:	cf0c                	sw	a1,24(a4)
    k = 24 + ((uintptr_t)s & 4);
   10d08:	0861                	addi	a6,a6,24

    /* If this loop is reached, 28 tail bytes have already been
     * filled, so any remainder when n drops below 32 can be
     * safely ignored. */

    u64 c64 = c32 | ((u64)c32 << 32);
   10d0a:	02059893          	slli	a7,a1,0x20
   10d0e:	0208d893          	srli	a7,a7,0x20
   10d12:	02059693          	slli	a3,a1,0x20
    *(u32*)(s + n - 28) = c32;
   10d16:	feb7a223          	sw	a1,-28(a5)
    *(u32*)(s + n - 24) = c32;
   10d1a:	feb7a423          	sw	a1,-24(a5)
    *(u32*)(s + n - 20) = c32;
   10d1e:	feb7a623          	sw	a1,-20(a5)
    *(u32*)(s + n - 16) = c32;
   10d22:	feb7a823          	sw	a1,-16(a5)
    n -= k;
   10d26:	41060633          	sub	a2,a2,a6
    for (; n >= 32; n -= 32, s += 32) {
   10d2a:	47fd                	li	a5,31
    s += k;
   10d2c:	9742                	add	a4,a4,a6
    u64 c64 = c32 | ((u64)c32 << 32);
   10d2e:	0116e6b3          	or	a3,a3,a7
    for (; n >= 32; n -= 32, s += 32) {
   10d32:	02c7f063          	bgeu	a5,a2,10d52 <memset+0xce>
   10d36:	1601                	addi	a2,a2,-32
   10d38:	fe067793          	andi	a5,a2,-32
   10d3c:	02078793          	addi	a5,a5,32
   10d40:	97ba                	add	a5,a5,a4
        *(u64*)(s + 0) = c64;
   10d42:	e314                	sd	a3,0(a4)
        *(u64*)(s + 8) = c64;
   10d44:	e714                	sd	a3,8(a4)
        *(u64*)(s + 16) = c64;
   10d46:	eb14                	sd	a3,16(a4)
        *(u64*)(s + 24) = c64;
   10d48:	ef14                	sd	a3,24(a4)
    for (; n >= 32; n -= 32, s += 32) {
   10d4a:	02070713          	addi	a4,a4,32
   10d4e:	fef71ae3          	bne	a4,a5,10d42 <memset+0xbe>
    }

    return dest;
}
   10d52:	8082                	ret

0000000000010d54 <strcmp>:

int strcmp(const char* l, const char* r)
{
    for (; *l == *r && *l; l++, r++)
   10d54:	00054783          	lbu	a5,0(a0)
   10d58:	0005c703          	lbu	a4,0(a1) # ffffffff80000000 <__global_pointer$+0xffffffff7ffed4f0>
   10d5c:	00e79863          	bne	a5,a4,10d6c <strcmp+0x18>
   10d60:	0505                	addi	a0,a0,1
   10d62:	0585                	addi	a1,a1,1
   10d64:	fbe5                	bnez	a5,10d54 <strcmp>
   10d66:	4501                	li	a0,0
        ;
    return *(unsigned char*)l - *(unsigned char*)r;
}
   10d68:	9d19                	subw	a0,a0,a4
   10d6a:	8082                	ret
   10d6c:	0007851b          	sext.w	a0,a5
   10d70:	bfe5                	j	10d68 <strcmp+0x14>

0000000000010d72 <strncmp>:

int strncmp(const char* _l, const char* _r, size_t n)
{
    const unsigned char *l = (void*)_l, *r = (void*)_r;
    if (!n--)
   10d72:	ce05                	beqz	a2,10daa <strncmp+0x38>
        return 0;
    for (; *l && *r && n && *l == *r; l++, r++, n--)
   10d74:	00054703          	lbu	a4,0(a0)
   10d78:	0005c783          	lbu	a5,0(a1)
   10d7c:	cb0d                	beqz	a4,10dae <strncmp+0x3c>
    if (!n--)
   10d7e:	167d                	addi	a2,a2,-1
   10d80:	00c506b3          	add	a3,a0,a2
   10d84:	a819                	j	10d9a <strncmp+0x28>
    for (; *l && *r && n && *l == *r; l++, r++, n--)
   10d86:	00a68e63          	beq	a3,a0,10da2 <strncmp+0x30>
   10d8a:	0505                	addi	a0,a0,1
   10d8c:	00e79b63          	bne	a5,a4,10da2 <strncmp+0x30>
   10d90:	00054703          	lbu	a4,0(a0)
   10d94:	0005c783          	lbu	a5,0(a1)
   10d98:	cb19                	beqz	a4,10dae <strncmp+0x3c>
   10d9a:	0005c783          	lbu	a5,0(a1)
   10d9e:	0585                	addi	a1,a1,1
   10da0:	f3fd                	bnez	a5,10d86 <strncmp+0x14>
        ;
    return *l - *r;
   10da2:	0007051b          	sext.w	a0,a4
   10da6:	9d1d                	subw	a0,a0,a5
   10da8:	8082                	ret
        return 0;
   10daa:	4501                	li	a0,0
}
   10dac:	8082                	ret
   10dae:	4501                	li	a0,0
    return *l - *r;
   10db0:	9d1d                	subw	a0,a0,a5
   10db2:	8082                	ret

0000000000010db4 <strlen>:
size_t strlen(const char* s)
{
    const char* a = s;
    typedef size_t __attribute__((__may_alias__)) word;
    const word* w;
    for (; (uintptr_t)s % SS; s++)
   10db4:	00757793          	andi	a5,a0,7
   10db8:	cf89                	beqz	a5,10dd2 <strlen+0x1e>
   10dba:	87aa                	mv	a5,a0
   10dbc:	a029                	j	10dc6 <strlen+0x12>
   10dbe:	0785                	addi	a5,a5,1
   10dc0:	0077f713          	andi	a4,a5,7
   10dc4:	cb01                	beqz	a4,10dd4 <strlen+0x20>
        if (!*s)
   10dc6:	0007c703          	lbu	a4,0(a5)
   10dca:	fb75                	bnez	a4,10dbe <strlen+0xa>
    for (w = (const void*)s; !HASZERO(*w); w++)
        ;
    s = (const void*)w;
    for (; *s; s++)
        ;
    return s - a;
   10dcc:	40a78533          	sub	a0,a5,a0
}
   10dd0:	8082                	ret
    for (; (uintptr_t)s % SS; s++)
   10dd2:	87aa                	mv	a5,a0
    for (w = (const void*)s; !HASZERO(*w); w++)
   10dd4:	6394                	ld	a3,0(a5)
   10dd6:	00001597          	auipc	a1,0x1
   10dda:	53a5b583          	ld	a1,1338(a1) # 12310 <__DATA_BEGIN__>
   10dde:	00001617          	auipc	a2,0x1
   10de2:	53a63603          	ld	a2,1338(a2) # 12318 <__DATA_BEGIN__+0x8>
   10de6:	a019                	j	10dec <strlen+0x38>
   10de8:	6794                	ld	a3,8(a5)
   10dea:	07a1                	addi	a5,a5,8
   10dec:	00b68733          	add	a4,a3,a1
   10df0:	fff6c693          	not	a3,a3
   10df4:	8f75                	and	a4,a4,a3
   10df6:	8f71                	and	a4,a4,a2
   10df8:	db65                	beqz	a4,10de8 <strlen+0x34>
    for (; *s; s++)
   10dfa:	0007c703          	lbu	a4,0(a5)
   10dfe:	d779                	beqz	a4,10dcc <strlen+0x18>
   10e00:	0017c703          	lbu	a4,1(a5)
   10e04:	0785                	addi	a5,a5,1
   10e06:	d379                	beqz	a4,10dcc <strlen+0x18>
   10e08:	0017c703          	lbu	a4,1(a5)
   10e0c:	0785                	addi	a5,a5,1
   10e0e:	fb6d                	bnez	a4,10e00 <strlen+0x4c>
   10e10:	bf75                	j	10dcc <strlen+0x18>

0000000000010e12 <memchr>:

void* memchr(const void* src, int c, size_t n)
{
    const unsigned char* s = src;
    c = (unsigned char)c;
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
   10e12:	00757713          	andi	a4,a0,7
{
   10e16:	87aa                	mv	a5,a0
    c = (unsigned char)c;
   10e18:	0ff5f593          	andi	a1,a1,255
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
   10e1c:	cb19                	beqz	a4,10e32 <memchr+0x20>
   10e1e:	ce25                	beqz	a2,10e96 <memchr+0x84>
   10e20:	0007c703          	lbu	a4,0(a5)
   10e24:	04b70e63          	beq	a4,a1,10e80 <memchr+0x6e>
   10e28:	0785                	addi	a5,a5,1
   10e2a:	0077f713          	andi	a4,a5,7
   10e2e:	167d                	addi	a2,a2,-1
   10e30:	f77d                	bnez	a4,10e1e <memchr+0xc>
            ;
        s = (const void*)w;
    }
    for (; n && *s != c; s++, n--)
        ;
    return n ? (void*)s : 0;
   10e32:	4501                	li	a0,0
    if (n && *s != c) {
   10e34:	c235                	beqz	a2,10e98 <memchr+0x86>
   10e36:	0007c703          	lbu	a4,0(a5)
   10e3a:	04b70363          	beq	a4,a1,10e80 <memchr+0x6e>
        size_t k = ONES * c;
   10e3e:	00001517          	auipc	a0,0x1
   10e42:	4e253503          	ld	a0,1250(a0) # 12320 <__DATA_BEGIN__+0x10>
        for (w = (const void*)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
   10e46:	471d                	li	a4,7
        size_t k = ONES * c;
   10e48:	02a58533          	mul	a0,a1,a0
        for (w = (const void*)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
   10e4c:	02c77a63          	bgeu	a4,a2,10e80 <memchr+0x6e>
   10e50:	00001897          	auipc	a7,0x1
   10e54:	4c08b883          	ld	a7,1216(a7) # 12310 <__DATA_BEGIN__>
   10e58:	00001817          	auipc	a6,0x1
   10e5c:	4c083803          	ld	a6,1216(a6) # 12318 <__DATA_BEGIN__+0x8>
   10e60:	431d                	li	t1,7
   10e62:	a029                	j	10e6c <memchr+0x5a>
   10e64:	1661                	addi	a2,a2,-8
   10e66:	07a1                	addi	a5,a5,8
   10e68:	02c37963          	bgeu	t1,a2,10e9a <memchr+0x88>
   10e6c:	6398                	ld	a4,0(a5)
   10e6e:	8f29                	xor	a4,a4,a0
   10e70:	011706b3          	add	a3,a4,a7
   10e74:	fff74713          	not	a4,a4
   10e78:	8f75                	and	a4,a4,a3
   10e7a:	01077733          	and	a4,a4,a6
   10e7e:	d37d                	beqz	a4,10e64 <memchr+0x52>
   10e80:	853e                	mv	a0,a5
   10e82:	97b2                	add	a5,a5,a2
   10e84:	a021                	j	10e8c <memchr+0x7a>
    for (; n && *s != c; s++, n--)
   10e86:	0505                	addi	a0,a0,1
   10e88:	00f50763          	beq	a0,a5,10e96 <memchr+0x84>
   10e8c:	00054703          	lbu	a4,0(a0)
   10e90:	feb71be3          	bne	a4,a1,10e86 <memchr+0x74>
   10e94:	8082                	ret
    return n ? (void*)s : 0;
   10e96:	4501                	li	a0,0
}
   10e98:	8082                	ret
    return n ? (void*)s : 0;
   10e9a:	4501                	li	a0,0
    for (; n && *s != c; s++, n--)
   10e9c:	f275                	bnez	a2,10e80 <memchr+0x6e>
}
   10e9e:	8082                	ret

0000000000010ea0 <strnlen>:

size_t strnlen(const char* s, size_t n)
{
   10ea0:	1101                	addi	sp,sp,-32
   10ea2:	e822                	sd	s0,16(sp)
    const char* p = memchr(s, 0, n);
   10ea4:	862e                	mv	a2,a1
{
   10ea6:	842e                	mv	s0,a1
    const char* p = memchr(s, 0, n);
   10ea8:	4581                	li	a1,0
{
   10eaa:	e426                	sd	s1,8(sp)
   10eac:	ec06                	sd	ra,24(sp)
   10eae:	84aa                	mv	s1,a0
    const char* p = memchr(s, 0, n);
   10eb0:	f63ff0ef          	jal	ra,10e12 <memchr>
    return p ? p - s : n;
   10eb4:	c519                	beqz	a0,10ec2 <strnlen+0x22>
}
   10eb6:	60e2                	ld	ra,24(sp)
   10eb8:	6442                	ld	s0,16(sp)
    return p ? p - s : n;
   10eba:	8d05                	sub	a0,a0,s1
}
   10ebc:	64a2                	ld	s1,8(sp)
   10ebe:	6105                	addi	sp,sp,32
   10ec0:	8082                	ret
   10ec2:	60e2                	ld	ra,24(sp)
    return p ? p - s : n;
   10ec4:	8522                	mv	a0,s0
}
   10ec6:	6442                	ld	s0,16(sp)
   10ec8:	64a2                	ld	s1,8(sp)
   10eca:	6105                	addi	sp,sp,32
   10ecc:	8082                	ret

0000000000010ece <stpcpy>:
char* stpcpy(char* restrict d, const char* restrict s)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word* wd;
    const word* ws;
    if ((uintptr_t)s % SS == (uintptr_t)d % SS) {
   10ece:	00b547b3          	xor	a5,a0,a1
   10ed2:	8b9d                	andi	a5,a5,7
   10ed4:	eb95                	bnez	a5,10f08 <stpcpy+0x3a>
        for (; (uintptr_t)s % SS; s++, d++)
   10ed6:	0075f793          	andi	a5,a1,7
   10eda:	e7b1                	bnez	a5,10f26 <stpcpy+0x58>
            if (!(*d = *s))
                return d;
        wd = (void*)d;
        ws = (const void*)s;
        for (; !HASZERO(*ws); *wd++ = *ws++)
   10edc:	6198                	ld	a4,0(a1)
   10ede:	00001617          	auipc	a2,0x1
   10ee2:	43263603          	ld	a2,1074(a2) # 12310 <__DATA_BEGIN__>
   10ee6:	00001817          	auipc	a6,0x1
   10eea:	43283803          	ld	a6,1074(a6) # 12318 <__DATA_BEGIN__+0x8>
   10eee:	a029                	j	10ef8 <stpcpy+0x2a>
   10ef0:	05a1                	addi	a1,a1,8
   10ef2:	e118                	sd	a4,0(a0)
   10ef4:	6198                	ld	a4,0(a1)
   10ef6:	0521                	addi	a0,a0,8
   10ef8:	00c707b3          	add	a5,a4,a2
   10efc:	fff74693          	not	a3,a4
   10f00:	8ff5                	and	a5,a5,a3
   10f02:	0107f7b3          	and	a5,a5,a6
   10f06:	d7ed                	beqz	a5,10ef0 <stpcpy+0x22>
            ;
        d = (void*)wd;
        s = (const void*)ws;
    }
    for (; (*d = *s); s++, d++)
   10f08:	0005c783          	lbu	a5,0(a1)
   10f0c:	00f50023          	sb	a5,0(a0)
   10f10:	c785                	beqz	a5,10f38 <stpcpy+0x6a>
   10f12:	0015c783          	lbu	a5,1(a1)
   10f16:	0505                	addi	a0,a0,1
   10f18:	0585                	addi	a1,a1,1
   10f1a:	00f50023          	sb	a5,0(a0)
   10f1e:	fbf5                	bnez	a5,10f12 <stpcpy+0x44>
        ;
    return d;
}
   10f20:	8082                	ret
        for (; (uintptr_t)s % SS; s++, d++)
   10f22:	0505                	addi	a0,a0,1
   10f24:	df45                	beqz	a4,10edc <stpcpy+0xe>
            if (!(*d = *s))
   10f26:	0005c783          	lbu	a5,0(a1)
        for (; (uintptr_t)s % SS; s++, d++)
   10f2a:	0585                	addi	a1,a1,1
   10f2c:	0075f713          	andi	a4,a1,7
            if (!(*d = *s))
   10f30:	00f50023          	sb	a5,0(a0)
   10f34:	f7fd                	bnez	a5,10f22 <stpcpy+0x54>
}
   10f36:	8082                	ret
   10f38:	8082                	ret

0000000000010f3a <stpncpy>:

char* stpncpy(char* restrict d, const char* restrict s, size_t n)
{
   10f3a:	1141                	addi	sp,sp,-16
    typedef size_t __attribute__((__may_alias__)) word;
    word* wd;
    const word* ws;
    if (((uintptr_t)s & ALIGN) == ((uintptr_t)d & ALIGN)) {
   10f3c:	00b547b3          	xor	a5,a0,a1
{
   10f40:	e022                	sd	s0,0(sp)
   10f42:	e406                	sd	ra,8(sp)
    if (((uintptr_t)s & ALIGN) == ((uintptr_t)d & ALIGN)) {
   10f44:	8b9d                	andi	a5,a5,7
{
   10f46:	842a                	mv	s0,a0
    if (((uintptr_t)s & ALIGN) == ((uintptr_t)d & ALIGN)) {
   10f48:	efb1                	bnez	a5,10fa4 <stpncpy+0x6a>
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
   10f4a:	0075f793          	andi	a5,a1,7
   10f4e:	cf89                	beqz	a5,10f68 <stpncpy+0x2e>
   10f50:	c625                	beqz	a2,10fb8 <stpncpy+0x7e>
   10f52:	0005c783          	lbu	a5,0(a1)
   10f56:	0585                	addi	a1,a1,1
   10f58:	0075f713          	andi	a4,a1,7
   10f5c:	00f40023          	sb	a5,0(s0)
   10f60:	cfa1                	beqz	a5,10fb8 <stpncpy+0x7e>
   10f62:	167d                	addi	a2,a2,-1
   10f64:	0405                	addi	s0,s0,1
   10f66:	f76d                	bnez	a4,10f50 <stpncpy+0x16>
            ;
        if (!n || !*s)
   10f68:	ca21                	beqz	a2,10fb8 <stpncpy+0x7e>
   10f6a:	0005c783          	lbu	a5,0(a1)
   10f6e:	c7a9                	beqz	a5,10fb8 <stpncpy+0x7e>
            goto tail;
        wd = (void*)d;
        ws = (const void*)s;
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
   10f70:	479d                	li	a5,7
   10f72:	02c7fa63          	bgeu	a5,a2,10fa6 <stpncpy+0x6c>
   10f76:	00001817          	auipc	a6,0x1
   10f7a:	39a83803          	ld	a6,922(a6) # 12310 <__DATA_BEGIN__>
   10f7e:	00001517          	auipc	a0,0x1
   10f82:	39a53503          	ld	a0,922(a0) # 12318 <__DATA_BEGIN__+0x8>
   10f86:	489d                	li	a7,7
   10f88:	6198                	ld	a4,0(a1)
   10f8a:	010707b3          	add	a5,a4,a6
   10f8e:	fff74693          	not	a3,a4
   10f92:	8ff5                	and	a5,a5,a3
   10f94:	8fe9                	and	a5,a5,a0
   10f96:	eb81                	bnez	a5,10fa6 <stpncpy+0x6c>
            *wd = *ws;
   10f98:	e018                	sd	a4,0(s0)
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
   10f9a:	1661                	addi	a2,a2,-8
   10f9c:	05a1                	addi	a1,a1,8
   10f9e:	0421                	addi	s0,s0,8
   10fa0:	fec8e4e3          	bltu	a7,a2,10f88 <stpncpy+0x4e>
        d = (void*)wd;
        s = (const void*)ws;
    }
    for (; n && (*d = *s); n--, s++, d++)
   10fa4:	ca11                	beqz	a2,10fb8 <stpncpy+0x7e>
   10fa6:	0005c783          	lbu	a5,0(a1)
   10faa:	0585                	addi	a1,a1,1
   10fac:	00f40023          	sb	a5,0(s0)
   10fb0:	c781                	beqz	a5,10fb8 <stpncpy+0x7e>
   10fb2:	167d                	addi	a2,a2,-1
   10fb4:	0405                	addi	s0,s0,1
   10fb6:	fa65                	bnez	a2,10fa6 <stpncpy+0x6c>
        ;
tail:
    memset(d, 0, n);
   10fb8:	8522                	mv	a0,s0
   10fba:	4581                	li	a1,0
   10fbc:	cc9ff0ef          	jal	ra,10c84 <memset>
    return d;
   10fc0:	60a2                	ld	ra,8(sp)
   10fc2:	8522                	mv	a0,s0
   10fc4:	6402                	ld	s0,0(sp)
   10fc6:	0141                	addi	sp,sp,16
   10fc8:	8082                	ret

0000000000010fca <open>:
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
}

static inline long __syscall3(long n, long a, long b, long c)
{
    register long a7 __asm__("a7") = n;
   10fca:	03800893          	li	a7,56
    register long a0 __asm__("a0") = a;
    register long a1 __asm__("a1") = b;
    register long a2 __asm__("a2") = c;
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
   10fce:	00000073          	ecall

#include "syscall.h"

int open(const char* path, int flags, int mode) {
    return syscall(SYS_openat, path, flags, mode);
}
   10fd2:	2501                	sext.w	a0,a0
   10fd4:	8082                	ret

0000000000010fd6 <close>:
    register long a7 __asm__("a7") = n;
   10fd6:	03900893          	li	a7,57
    __asm_syscall("r"(a7), "0"(a0))
   10fda:	00000073          	ecall

int close(int fd) {
    return syscall(SYS_close, fd);
}
   10fde:	2501                	sext.w	a0,a0
   10fe0:	8082                	ret

0000000000010fe2 <write>:
    register long a7 __asm__("a7") = n;
   10fe2:	04000893          	li	a7,64
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
   10fe6:	00000073          	ecall

ssize_t write(int fd, const void* buf, size_t len)
{
    return syscall(SYS_write, fd, buf, len);
}
   10fea:	8082                	ret

0000000000010fec <getpid>:
    register long a7 __asm__("a7") = n;
   10fec:	0ac00893          	li	a7,172
    __asm_syscall("r"(a7))
   10ff0:	00000073          	ecall

int getpid(void)
{
    return syscall(SYS_getpid);
}
   10ff4:	2501                	sext.w	a0,a0
   10ff6:	8082                	ret

0000000000010ff8 <sched_yield>:
    register long a7 __asm__("a7") = n;
   10ff8:	07c00893          	li	a7,124
    __asm_syscall("r"(a7))
   10ffc:	00000073          	ecall

int sched_yield(void)
{
    return syscall(SYS_sched_yield);
}
   11000:	2501                	sext.w	a0,a0
   11002:	8082                	ret

0000000000011004 <exit>:
    register long a7 __asm__("a7") = n;
   11004:	05d00893          	li	a7,93
    __asm_syscall("r"(a7), "0"(a0))
   11008:	00000073          	ecall

void exit(int code)
{
    syscall(SYS_exit, code);
   1100c:	8082                	ret
