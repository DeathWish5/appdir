
build/riscv64/power:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <main>:
#include <stdio.h>
#include <unistd.h>

int main() {
   100b0:	1141                	addi	sp,sp,-16
    puts("power!");
   100b2:	00001517          	auipc	a0,0x1
   100b6:	f6650513          	addi	a0,a0,-154 # 11018 <exit+0x10>
int main() {
   100ba:	e406                	sd	ra,8(sp)
    puts("power!");
   100bc:	257000ef          	jal	ra,10b12 <puts>
    puts("power!");
   100c0:	00001517          	auipc	a0,0x1
   100c4:	f5850513          	addi	a0,a0,-168 # 11018 <exit+0x10>
   100c8:	24b000ef          	jal	ra,10b12 <puts>
    sched_yield();
   100cc:	731000ef          	jal	ra,10ffc <sched_yield>
    puts("power!");
   100d0:	00001517          	auipc	a0,0x1
   100d4:	f4850513          	addi	a0,a0,-184 # 11018 <exit+0x10>
   100d8:	23b000ef          	jal	ra,10b12 <puts>
    sched_yield();
   100dc:	721000ef          	jal	ra,10ffc <sched_yield>
    puts("power!");
   100e0:	00001517          	auipc	a0,0x1
   100e4:	f3850513          	addi	a0,a0,-200 # 11018 <exit+0x10>
   100e8:	22b000ef          	jal	ra,10b12 <puts>
    sched_yield();
   100ec:	711000ef          	jal	ra,10ffc <sched_yield>
    return 0;
   100f0:	60a2                	ld	ra,8(sp)
   100f2:	4501                	li	a0,0
   100f4:	0141                	addi	sp,sp,16
   100f6:	8082                	ret

00000000000100f8 <_start>:
.text
.globl _start
_start:
    mv a0, sp
   100f8:	850a                	mv	a0,sp
    tail __start_main
   100fa:	0040006f          	j	100fe <__start_main>

00000000000100fe <__start_main>:
#include <unistd.h>

extern int main();

int __start_main(long* p)
{
   100fe:	1141                	addi	sp,sp,-16
   10100:	e406                	sd	ra,8(sp)
    exit(main());
   10102:	fafff0ef          	jal	ra,100b0 <main>
   10106:	703000ef          	jal	ra,11008 <exit>
    return 0;
}
   1010a:	60a2                	ld	ra,8(sp)
   1010c:	4501                	li	a0,0
   1010e:	0141                	addi	sp,sp,16
   10110:	8082                	ret

0000000000010112 <pop_arg.isra.0>:
    write(f, s, l);
}

static void pop_arg(union arg* arg, int type, va_list* ap)
{
    switch (type) {
   10112:	35dd                	addiw	a1,a1,-9
   10114:	0005871b          	sext.w	a4,a1
   10118:	47bd                	li	a5,15
   1011a:	02e7e363          	bltu	a5,a4,10140 <pop_arg.isra.0+0x2e>
   1011e:	1582                	slli	a1,a1,0x20
   10120:	9181                	srli	a1,a1,0x20
   10122:	00001717          	auipc	a4,0x1
   10126:	efe70713          	addi	a4,a4,-258 # 11020 <exit+0x18>
   1012a:	058a                	slli	a1,a1,0x2
   1012c:	95ba                	add	a1,a1,a4
   1012e:	419c                	lw	a5,0(a1)
   10130:	97ba                	add	a5,a5,a4
   10132:	8782                	jr	a5
            break;
        case PDIFF:
            arg->i = va_arg(*ap, ptrdiff_t);
            break;
        case UIPTR:
            arg->i = (uintptr_t)va_arg(*ap, void*);
   10134:	621c                	ld	a5,0(a2)
   10136:	00878713          	addi	a4,a5,8
   1013a:	e218                	sd	a4,0(a2)
   1013c:	639c                	ld	a5,0(a5)
   1013e:	e11c                	sd	a5,0(a0)
            break;
    }
}
   10140:	8082                	ret
            arg->i = va_arg(*ap, ptrdiff_t);
   10142:	621c                	ld	a5,0(a2)
   10144:	6398                	ld	a4,0(a5)
   10146:	07a1                	addi	a5,a5,8
   10148:	e21c                	sd	a5,0(a2)
   1014a:	e118                	sd	a4,0(a0)
            break;
   1014c:	8082                	ret
            arg->i = va_arg(*ap, int);
   1014e:	621c                	ld	a5,0(a2)
   10150:	4398                	lw	a4,0(a5)
   10152:	07a1                	addi	a5,a5,8
   10154:	e21c                	sd	a5,0(a2)
   10156:	e118                	sd	a4,0(a0)
            break;
   10158:	8082                	ret
            arg->i = va_arg(*ap, unsigned int);
   1015a:	621c                	ld	a5,0(a2)
   1015c:	0007e703          	lwu	a4,0(a5)
   10160:	07a1                	addi	a5,a5,8
   10162:	e21c                	sd	a5,0(a2)
   10164:	e118                	sd	a4,0(a0)
            break;
   10166:	8082                	ret
            arg->i = (unsigned char)va_arg(*ap, int);
   10168:	621c                	ld	a5,0(a2)
   1016a:	0007c703          	lbu	a4,0(a5)
   1016e:	07a1                	addi	a5,a5,8
   10170:	e21c                	sd	a5,0(a2)
   10172:	e118                	sd	a4,0(a0)
            break;
   10174:	8082                	ret
            arg->i = (signed char)va_arg(*ap, int);
   10176:	621c                	ld	a5,0(a2)
   10178:	00078703          	lb	a4,0(a5)
   1017c:	07a1                	addi	a5,a5,8
   1017e:	e21c                	sd	a5,0(a2)
   10180:	e118                	sd	a4,0(a0)
            break;
   10182:	8082                	ret
            arg->i = (unsigned short)va_arg(*ap, int);
   10184:	621c                	ld	a5,0(a2)
   10186:	0007d703          	lhu	a4,0(a5)
   1018a:	07a1                	addi	a5,a5,8
   1018c:	e21c                	sd	a5,0(a2)
   1018e:	e118                	sd	a4,0(a0)
            break;
   10190:	8082                	ret
            arg->i = (short)va_arg(*ap, int);
   10192:	621c                	ld	a5,0(a2)
   10194:	00079703          	lh	a4,0(a5)
   10198:	07a1                	addi	a5,a5,8
   1019a:	e21c                	sd	a5,0(a2)
   1019c:	e118                	sd	a4,0(a0)
            break;
   1019e:	8082                	ret

00000000000101a0 <printf_core>:
    }
    return i;
}

static int printf_core(int f, const char* fmt, va_list* ap, union arg* nl_arg, int* nl_type)
{
   101a0:	df010113          	addi	sp,sp,-528
   101a4:	fbca                	sd	s2,496(sp)
   101a6:	20113423          	sd	ra,520(sp)
   101aa:	20813023          	sd	s0,512(sp)
   101ae:	ffa6                	sd	s1,504(sp)
   101b0:	f7ce                	sd	s3,488(sp)
   101b2:	f3d2                	sd	s4,480(sp)
   101b4:	efd6                	sd	s5,472(sp)
   101b6:	ebda                	sd	s6,464(sp)
   101b8:	e7de                	sd	s7,456(sp)
   101ba:	e3e2                	sd	s8,448(sp)
   101bc:	ff66                	sd	s9,440(sp)
   101be:	fb6a                	sd	s10,432(sp)
   101c0:	f76e                	sd	s11,424(sp)
   101c2:	892e                	mv	s2,a1
    int t, pl;

    for (;;) {
        /* Update output count, end loop when fmt is exhausted */
        cnt += l;
        if (!*s)
   101c4:	0005c583          	lbu	a1,0(a1)
{
   101c8:	ec32                	sd	a2,24(sp)
   101ca:	f836                	sd	a3,48(sp)
   101cc:	f03a                	sd	a4,32(sp)
    unsigned l10n = 0, fl;
   101ce:	e802                	sd	zero,16(sp)
        if (!*s)
   101d0:	7e058963          	beqz	a1,109c2 <printf_core+0x822>
        if (i > INT_MAX / 10U || **s - '0' > INT_MAX - 10 * i)
   101d4:	0cccdc37          	lui	s8,0xcccd
        /* Handle literal text and %% format specifiers */
        for (a = s; *s && *s != '%'; s++)
            ;
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
            ;
        if (z - a > INT_MAX - cnt)
   101d8:	80000bb7          	lui	s7,0x80000
            argpos = -1;
            s++;
        }

        /* Read modifier flags */
        for (fl = 0; ((unsigned)*s - ' ') < 32 && (FLAGMASK & (1U << (*s - ' '))); s++)
   101dc:	6acd                	lui	s5,0x13
        if (i > INT_MAX / 10U || **s - '0' > INT_MAX - 10 * i)
   101de:	cccc0793          	addi	a5,s8,-820 # ccccccc <__global_pointer$+0xccba1cc>
   101e2:	89aa                	mv	s3,a0
   101e4:	4a01                	li	s4,0
        if (z - a > INT_MAX - cnt)
   101e6:	fffbcb93          	not	s7,s7
        for (fl = 0; ((unsigned)*s - ' ') < 32 && (FLAGMASK & (1U << (*s - ' '))); s++)
   101ea:	889a8a9b          	addiw	s5,s5,-1911
        if (i > INT_MAX / 10U || **s - '0' > INT_MAX - 10 * i)
   101ee:	e03e                	sd	a5,0(sp)
        st = 0;
        do {
            if (OOB(*s))
                goto inval;
            ps = st;
            st = states[st] S(*s++);
   101f0:	00001b17          	auipc	s6,0x1
   101f4:	f18b0b13          	addi	s6,s6,-232 # 11108 <states>
        for (a = s; *s && *s != '%'; s++)
   101f8:	87ca                	mv	a5,s2
   101fa:	02500713          	li	a4,37
   101fe:	12e58f63          	beq	a1,a4,1033c <printf_core+0x19c>
   10202:	0017c583          	lbu	a1,1(a5)
   10206:	0785                	addi	a5,a5,1
   10208:	f9fd                	bnez	a1,101fe <printf_core+0x5e>
   1020a:	412784b3          	sub	s1,a5,s2
   1020e:	8c3e                	mv	s8,a5
        if (z - a > INT_MAX - cnt)
   10210:	414b8cbb          	subw	s9,s7,s4
   10214:	149cce63          	blt	s9,s1,10370 <printf_core+0x1d0>
        l = z - a;
   10218:	2481                	sext.w	s1,s1
        if (f)
   1021a:	00099b63          	bnez	s3,10230 <printf_core+0x90>
        if (l)
   1021e:	cc99                	beqz	s1,1023c <printf_core+0x9c>
   10220:	01448a3b          	addw	s4,s1,s4
        if (!*s)
   10224:	000c4583          	lbu	a1,0(s8)
   10228:	34058863          	beqz	a1,10578 <printf_core+0x3d8>
   1022c:	8962                	mv	s2,s8
   1022e:	b7e9                	j	101f8 <printf_core+0x58>
    write(f, s, l);
   10230:	8626                	mv	a2,s1
   10232:	85ca                	mv	a1,s2
   10234:	854e                	mv	a0,s3
   10236:	5b1000ef          	jal	ra,10fe6 <write>
        if (l)
   1023a:	f0fd                	bnez	s1,10220 <printf_core+0x80>
        if (isdigit(s[1]) && s[2] == '$') {
   1023c:	001c4503          	lbu	a0,1(s8)
   10240:	197000ef          	jal	ra,10bd6 <isdigit>
   10244:	14050d63          	beqz	a0,1039e <printf_core+0x1fe>
   10248:	002c4683          	lbu	a3,2(s8)
   1024c:	02400793          	li	a5,36
   10250:	001c4603          	lbu	a2,1(s8)
   10254:	22f68e63          	beq	a3,a5,10490 <printf_core+0x2f0>
            argpos = -1;
   10258:	57fd                	li	a5,-1
            s++;
   1025a:	0c05                	addi	s8,s8,1
            argpos = -1;
   1025c:	e43e                	sd	a5,8(sp)
        for (fl = 0; ((unsigned)*s - ' ') < 32 && (FLAGMASK & (1U << (*s - ' '))); s++)
   1025e:	fe06081b          	addiw	a6,a2,-32
   10262:	46fd                	li	a3,31
   10264:	87c2                	mv	a5,a6
   10266:	4401                	li	s0,0
            fl |= 1U << (*s - ' ');
   10268:	4505                	li	a0,1
        for (fl = 0; ((unsigned)*s - ' ') < 32 && (FLAGMASK & (1U << (*s - ' '))); s++)
   1026a:	45fd                	li	a1,31
   1026c:	0106ff63          	bgeu	a3,a6,1028a <printf_core+0xea>
   10270:	a00d                	j	10292 <printf_core+0xf2>
   10272:	001c4603          	lbu	a2,1(s8)
            fl |= 1U << (*s - ' ');
   10276:	00f517bb          	sllw	a5,a0,a5
   1027a:	8c5d                	or	s0,s0,a5
        for (fl = 0; ((unsigned)*s - ' ') < 32 && (FLAGMASK & (1U << (*s - ' '))); s++)
   1027c:	fe06069b          	addiw	a3,a2,-32
   10280:	87b6                	mv	a5,a3
   10282:	0c05                	addi	s8,s8,1
            fl |= 1U << (*s - ' ');
   10284:	2401                	sext.w	s0,s0
        for (fl = 0; ((unsigned)*s - ' ') < 32 && (FLAGMASK & (1U << (*s - ' '))); s++)
   10286:	00d5e663          	bltu	a1,a3,10292 <printf_core+0xf2>
   1028a:	00fad6bb          	srlw	a3,s5,a5
   1028e:	8a85                	andi	a3,a3,1
   10290:	f2ed                	bnez	a3,10272 <printf_core+0xd2>
        if (*s == '*') {
   10292:	02a00793          	li	a5,42
    for (i = 0; isdigit(**s); (*s)++) {
   10296:	4d81                	li	s11,0
        if (*s == '*') {
   10298:	22f60763          	beq	a2,a5,104c6 <printf_core+0x326>
    for (i = 0; isdigit(**s); (*s)++) {
   1029c:	000c4503          	lbu	a0,0(s8)
   102a0:	137000ef          	jal	ra,10bd6 <isdigit>
   102a4:	c91d                	beqz	a0,102da <printf_core+0x13a>
        if (i > INT_MAX / 10U || **s - '0' > INT_MAX - 10 * i)
   102a6:	6782                	ld	a5,0(sp)
   102a8:	0fb7e863          	bltu	a5,s11,10398 <printf_core+0x1f8>
   102ac:	002d979b          	slliw	a5,s11,0x2
   102b0:	000c4683          	lbu	a3,0(s8)
   102b4:	01b7883b          	addw	a6,a5,s11
   102b8:	0018179b          	slliw	a5,a6,0x1
   102bc:	fd06861b          	addiw	a2,a3,-48
   102c0:	40fb85bb          	subw	a1,s7,a5
            i = -1;
   102c4:	5dfd                	li	s11,-1
        if (i > INT_MAX / 10U || **s - '0' > INT_MAX - 10 * i)
   102c6:	00c5c463          	blt	a1,a2,102ce <printf_core+0x12e>
            i = 10 * i + (**s - '0');
   102ca:	00f60dbb          	addw	s11,a2,a5
    for (i = 0; isdigit(**s); (*s)++) {
   102ce:	0c05                	addi	s8,s8,1
   102d0:	000c4503          	lbu	a0,0(s8)
   102d4:	103000ef          	jal	ra,10bd6 <isdigit>
   102d8:	f579                	bnez	a0,102a6 <printf_core+0x106>
        } else if ((w = getint(&s)) < 0)
   102da:	080dcb63          	bltz	s11,10370 <printf_core+0x1d0>
        if (*s == '.' && s[1] == '*') {
   102de:	000c4683          	lbu	a3,0(s8)
   102e2:	02e00793          	li	a5,46
   102e6:	0af69f63          	bne	a3,a5,103a4 <printf_core+0x204>
   102ea:	001c4683          	lbu	a3,1(s8)
   102ee:	02a00793          	li	a5,42
   102f2:	16f68363          	beq	a3,a5,10458 <printf_core+0x2b8>
    for (i = 0; isdigit(**s); (*s)++) {
   102f6:	001c4503          	lbu	a0,1(s8)
            s++;
   102fa:	0c05                	addi	s8,s8,1
    for (i = 0; isdigit(**s); (*s)++) {
   102fc:	4d01                	li	s10,0
   102fe:	0d9000ef          	jal	ra,10bd6 <isdigit>
   10302:	c91d                	beqz	a0,10338 <printf_core+0x198>
        if (i > INT_MAX / 10U || **s - '0' > INT_MAX - 10 * i)
   10304:	6782                	ld	a5,0(sp)
   10306:	1ba7ed63          	bltu	a5,s10,104c0 <printf_core+0x320>
   1030a:	002d179b          	slliw	a5,s10,0x2
   1030e:	000c4683          	lbu	a3,0(s8)
   10312:	01a78d3b          	addw	s10,a5,s10
   10316:	001d179b          	slliw	a5,s10,0x1
   1031a:	fd06861b          	addiw	a2,a3,-48
   1031e:	40fb85bb          	subw	a1,s7,a5
            i = -1;
   10322:	5d7d                	li	s10,-1
        if (i > INT_MAX / 10U || **s - '0' > INT_MAX - 10 * i)
   10324:	00c5c463          	blt	a1,a2,1032c <printf_core+0x18c>
            i = 10 * i + (**s - '0');
   10328:	00f60d3b          	addw	s10,a2,a5
    for (i = 0; isdigit(**s); (*s)++) {
   1032c:	0c05                	addi	s8,s8,1
   1032e:	000c4503          	lbu	a0,0(s8)
   10332:	0a5000ef          	jal	ra,10bd6 <isdigit>
   10336:	f579                	bnez	a0,10304 <printf_core+0x164>
            xp = 1;
   10338:	4885                	li	a7,1
   1033a:	a0bd                	j	103a8 <printf_core+0x208>
        for (z = s; s[0] == '%' && s[1] == '%'; z++, s += 2)
   1033c:	0007c603          	lbu	a2,0(a5)
   10340:	8c3e                	mv	s8,a5
   10342:	02500693          	li	a3,37
   10346:	412784b3          	sub	s1,a5,s2
   1034a:	00b60963          	beq	a2,a1,1035c <printf_core+0x1bc>
   1034e:	b5c9                	j	10210 <printf_core+0x70>
   10350:	002c4603          	lbu	a2,2(s8)
   10354:	0785                	addi	a5,a5,1
   10356:	0c09                	addi	s8,s8,2
   10358:	00d61663          	bne	a2,a3,10364 <printf_core+0x1c4>
   1035c:	001c4603          	lbu	a2,1(s8)
   10360:	fed608e3          	beq	a2,a3,10350 <printf_core+0x1b0>
   10364:	412784b3          	sub	s1,a5,s2
        if (z - a > INT_MAX - cnt)
   10368:	414b8cbb          	subw	s9,s7,s4
   1036c:	ea9cd6e3          	bge	s9,s1,10218 <printf_core+0x78>
    return 1;

    inval:
    return -1;
    overflow:
    return -1;
   10370:	5a7d                	li	s4,-1
}
   10372:	20813083          	ld	ra,520(sp)
   10376:	20013403          	ld	s0,512(sp)
   1037a:	74fe                	ld	s1,504(sp)
   1037c:	795e                	ld	s2,496(sp)
   1037e:	79be                	ld	s3,488(sp)
   10380:	6afe                	ld	s5,472(sp)
   10382:	6b5e                	ld	s6,464(sp)
   10384:	6bbe                	ld	s7,456(sp)
   10386:	6c1e                	ld	s8,448(sp)
   10388:	7cfa                	ld	s9,440(sp)
   1038a:	7d5a                	ld	s10,432(sp)
   1038c:	7dba                	ld	s11,424(sp)
   1038e:	8552                	mv	a0,s4
   10390:	7a1e                	ld	s4,480(sp)
   10392:	21010113          	addi	sp,sp,528
   10396:	8082                	ret
            i = -1;
   10398:	5dfd                	li	s11,-1
    for (i = 0; isdigit(**s); (*s)++) {
   1039a:	0c05                	addi	s8,s8,1
   1039c:	bf15                	j	102d0 <printf_core+0x130>
   1039e:	001c4603          	lbu	a2,1(s8)
   103a2:	bd5d                	j	10258 <printf_core+0xb8>
            xp = 0;
   103a4:	4881                	li	a7,0
            p = -1;
   103a6:	5d7d                	li	s10,-1
        st = 0;
   103a8:	4781                	li	a5,0
            if (OOB(*s))
   103aa:	03900513          	li	a0,57
            st = states[st] S(*s++);
   103ae:	03a00e13          	li	t3,58
        } while (st - 1 < STOP);
   103b2:	431d                	li	t1,7
   103b4:	a015                	j	103d8 <printf_core+0x238>
            st = states[st] S(*s++);
   103b6:	02079693          	slli	a3,a5,0x20
   103ba:	9281                	srli	a3,a3,0x20
   103bc:	03c686b3          	mul	a3,a3,t3
   103c0:	0c05                	addi	s8,s8,1
   103c2:	96da                	add	a3,a3,s6
   103c4:	96b2                	add	a3,a3,a2
   103c6:	0006c683          	lbu	a3,0(a3)
        } while (st - 1 < STOP);
   103ca:	fff6861b          	addiw	a2,a3,-1
            st = states[st] S(*s++);
   103ce:	0006859b          	sext.w	a1,a3
        } while (st - 1 < STOP);
   103d2:	00c36a63          	bltu	t1,a2,103e6 <printf_core+0x246>
   103d6:	87ae                	mv	a5,a1
            if (OOB(*s))
   103d8:	000c4683          	lbu	a3,0(s8)
   103dc:	fbf6861b          	addiw	a2,a3,-65
   103e0:	fcc57be3          	bgeu	a0,a2,103b6 <printf_core+0x216>
   103e4:	b771                	j	10370 <printf_core+0x1d0>
        if (!st)
   103e6:	d5c9                	beqz	a1,10370 <printf_core+0x1d0>
        if (st == NOARG) {
   103e8:	466d                	li	a2,27
            if (argpos >= 0)
   103ea:	6722                	ld	a4,8(sp)
        if (st == NOARG) {
   103ec:	0ac58b63          	beq	a1,a2,104a2 <printf_core+0x302>
            if (argpos >= 0) {
   103f0:	16074963          	bltz	a4,10562 <printf_core+0x3c2>
                nl_type[argpos] = st, arg = nl_arg[argpos];
   103f4:	75c2                	ld	a1,48(sp)
   103f6:	00471613          	slli	a2,a4,0x4
   103fa:	962e                	add	a2,a2,a1
   103fc:	6208                	ld	a0,0(a2)
   103fe:	660c                	ld	a1,8(a2)
   10400:	00271613          	slli	a2,a4,0x2
   10404:	7702                	ld	a4,32(sp)
   10406:	f0aa                	sd	a0,96(sp)
   10408:	f4ae                	sd	a1,104(sp)
   1040a:	963a                	add	a2,a2,a4
   1040c:	c214                	sw	a3,0(a2)
        if (!f)
   1040e:	e0098be3          	beqz	s3,10224 <printf_core+0x84>
        t = s[-1];
   10412:	fffc4683          	lbu	a3,-1(s8)
   10416:	0006861b          	sext.w	a2,a3
        if (ps && (t & 15) == 3)
   1041a:	c789                	beqz	a5,10424 <printf_core+0x284>
   1041c:	8abd                	andi	a3,a3,15
   1041e:	458d                	li	a1,3
   10420:	12b68e63          	beq	a3,a1,1055c <printf_core+0x3bc>
        if (fl & LEFT_ADJ)
   10424:	03241713          	slli	a4,s0,0x32
   10428:	00075563          	bgez	a4,10432 <printf_core+0x292>
            fl &= ~ZERO_PAD;
   1042c:	76c1                	lui	a3,0xffff0
   1042e:	16fd                	addi	a3,a3,-1
   10430:	8c75                	and	s0,s0,a3
        switch (t) {
   10432:	fa86069b          	addiw	a3,a2,-88
   10436:	0006851b          	sext.w	a0,a3
   1043a:	02000593          	li	a1,32
   1043e:	18a5e963          	bltu	a1,a0,105d0 <printf_core+0x430>
   10442:	1682                	slli	a3,a3,0x20
   10444:	9281                	srli	a3,a3,0x20
   10446:	00001597          	auipc	a1,0x1
   1044a:	c1a58593          	addi	a1,a1,-998 # 11060 <exit+0x58>
   1044e:	068a                	slli	a3,a3,0x2
   10450:	96ae                	add	a3,a3,a1
   10452:	4294                	lw	a3,0(a3)
   10454:	96ae                	add	a3,a3,a1
   10456:	8682                	jr	a3
            if (isdigit(s[2]) && s[3] == '$') {
   10458:	002c4503          	lbu	a0,2(s8)
   1045c:	77a000ef          	jal	ra,10bd6 <isdigit>
   10460:	c519                	beqz	a0,1046e <printf_core+0x2ce>
   10462:	003c4683          	lbu	a3,3(s8)
   10466:	02400793          	li	a5,36
   1046a:	0cf68463          	beq	a3,a5,10532 <printf_core+0x392>
            } else if (!l10n) {
   1046e:	67c2                	ld	a5,16(sp)
   10470:	f00790e3          	bnez	a5,10370 <printf_core+0x1d0>
                p = f ? va_arg(*ap, int) : 0;
   10474:	08098863          	beqz	s3,10504 <printf_core+0x364>
   10478:	6762                	ld	a4,24(sp)
                s += 2;
   1047a:	0c09                	addi	s8,s8,2
                p = f ? va_arg(*ap, int) : 0;
   1047c:	631c                	ld	a5,0(a4)
   1047e:	0007ad03          	lw	s10,0(a5)
   10482:	07a1                	addi	a5,a5,8
   10484:	e31c                	sd	a5,0(a4)
   10486:	fffd4893          	not	a7,s10
   1048a:	01f8d89b          	srliw	a7,a7,0x1f
            xp = (p >= 0);
   1048e:	bf29                	j	103a8 <printf_core+0x208>
            argpos = s[1] - '0';
   10490:	fd06079b          	addiw	a5,a2,-48
   10494:	e43e                	sd	a5,8(sp)
            l10n = 1;
   10496:	4785                	li	a5,1
            s += 3;
   10498:	0c0d                	addi	s8,s8,3
            l10n = 1;
   1049a:	e83e                	sd	a5,16(sp)
   1049c:	000c4603          	lbu	a2,0(s8)
            s += 3;
   104a0:	bb7d                	j	1025e <printf_core+0xbe>
            if (argpos >= 0)
   104a2:	f60746e3          	bltz	a4,1040e <printf_core+0x26e>
   104a6:	b5e9                	j	10370 <printf_core+0x1d0>
                switch (ps) {
   104a8:	469d                	li	a3,7
   104aa:	d6f6ede3          	bltu	a3,a5,10224 <printf_core+0x84>
   104ae:	00001697          	auipc	a3,0x1
   104b2:	c3668693          	addi	a3,a3,-970 # 110e4 <exit+0xdc>
   104b6:	078a                	slli	a5,a5,0x2
   104b8:	97b6                	add	a5,a5,a3
   104ba:	439c                	lw	a5,0(a5)
   104bc:	97b6                	add	a5,a5,a3
   104be:	8782                	jr	a5
            i = -1;
   104c0:	5d7d                	li	s10,-1
    for (i = 0; isdigit(**s); (*s)++) {
   104c2:	0c05                	addi	s8,s8,1
   104c4:	b5ad                	j	1032e <printf_core+0x18e>
            if (isdigit(s[1]) && s[2] == '$') {
   104c6:	001c4503          	lbu	a0,1(s8)
   104ca:	70c000ef          	jal	ra,10bd6 <isdigit>
   104ce:	c519                	beqz	a0,104dc <printf_core+0x33c>
   104d0:	002c4683          	lbu	a3,2(s8)
   104d4:	02400793          	li	a5,36
   104d8:	02f68a63          	beq	a3,a5,1050c <printf_core+0x36c>
            } else if (!l10n) {
   104dc:	67c2                	ld	a5,16(sp)
   104de:	e80799e3          	bnez	a5,10370 <printf_core+0x1d0>
                w = f ? va_arg(*ap, int) : 0;
   104e2:	0c05                	addi	s8,s8,1
   104e4:	4d81                	li	s11,0
   104e6:	de098ce3          	beqz	s3,102de <printf_core+0x13e>
   104ea:	6762                	ld	a4,24(sp)
   104ec:	631c                	ld	a5,0(a4)
   104ee:	0007ad83          	lw	s11,0(a5)
   104f2:	07a1                	addi	a5,a5,8
   104f4:	e31c                	sd	a5,0(a4)
            if (w < 0)
   104f6:	de0dd4e3          	bgez	s11,102de <printf_core+0x13e>
                fl |= LEFT_ADJ, w = -w;
   104fa:	6789                	lui	a5,0x2
   104fc:	8c5d                	or	s0,s0,a5
   104fe:	41b00dbb          	negw	s11,s11
   10502:	bbf1                	j	102de <printf_core+0x13e>
                p = f ? va_arg(*ap, int) : 0;
   10504:	4d01                	li	s10,0
   10506:	4885                	li	a7,1
                s += 2;
   10508:	0c09                	addi	s8,s8,2
            xp = (p >= 0);
   1050a:	bd79                	j	103a8 <printf_core+0x208>
                nl_type[s[1] - '0'] = INT;
   1050c:	001c4783          	lbu	a5,1(s8)
   10510:	7702                	ld	a4,32(sp)
   10512:	46a9                	li	a3,10
   10514:	078a                	slli	a5,a5,0x2
   10516:	97ba                	add	a5,a5,a4
                s += 3;
   10518:	0c0d                	addi	s8,s8,3
                nl_type[s[1] - '0'] = INT;
   1051a:	f4d7a023          	sw	a3,-192(a5) # 1f40 <main-0xe170>
                l10n = 1;
   1051e:	4705                	li	a4,1
                w = nl_arg[s[1] - '0'].i;
   10520:	ffec4783          	lbu	a5,-2(s8)
                l10n = 1;
   10524:	e83a                	sd	a4,16(sp)
                w = nl_arg[s[1] - '0'].i;
   10526:	7742                	ld	a4,48(sp)
   10528:	0792                	slli	a5,a5,0x4
   1052a:	97ba                	add	a5,a5,a4
   1052c:	d007ad83          	lw	s11,-768(a5)
                s += 3;
   10530:	b7d9                	j	104f6 <printf_core+0x356>
                nl_type[s[2] - '0'] = INT;
   10532:	002c4783          	lbu	a5,2(s8)
   10536:	7702                	ld	a4,32(sp)
   10538:	46a9                	li	a3,10
   1053a:	078a                	slli	a5,a5,0x2
   1053c:	97ba                	add	a5,a5,a4
                s += 4;
   1053e:	0c11                	addi	s8,s8,4
                nl_type[s[2] - '0'] = INT;
   10540:	f4d7a023          	sw	a3,-192(a5)
                p = nl_arg[s[2] - '0'].i;
   10544:	ffec4783          	lbu	a5,-2(s8)
   10548:	7742                	ld	a4,48(sp)
   1054a:	0792                	slli	a5,a5,0x4
   1054c:	97ba                	add	a5,a5,a4
   1054e:	d007ad03          	lw	s10,-768(a5)
                s += 4;
   10552:	fffd4893          	not	a7,s10
   10556:	01f8d89b          	srliw	a7,a7,0x1f
   1055a:	b5b9                	j	103a8 <printf_core+0x208>
            t &= ~32;
   1055c:	0df67613          	andi	a2,a2,223
   10560:	b5d1                	j	10424 <printf_core+0x284>
   10562:	f43e                	sd	a5,40(sp)
   10564:	e446                	sd	a7,8(sp)
            } else if (f)
   10566:	44098e63          	beqz	s3,109c2 <printf_core+0x822>
                pop_arg(&arg, st, ap);
   1056a:	6662                	ld	a2,24(sp)
   1056c:	1088                	addi	a0,sp,96
   1056e:	ba5ff0ef          	jal	ra,10112 <pop_arg.isra.0>
        if (!f)
   10572:	68a2                	ld	a7,8(sp)
   10574:	77a2                	ld	a5,40(sp)
   10576:	bd71                	j	10412 <printf_core+0x272>
    if (f)
   10578:	de099de3          	bnez	s3,10372 <printf_core+0x1d2>
    if (!l10n)
   1057c:	67c2                	ld	a5,16(sp)
   1057e:	44078263          	beqz	a5,109c2 <printf_core+0x822>
   10582:	7782                	ld	a5,32(sp)
    for (i = 1; i <= NL_ARGMAX && nl_type[i]; i++)
   10584:	4485                	li	s1,1
   10586:	49a9                	li	s3,10
   10588:	00478913          	addi	s2,a5,4
   1058c:	77c2                	ld	a5,48(sp)
   1058e:	01078413          	addi	s0,a5,16
   10592:	00092583          	lw	a1,0(s2)
   10596:	4c058663          	beqz	a1,10a62 <printf_core+0x8c2>
        pop_arg(nl_arg + i, nl_type[i], ap);
   1059a:	6662                	ld	a2,24(sp)
   1059c:	8522                	mv	a0,s0
    for (i = 1; i <= NL_ARGMAX && nl_type[i]; i++)
   1059e:	0485                	addi	s1,s1,1
        pop_arg(nl_arg + i, nl_type[i], ap);
   105a0:	b73ff0ef          	jal	ra,10112 <pop_arg.isra.0>
    for (i = 1; i <= NL_ARGMAX && nl_type[i]; i++)
   105a4:	0911                	addi	s2,s2,4
   105a6:	0441                	addi	s0,s0,16
   105a8:	ff3495e3          	bne	s1,s3,10592 <printf_core+0x3f2>
    return 1;
   105ac:	4a05                	li	s4,1
   105ae:	b3d1                	j	10372 <printf_core+0x1d2>
                        *(uintmax_t*)arg.p = cnt;
   105b0:	7786                	ld	a5,96(sp)
   105b2:	0147b023          	sd	s4,0(a5)
                        break;
   105b6:	b1bd                	j	10224 <printf_core+0x84>
                        *(unsigned char*)arg.p = cnt;
   105b8:	7786                	ld	a5,96(sp)
   105ba:	01478023          	sb	s4,0(a5)
                        break;
   105be:	b19d                	j	10224 <printf_core+0x84>
                        *(unsigned short*)arg.p = cnt;
   105c0:	7786                	ld	a5,96(sp)
   105c2:	01479023          	sh	s4,0(a5)
                        break;
   105c6:	b9b9                	j	10224 <printf_core+0x84>
                        *(int*)arg.p = cnt;
   105c8:	7786                	ld	a5,96(sp)
   105ca:	0147a023          	sw	s4,0(a5)
                        break;
   105ce:	b999                	j	10224 <printf_core+0x84>
   105d0:	09b10793          	addi	a5,sp,155
   105d4:	412787b3          	sub	a5,a5,s2
   105d8:	f43e                	sd	a5,40(sp)
        if (p < z - a)
   105da:	3cfd5963          	bge	s10,a5,109ac <printf_core+0x80c>
            p = z - a;
   105de:	5d22                	lw	s10,40(sp)
        if (p < z - a)
   105e0:	80000537          	lui	a0,0x80000
   105e4:	00001797          	auipc	a5,0x1
   105e8:	d0478793          	addi	a5,a5,-764 # 112e8 <xdigits+0x10>
   105ec:	fff54513          	not	a0,a0
   105f0:	e4be                	sd	a5,72(sp)
        if (p > INT_MAX - pl)
   105f2:	d7a54fe3          	blt	a0,s10,10370 <printf_core+0x1d0>
   105f6:	01a487bb          	addw	a5,s1,s10
   105fa:	e0be                	sd	a5,64(sp)
   105fc:	873e                	mv	a4,a5
        if (w < pl + p)
   105fe:	87ee                	mv	a5,s11
   10600:	00edd363          	bge	s11,a4,10606 <printf_core+0x466>
   10604:	87ba                	mv	a5,a4
   10606:	0007871b          	sext.w	a4,a5
   1060a:	e8ba                	sd	a4,80(sp)
        if (w > INT_MAX - cnt)
   1060c:	d6ecc2e3          	blt	s9,a4,10370 <printf_core+0x1d0>
    if (fl & (LEFT_ADJ | ZERO_PAD) || l >= w)
   10610:	6cc9                	lui	s9,0x12
   10612:	019477b3          	and	a5,s0,s9
   10616:	32079363          	bnez	a5,1093c <printf_core+0x79c>
   1061a:	87ba                	mv	a5,a4
   1061c:	6706                	ld	a4,64(sp)
   1061e:	36f75663          	bge	a4,a5,1098a <printf_core+0x7ea>
    l = w - l;
   10622:	40e7883b          	subw	a6,a5,a4
   10626:	10000613          	li	a2,256
   1062a:	87c2                	mv	a5,a6
   1062c:	86c2                	mv	a3,a6
    memset(pad, c, l > sizeof pad ? sizeof pad : l);
   1062e:	01065463          	bge	a2,a6,10636 <printf_core+0x496>
   10632:	10000793          	li	a5,256
   10636:	0a010c93          	addi	s9,sp,160
   1063a:	863e                	mv	a2,a5
   1063c:	02000593          	li	a1,32
   10640:	8566                	mv	a0,s9
   10642:	fc42                	sd	a6,56(sp)
   10644:	e436                	sd	a3,8(sp)
   10646:	ecbe                	sd	a5,88(sp)
   10648:	640000ef          	jal	ra,10c88 <memset>
    for (; l >= sizeof pad; l -= sizeof pad)
   1064c:	7862                	ld	a6,56(sp)
   1064e:	0ff00613          	li	a2,255
   10652:	66a2                	ld	a3,8(sp)
   10654:	8dc2                	mv	s11,a6
   10656:	39065e63          	bge	a2,a6,109f2 <printf_core+0x852>
   1065a:	87c2                	mv	a5,a6
   1065c:	f007879b          	addiw	a5,a5,-256
    write(f, s, l);
   10660:	10000613          	li	a2,256
   10664:	85e6                	mv	a1,s9
   10666:	854e                	mv	a0,s3
    for (; l >= sizeof pad; l -= sizeof pad)
   10668:	e43e                	sd	a5,8(sp)
   1066a:	fc3e                	sd	a5,56(sp)
    write(f, s, l);
   1066c:	17b000ef          	jal	ra,10fe6 <write>
    for (; l >= sizeof pad; l -= sizeof pad)
   10670:	67a2                	ld	a5,8(sp)
   10672:	0ff00713          	li	a4,255
   10676:	fef763e3          	bltu	a4,a5,1065c <printf_core+0x4bc>
    write(f, s, l);
   1067a:	863e                	mv	a2,a5
   1067c:	85e6                	mv	a1,s9
   1067e:	854e                	mv	a0,s3
   10680:	167000ef          	jal	ra,10fe6 <write>
   10684:	65a6                	ld	a1,72(sp)
   10686:	8626                	mv	a2,s1
   10688:	854e                	mv	a0,s3
   1068a:	15d000ef          	jal	ra,10fe6 <write>
        pad(f, '0', w, pl + p, fl ^ ZERO_PAD);
   1068e:	66c1                	lui	a3,0x10
   10690:	8ea1                	xor	a3,a3,s0
    if (fl & (LEFT_ADJ | ZERO_PAD) || l >= w)
   10692:	6649                	lui	a2,0x12
   10694:	8ef1                	and	a3,a3,a2
   10696:	ea8d                	bnez	a3,106c8 <printf_core+0x528>
    memset(pad, c, l > sizeof pad ? sizeof pad : l);
   10698:	6666                	ld	a2,88(sp)
   1069a:	03000593          	li	a1,48
   1069e:	8566                	mv	a0,s9
   106a0:	5e8000ef          	jal	ra,10c88 <memset>
    for (; l >= sizeof pad; l -= sizeof pad)
   106a4:	0ff00493          	li	s1,255
    write(f, s, l);
   106a8:	10000613          	li	a2,256
   106ac:	85e6                	mv	a1,s9
   106ae:	854e                	mv	a0,s3
    for (; l >= sizeof pad; l -= sizeof pad)
   106b0:	f00d8d9b          	addiw	s11,s11,-256
    write(f, s, l);
   106b4:	133000ef          	jal	ra,10fe6 <write>
    for (; l >= sizeof pad; l -= sizeof pad)
   106b8:	86ee                	mv	a3,s11
   106ba:	ffb4e7e3          	bltu	s1,s11,106a8 <printf_core+0x508>
    write(f, s, l);
   106be:	8636                	mv	a2,a3
   106c0:	85e6                	mv	a1,s9
   106c2:	854e                	mv	a0,s3
   106c4:	123000ef          	jal	ra,10fe6 <write>
        pad(f, '0', p, z - a, 0);
   106c8:	57a2                	lw	a5,40(sp)
    if (fl & (LEFT_ADJ | ZERO_PAD) || l >= w)
   106ca:	05a7d963          	bge	a5,s10,1071c <printf_core+0x57c>
    l = w - l;
   106ce:	40fd0d3b          	subw	s10,s10,a5
    memset(pad, c, l > sizeof pad ? sizeof pad : l);
   106d2:	10000693          	li	a3,256
    l = w - l;
   106d6:	866a                	mv	a2,s10
   106d8:	8dea                	mv	s11,s10
    memset(pad, c, l > sizeof pad ? sizeof pad : l);
   106da:	01a6d463          	bge	a3,s10,106e2 <printf_core+0x542>
   106de:	10000613          	li	a2,256
   106e2:	0a010c93          	addi	s9,sp,160
   106e6:	03000593          	li	a1,48
   106ea:	8566                	mv	a0,s9
   106ec:	59c000ef          	jal	ra,10c88 <memset>
    for (; l >= sizeof pad; l -= sizeof pad)
   106f0:	0ff00693          	li	a3,255
   106f4:	01a6df63          	bge	a3,s10,10712 <printf_core+0x572>
   106f8:	0ff00493          	li	s1,255
    write(f, s, l);
   106fc:	10000613          	li	a2,256
   10700:	85e6                	mv	a1,s9
   10702:	854e                	mv	a0,s3
    for (; l >= sizeof pad; l -= sizeof pad)
   10704:	f00d0d1b          	addiw	s10,s10,-256
    write(f, s, l);
   10708:	0df000ef          	jal	ra,10fe6 <write>
    for (; l >= sizeof pad; l -= sizeof pad)
   1070c:	8dea                	mv	s11,s10
   1070e:	ffa4e7e3          	bltu	s1,s10,106fc <printf_core+0x55c>
    write(f, s, l);
   10712:	866e                	mv	a2,s11
   10714:	85e6                	mv	a1,s9
   10716:	854e                	mv	a0,s3
   10718:	0cf000ef          	jal	ra,10fe6 <write>
   1071c:	7622                	ld	a2,40(sp)
   1071e:	85ca                	mv	a1,s2
   10720:	854e                	mv	a0,s3
   10722:	0c5000ef          	jal	ra,10fe6 <write>
    if (fl & (LEFT_ADJ | ZERO_PAD) || l >= w)
   10726:	6746                	ld	a4,80(sp)
        pad(f, ' ', w, pl + p, fl ^ LEFT_ADJ);
   10728:	6789                	lui	a5,0x2
   1072a:	8fa1                	xor	a5,a5,s0
    if (fl & (LEFT_ADJ | ZERO_PAD) || l >= w)
   1072c:	66c9                	lui	a3,0x12
   1072e:	8ff5                	and	a5,a5,a3
   10730:	01470a3b          	addw	s4,a4,s4
   10734:	ae0798e3          	bnez	a5,10224 <printf_core+0x84>
   10738:	87ba                	mv	a5,a4
   1073a:	6706                	ld	a4,64(sp)
   1073c:	aef754e3          	bge	a4,a5,10224 <printf_core+0x84>
    l = w - l;
   10740:	40e784bb          	subw	s1,a5,a4
    memset(pad, c, l > sizeof pad ? sizeof pad : l);
   10744:	10000793          	li	a5,256
    l = w - l;
   10748:	8626                	mv	a2,s1
   1074a:	8926                	mv	s2,s1
    memset(pad, c, l > sizeof pad ? sizeof pad : l);
   1074c:	0097d463          	bge	a5,s1,10754 <printf_core+0x5b4>
   10750:	10000613          	li	a2,256
   10754:	0a010c93          	addi	s9,sp,160
   10758:	02000593          	li	a1,32
   1075c:	8566                	mv	a0,s9
   1075e:	52a000ef          	jal	ra,10c88 <memset>
    for (; l >= sizeof pad; l -= sizeof pad)
   10762:	0ff00793          	li	a5,255
   10766:	0097df63          	bge	a5,s1,10784 <printf_core+0x5e4>
   1076a:	0ff00413          	li	s0,255
    write(f, s, l);
   1076e:	10000613          	li	a2,256
   10772:	85e6                	mv	a1,s9
   10774:	854e                	mv	a0,s3
    for (; l >= sizeof pad; l -= sizeof pad)
   10776:	f004849b          	addiw	s1,s1,-256
    write(f, s, l);
   1077a:	06d000ef          	jal	ra,10fe6 <write>
    for (; l >= sizeof pad; l -= sizeof pad)
   1077e:	8926                	mv	s2,s1
   10780:	fe9467e3          	bltu	s0,s1,1076e <printf_core+0x5ce>
    write(f, s, l);
   10784:	864a                	mv	a2,s2
   10786:	85e6                	mv	a1,s9
   10788:	854e                	mv	a0,s3
   1078a:	05d000ef          	jal	ra,10fe6 <write>
   1078e:	bc59                	j	10224 <printf_core+0x84>
   10790:	02067513          	andi	a0,a2,32
   10794:	2501                	sext.w	a0,a0
                a = fmt_x(arg.i, z, t & 32);
   10796:	7786                	ld	a5,96(sp)
    for (; x; x >>= 4)
   10798:	1e078f63          	beqz	a5,10996 <printf_core+0x7f6>
   1079c:	09b10593          	addi	a1,sp,155
   107a0:	0185151b          	slliw	a0,a0,0x18
   107a4:	4185551b          	sraiw	a0,a0,0x18
   107a8:	892e                	mv	s2,a1
        *--s = xdigits[(x & 15)] | lower;
   107aa:	00f7f693          	andi	a3,a5,15
   107ae:	96da                	add	a3,a3,s6
   107b0:	1d06c683          	lbu	a3,464(a3) # 121d0 <xdigits+0xef8>
   107b4:	197d                	addi	s2,s2,-1
    for (; x; x >>= 4)
   107b6:	8391                	srli	a5,a5,0x4
        *--s = xdigits[(x & 15)] | lower;
   107b8:	8ec9                	or	a3,a3,a0
   107ba:	00d90023          	sb	a3,0(s2)
    for (; x; x >>= 4)
   107be:	f7f5                	bnez	a5,107aa <printf_core+0x60a>
                if (arg.i && (fl & ALT_FORM))
   107c0:	00847793          	andi	a5,s0,8
   107c4:	20079a63          	bnez	a5,109d8 <printf_core+0x838>
   107c8:	80000537          	lui	a0,0x80000
        prefix = "-+   0X0x";
   107cc:	00001797          	auipc	a5,0x1
   107d0:	b1c78793          	addi	a5,a5,-1252 # 112e8 <xdigits+0x10>
   107d4:	fff54513          	not	a0,a0
   107d8:	e4be                	sd	a5,72(sp)
                if (xp && p < 0)
   107da:	0c089e63          	bnez	a7,108b6 <printf_core+0x716>
                if (!arg.i && !p) {
   107de:	7786                	ld	a5,96(sp)
                p = MAX(p, z - a + !arg.i);
   107e0:	41258733          	sub	a4,a1,s2
   107e4:	0017b793          	seqz	a5,a5
   107e8:	f43a                	sd	a4,40(sp)
   107ea:	97ba                	add	a5,a5,a4
   107ec:	01a7d363          	bge	a5,s10,107f2 <printf_core+0x652>
   107f0:	87ea                	mv	a5,s10
   107f2:	00078d1b          	sext.w	s10,a5
        if (p < z - a)
   107f6:	77a2                	ld	a5,40(sp)
   107f8:	defd5de3          	bge	s10,a5,105f2 <printf_core+0x452>
            p = z - a;
   107fc:	5d22                	lw	s10,40(sp)
   107fe:	bbd5                	j	105f2 <printf_core+0x452>
                    if (arg.i > INTMAX_MAX) {
   10800:	7786                	ld	a5,96(sp)
   10802:	2207c363          	bltz	a5,10a28 <printf_core+0x888>
                    } else if (fl & MARK_POS) {
   10806:	03441713          	slli	a4,s0,0x34
   1080a:	2c074a63          	bltz	a4,10ade <printf_core+0x93e>
                    } else if (fl & PAD_POS) {
   1080e:	00147693          	andi	a3,s0,1
   10812:	80000537          	lui	a0,0x80000
   10816:	10068363          	beqz	a3,1091c <printf_core+0x77c>
                        prefix += 2;
   1081a:	00001717          	auipc	a4,0x1
   1081e:	ad070713          	addi	a4,a4,-1328 # 112ea <xdigits+0x12>
   10822:	ffe54513          	xori	a0,a0,-2
                        pl = 1;
   10826:	4485                	li	s1,1
                        prefix += 2;
   10828:	e4ba                	sd	a4,72(sp)
    for (y = x; y; y /= 10)
   1082a:	16078b63          	beqz	a5,109a0 <printf_core+0x800>
        prefix = "-+   0X0x";
   1082e:	09b10593          	addi	a1,sp,155
   10832:	892e                	mv	s2,a1
        *--s = '0' + y % 10;
   10834:	4629                	li	a2,10
    for (y = x; y; y /= 10)
   10836:	4e25                	li	t3,9
        *--s = '0' + y % 10;
   10838:	02c7f6b3          	remu	a3,a5,a2
   1083c:	197d                	addi	s2,s2,-1
   1083e:	833e                	mv	t1,a5
   10840:	0306869b          	addiw	a3,a3,48
   10844:	00d90023          	sb	a3,0(s2)
    for (y = x; y; y /= 10)
   10848:	02c7d7b3          	divu	a5,a5,a2
   1084c:	fe6e66e3          	bltu	t3,t1,10838 <printf_core+0x698>
   10850:	b769                	j	107da <printf_core+0x63a>
                *(a = z - (p = 1)) = arg.i;
   10852:	7786                	ld	a5,96(sp)
   10854:	4d05                	li	s10,1
   10856:	09a10913          	addi	s2,sp,154
   1085a:	08f10d23          	sb	a5,154(sp)
                fl &= ~ZERO_PAD;
   1085e:	77c1                	lui	a5,0xffff0
   10860:	17fd                	addi	a5,a5,-1
   10862:	8c7d                	and	s0,s0,a5
                break;
   10864:	4785                	li	a5,1
   10866:	e0be                	sd	a5,64(sp)
   10868:	f43e                	sd	a5,40(sp)
        prefix = "-+   0X0x";
   1086a:	00001797          	auipc	a5,0x1
   1086e:	a7e78793          	addi	a5,a5,-1410 # 112e8 <xdigits+0x10>
   10872:	6706                	ld	a4,64(sp)
   10874:	e4be                	sd	a5,72(sp)
                break;
   10876:	b361                	j	105fe <printf_core+0x45e>
                        a = fmt_o(arg.i, z);
   10878:	7786                	ld	a5,96(sp)
    for (; x; x >>= 3)
   1087a:	09b10593          	addi	a1,sp,155
   1087e:	892e                	mv	s2,a1
                        a = fmt_o(arg.i, z);
   10880:	86be                	mv	a3,a5
    for (; x; x >>= 3)
   10882:	cb91                	beqz	a5,10896 <printf_core+0x6f6>
        *--s = '0' + (x & 7);
   10884:	0076f613          	andi	a2,a3,7
   10888:	197d                	addi	s2,s2,-1
   1088a:	0306061b          	addiw	a2,a2,48
   1088e:	00c90023          	sb	a2,0(s2)
    for (; x; x >>= 3)
   10892:	828d                	srli	a3,a3,0x3
   10894:	fae5                	bnez	a3,10884 <printf_core+0x6e4>
                    if ((fl & ALT_FORM) && p < z - a + 1)
   10896:	00847693          	andi	a3,s0,8
   1089a:	c699                	beqz	a3,108a8 <printf_core+0x708>
   1089c:	412586b3          	sub	a3,a1,s2
   108a0:	01a6c463          	blt	a3,s10,108a8 <printf_core+0x708>
                        p = z - a + 1;
   108a4:	00168d1b          	addiw	s10,a3,1
                if (xp && p < 0)
   108a8:	10088f63          	beqz	a7,109c6 <printf_core+0x826>
   108ac:	00001797          	auipc	a5,0x1
   108b0:	a3c78793          	addi	a5,a5,-1476 # 112e8 <xdigits+0x10>
   108b4:	e4be                	sd	a5,72(sp)
   108b6:	aa0d4de3          	bltz	s10,10370 <printf_core+0x1d0>
                    fl &= ~ZERO_PAD;
   108ba:	7786                	ld	a5,96(sp)
   108bc:	76c1                	lui	a3,0xffff0
   108be:	16fd                	addi	a3,a3,-1
   108c0:	8c75                	and	s0,s0,a3
                if (!arg.i && !p) {
   108c2:	ebb5                	bnez	a5,10936 <printf_core+0x796>
   108c4:	060d1963          	bnez	s10,10936 <printf_core+0x796>
   108c8:	e0a6                	sd	s1,64(sp)
   108ca:	f402                	sd	zero,40(sp)
                    a = z;
   108cc:	892e                	mv	s2,a1
        if (p > INT_MAX - pl)
   108ce:	8726                	mv	a4,s1
   108d0:	b33d                	j	105fe <printf_core+0x45e>
                p = MAX(p, 2 * sizeof(void*));
   108d2:	46c1                	li	a3,16
   108d4:	87ea                	mv	a5,s10
   108d6:	00dd7363          	bgeu	s10,a3,108dc <printf_core+0x73c>
   108da:	47c1                	li	a5,16
   108dc:	00078d1b          	sext.w	s10,a5
                fl |= ALT_FORM;
   108e0:	00846413          	ori	s0,s0,8
   108e4:	02000513          	li	a0,32
                t = 'x';
   108e8:	07800613          	li	a2,120
   108ec:	b56d                	j	10796 <printf_core+0x5f6>
                a = arg.p ? arg.p : "(null)";
   108ee:	7906                	ld	s2,96(sp)
   108f0:	02090e63          	beqz	s2,1092c <printf_core+0x78c>
                z = a + strnlen(a, p < 0 ? INT_MAX : p);
   108f4:	140d4863          	bltz	s10,10a44 <printf_core+0x8a4>
   108f8:	85ea                	mv	a1,s10
   108fa:	854a                	mv	a0,s2
   108fc:	5a8000ef          	jal	ra,10ea4 <strnlen>
   10900:	8d2a                	mv	s10,a0
   10902:	00a90733          	add	a4,s2,a0
                fl &= ~ZERO_PAD;
   10906:	77c1                	lui	a5,0xffff0
   10908:	17fd                	addi	a5,a5,-1
   1090a:	8c7d                	and	s0,s0,a5
   1090c:	412707b3          	sub	a5,a4,s2
                p = z - a;
   10910:	2d01                	sext.w	s10,s10
                break;
   10912:	f43e                	sd	a5,40(sp)
   10914:	b1d9                	j	105da <printf_core+0x43a>
   10916:	7786                	ld	a5,96(sp)
                        prefix += 2;
   10918:	80000537          	lui	a0,0x80000
   1091c:	00001717          	auipc	a4,0x1
   10920:	9cc70713          	addi	a4,a4,-1588 # 112e8 <xdigits+0x10>
   10924:	fff54513          	not	a0,a0
   10928:	e4ba                	sd	a4,72(sp)
   1092a:	b701                	j	1082a <printf_core+0x68a>
                a = arg.p ? arg.p : "(null)";
   1092c:	00001917          	auipc	s2,0x1
   10930:	9cc90913          	addi	s2,s2,-1588 # 112f8 <xdigits+0x20>
   10934:	b7c1                	j	108f4 <printf_core+0x754>
   10936:	409b853b          	subw	a0,s7,s1
   1093a:	b55d                	j	107e0 <printf_core+0x640>
    write(f, s, l);
   1093c:	65a6                	ld	a1,72(sp)
   1093e:	8626                	mv	a2,s1
   10940:	854e                	mv	a0,s3
   10942:	6a4000ef          	jal	ra,10fe6 <write>
        pad(f, '0', w, pl + p, fl ^ ZERO_PAD);
   10946:	67c1                	lui	a5,0x10
   10948:	8fa1                	xor	a5,a5,s0
    if (fl & (LEFT_ADJ | ZERO_PAD) || l >= w)
   1094a:	0197fcb3          	and	s9,a5,s9
   1094e:	d60c9de3          	bnez	s9,106c8 <printf_core+0x528>
   10952:	67c6                	ld	a5,80(sp)
   10954:	6706                	ld	a4,64(sp)
   10956:	d6f759e3          	bge	a4,a5,106c8 <printf_core+0x528>
   1095a:	40e786bb          	subw	a3,a5,a4
    memset(pad, c, l > sizeof pad ? sizeof pad : l);
   1095e:	10000593          	li	a1,256
   10962:	8636                	mv	a2,a3
   10964:	8db6                	mv	s11,a3
   10966:	00d5d463          	bge	a1,a3,1096e <printf_core+0x7ce>
   1096a:	10000613          	li	a2,256
   1096e:	0a010c93          	addi	s9,sp,160
   10972:	03000593          	li	a1,48
   10976:	8566                	mv	a0,s9
   10978:	e436                	sd	a3,8(sp)
   1097a:	30e000ef          	jal	ra,10c88 <memset>
    for (; l >= sizeof pad; l -= sizeof pad)
   1097e:	66a2                	ld	a3,8(sp)
   10980:	0ff00613          	li	a2,255
   10984:	d2d640e3          	blt	a2,a3,106a4 <printf_core+0x504>
   10988:	bb1d                	j	106be <printf_core+0x51e>
    write(f, s, l);
   1098a:	65a6                	ld	a1,72(sp)
   1098c:	8626                	mv	a2,s1
   1098e:	854e                	mv	a0,s3
   10990:	656000ef          	jal	ra,10fe6 <write>
    if (fl & (LEFT_ADJ | ZERO_PAD) || l >= w)
   10994:	bb15                	j	106c8 <printf_core+0x528>
        prefix = "-+   0X0x";
   10996:	00001797          	auipc	a5,0x1
   1099a:	95278793          	addi	a5,a5,-1710 # 112e8 <xdigits+0x10>
   1099e:	e4be                	sd	a5,72(sp)
                if (xp && p < 0)
   109a0:	00088c63          	beqz	a7,109b8 <printf_core+0x818>
   109a4:	09b10593          	addi	a1,sp,155
   109a8:	892e                	mv	s2,a1
   109aa:	b731                	j	108b6 <printf_core+0x716>
        if (p < z - a)
   109ac:	00001797          	auipc	a5,0x1
   109b0:	93c78793          	addi	a5,a5,-1732 # 112e8 <xdigits+0x10>
   109b4:	e4be                	sd	a5,72(sp)
   109b6:	b181                	j	105f6 <printf_core+0x456>
                if (!arg.i && !p) {
   109b8:	09b10593          	addi	a1,sp,155
   109bc:	4781                	li	a5,0
   109be:	892e                	mv	s2,a1
   109c0:	b711                	j	108c4 <printf_core+0x724>
        cnt += l;
   109c2:	4a01                	li	s4,0
   109c4:	b27d                	j	10372 <printf_core+0x1d2>
   109c6:	00001717          	auipc	a4,0x1
   109ca:	92270713          	addi	a4,a4,-1758 # 112e8 <xdigits+0x10>
   109ce:	e4ba                	sd	a4,72(sp)
                if (!arg.i && !p) {
   109d0:	4481                	li	s1,0
   109d2:	ee0789e3          	beqz	a5,108c4 <printf_core+0x724>
   109d6:	b785                	j	10936 <printf_core+0x796>
                    prefix += (t >> 4), pl = 2;
   109d8:	8211                	srli	a2,a2,0x4
   109da:	00001797          	auipc	a5,0x1
   109de:	90e78793          	addi	a5,a5,-1778 # 112e8 <xdigits+0x10>
   109e2:	97b2                	add	a5,a5,a2
   109e4:	80000537          	lui	a0,0x80000
   109e8:	e4be                	sd	a5,72(sp)
   109ea:	ffd54513          	xori	a0,a0,-3
   109ee:	4489                	li	s1,2
   109f0:	b3ed                	j	107da <printf_core+0x63a>
    write(f, s, l);
   109f2:	8642                	mv	a2,a6
   109f4:	85e6                	mv	a1,s9
   109f6:	854e                	mv	a0,s3
   109f8:	e436                	sd	a3,8(sp)
   109fa:	5ec000ef          	jal	ra,10fe6 <write>
   109fe:	65a6                	ld	a1,72(sp)
   10a00:	8626                	mv	a2,s1
   10a02:	854e                	mv	a0,s3
   10a04:	5e2000ef          	jal	ra,10fe6 <write>
        pad(f, '0', w, pl + p, fl ^ ZERO_PAD);
   10a08:	67c1                	lui	a5,0x10
   10a0a:	8fa1                	xor	a5,a5,s0
    if (fl & (LEFT_ADJ | ZERO_PAD) || l >= w)
   10a0c:	6649                	lui	a2,0x12
   10a0e:	8ff1                	and	a5,a5,a2
   10a10:	66a2                	ld	a3,8(sp)
   10a12:	ca079be3          	bnez	a5,106c8 <printf_core+0x528>
    memset(pad, c, l > sizeof pad ? sizeof pad : l);
   10a16:	6666                	ld	a2,88(sp)
   10a18:	03000593          	li	a1,48
   10a1c:	8566                	mv	a0,s9
   10a1e:	e436                	sd	a3,8(sp)
   10a20:	268000ef          	jal	ra,10c88 <memset>
    for (; l >= sizeof pad; l -= sizeof pad)
   10a24:	66a2                	ld	a3,8(sp)
   10a26:	b961                	j	106be <printf_core+0x51e>
                        arg.i = -arg.i;
   10a28:	40f007b3          	neg	a5,a5
   10a2c:	80000537          	lui	a0,0x80000
        prefix = "-+   0X0x";
   10a30:	00001717          	auipc	a4,0x1
   10a34:	8b870713          	addi	a4,a4,-1864 # 112e8 <xdigits+0x10>
                        arg.i = -arg.i;
   10a38:	f0be                	sd	a5,96(sp)
   10a3a:	ffe54513          	xori	a0,a0,-2
                        pl = 1;
   10a3e:	4485                	li	s1,1
        prefix = "-+   0X0x";
   10a40:	e4ba                	sd	a4,72(sp)
   10a42:	b3f5                	j	1082e <printf_core+0x68e>
                z = a + strnlen(a, p < 0 ? INT_MAX : p);
   10a44:	800005b7          	lui	a1,0x80000
   10a48:	fff5c593          	not	a1,a1
   10a4c:	854a                	mv	a0,s2
   10a4e:	456000ef          	jal	ra,10ea4 <strnlen>
   10a52:	00a90733          	add	a4,s2,a0
                if (p < 0 && *z)
   10a56:	00074783          	lbu	a5,0(a4)
                z = a + strnlen(a, p < 0 ? INT_MAX : p);
   10a5a:	8d2a                	mv	s10,a0
                if (p < 0 && *z)
   10a5c:	ea0785e3          	beqz	a5,10906 <printf_core+0x766>
   10a60:	ba01                	j	10370 <printf_core+0x1d0>
    for (; i <= NL_ARGMAX && !nl_type[i]; i++)
   10a62:	00148793          	addi	a5,s1,1
   10a66:	4729                	li	a4,10
   10a68:	b4e782e3          	beq	a5,a4,105ac <printf_core+0x40c>
   10a6c:	7602                	ld	a2,32(sp)
   10a6e:	078a                	slli	a5,a5,0x2
   10a70:	97b2                	add	a5,a5,a2
   10a72:	4394                	lw	a3,0(a5)
   10a74:	8e069ee3          	bnez	a3,10370 <printf_core+0x1d0>
   10a78:	00248693          	addi	a3,s1,2
   10a7c:	b2e688e3          	beq	a3,a4,105ac <printf_core+0x40c>
   10a80:	43d4                	lw	a3,4(a5)
   10a82:	8e0697e3          	bnez	a3,10370 <printf_core+0x1d0>
   10a86:	00348693          	addi	a3,s1,3
   10a8a:	b2e681e3          	beq	a3,a4,105ac <printf_core+0x40c>
   10a8e:	4794                	lw	a3,8(a5)
   10a90:	8e0690e3          	bnez	a3,10370 <printf_core+0x1d0>
   10a94:	00448693          	addi	a3,s1,4
   10a98:	b0e68ae3          	beq	a3,a4,105ac <printf_core+0x40c>
   10a9c:	47d4                	lw	a3,12(a5)
   10a9e:	8c0699e3          	bnez	a3,10370 <printf_core+0x1d0>
   10aa2:	00548693          	addi	a3,s1,5
   10aa6:	b0e683e3          	beq	a3,a4,105ac <printf_core+0x40c>
   10aaa:	4b98                	lw	a4,16(a5)
   10aac:	8c0712e3          	bnez	a4,10370 <printf_core+0x1d0>
   10ab0:	00648713          	addi	a4,s1,6
   10ab4:	46a9                	li	a3,10
   10ab6:	aed70be3          	beq	a4,a3,105ac <printf_core+0x40c>
   10aba:	4bd8                	lw	a4,20(a5)
   10abc:	8a071ae3          	bnez	a4,10370 <printf_core+0x1d0>
   10ac0:	00748713          	addi	a4,s1,7
   10ac4:	aed704e3          	beq	a4,a3,105ac <printf_core+0x40c>
   10ac8:	4f9c                	lw	a5,24(a5)
   10aca:	8a0793e3          	bnez	a5,10370 <printf_core+0x1d0>
   10ace:	4785                	li	a5,1
   10ad0:	acf49ee3          	bne	s1,a5,105ac <printf_core+0x40c>
   10ad4:	525c                	lw	a5,36(a2)
   10ad6:	88079de3          	bnez	a5,10370 <printf_core+0x1d0>
    return 1;
   10ada:	4a05                	li	s4,1
   10adc:	b859                	j	10372 <printf_core+0x1d2>
   10ade:	80000537          	lui	a0,0x80000
                        prefix++;
   10ae2:	00001717          	auipc	a4,0x1
   10ae6:	80770713          	addi	a4,a4,-2041 # 112e9 <xdigits+0x11>
   10aea:	ffe54513          	xori	a0,a0,-2
                        pl = 1;
   10aee:	4485                	li	s1,1
                        prefix++;
   10af0:	e4ba                	sd	a4,72(sp)
   10af2:	bb25                	j	1082a <printf_core+0x68a>

0000000000010af4 <putchar>:
{
   10af4:	1101                	addi	sp,sp,-32
   10af6:	87aa                	mv	a5,a0
    return write(stdout, &byte, 1);
   10af8:	00f10593          	addi	a1,sp,15
   10afc:	4605                	li	a2,1
   10afe:	4501                	li	a0,0
{
   10b00:	ec06                	sd	ra,24(sp)
    char byte = c;
   10b02:	00f107a3          	sb	a5,15(sp)
    return write(stdout, &byte, 1);
   10b06:	4e0000ef          	jal	ra,10fe6 <write>
}
   10b0a:	60e2                	ld	ra,24(sp)
   10b0c:	2501                	sext.w	a0,a0
   10b0e:	6105                	addi	sp,sp,32
   10b10:	8082                	ret

0000000000010b12 <puts>:
{
   10b12:	1101                	addi	sp,sp,-32
   10b14:	e822                	sd	s0,16(sp)
   10b16:	ec06                	sd	ra,24(sp)
   10b18:	842a                	mv	s0,a0
    r = -(write(stdout, s, strlen(s)) < 0 || putchar('\n') < 0);
   10b1a:	29e000ef          	jal	ra,10db8 <strlen>
   10b1e:	862a                	mv	a2,a0
   10b20:	85a2                	mv	a1,s0
   10b22:	4501                	li	a0,0
   10b24:	4c2000ef          	jal	ra,10fe6 <write>
   10b28:	00055763          	bgez	a0,10b36 <puts+0x24>
}
   10b2c:	60e2                	ld	ra,24(sp)
   10b2e:	6442                	ld	s0,16(sp)
   10b30:	557d                	li	a0,-1
   10b32:	6105                	addi	sp,sp,32
   10b34:	8082                	ret
    return write(stdout, &byte, 1);
   10b36:	00f10593          	addi	a1,sp,15
    char byte = c;
   10b3a:	47a9                	li	a5,10
    return write(stdout, &byte, 1);
   10b3c:	4605                	li	a2,1
   10b3e:	4501                	li	a0,0
    char byte = c;
   10b40:	00f107a3          	sb	a5,15(sp)
    return write(stdout, &byte, 1);
   10b44:	4a2000ef          	jal	ra,10fe6 <write>
}
   10b48:	60e2                	ld	ra,24(sp)
   10b4a:	6442                	ld	s0,16(sp)
   10b4c:	41f5551b          	sraiw	a0,a0,0x1f
   10b50:	6105                	addi	sp,sp,32
   10b52:	8082                	ret

0000000000010b54 <vfprintf>:

int vfprintf(int f, const char* restrict fmt, va_list ap)
{
   10b54:	7151                	addi	sp,sp,-240
   10b56:	f1a2                	sd	s0,224(sp)
   10b58:	8832                	mv	a6,a2
   10b5a:	842a                	mv	s0,a0
    int nl_type[NL_ARGMAX + 1] = {0};
    union arg nl_arg[NL_ARGMAX + 1];
    int ret;
    /* the copy allows passing va_list* even if va_list is an array */
    va_copy(ap2, ap);
    if (printf_core(0, fmt, &ap2, nl_arg, nl_type) < 0) {
   10b5c:	0038                	addi	a4,sp,8
   10b5e:	1814                	addi	a3,sp,48
   10b60:	860a                	mv	a2,sp
   10b62:	4501                	li	a0,0
{
   10b64:	eda6                	sd	s1,216(sp)
   10b66:	f586                	sd	ra,232(sp)
   10b68:	84ae                	mv	s1,a1
    int nl_type[NL_ARGMAX + 1] = {0};
   10b6a:	e402                	sd	zero,8(sp)
   10b6c:	e802                	sd	zero,16(sp)
   10b6e:	ec02                	sd	zero,24(sp)
   10b70:	f002                	sd	zero,32(sp)
   10b72:	f402                	sd	zero,40(sp)
    va_copy(ap2, ap);
   10b74:	e042                	sd	a6,0(sp)
    if (printf_core(0, fmt, &ap2, nl_arg, nl_type) < 0) {
   10b76:	e2aff0ef          	jal	ra,101a0 <printf_core>
   10b7a:	00054e63          	bltz	a0,10b96 <vfprintf+0x42>
        va_end(ap2);
        return -1;
    }
    ret = printf_core(f, fmt, &ap2, nl_arg, nl_type);
   10b7e:	0038                	addi	a4,sp,8
   10b80:	1814                	addi	a3,sp,48
   10b82:	860a                	mv	a2,sp
   10b84:	85a6                	mv	a1,s1
   10b86:	8522                	mv	a0,s0
   10b88:	e18ff0ef          	jal	ra,101a0 <printf_core>
    va_end(ap2);
    return ret;
}
   10b8c:	70ae                	ld	ra,232(sp)
   10b8e:	740e                	ld	s0,224(sp)
   10b90:	64ee                	ld	s1,216(sp)
   10b92:	616d                	addi	sp,sp,240
   10b94:	8082                	ret
        return -1;
   10b96:	557d                	li	a0,-1
   10b98:	bfd5                	j	10b8c <vfprintf+0x38>

0000000000010b9a <printf>:

int printf(const char* restrict fmt, ...)
{
   10b9a:	711d                	addi	sp,sp,-96
    int ret;
    va_list ap;
    va_start(ap, fmt);
   10b9c:	02810313          	addi	t1,sp,40
{
   10ba0:	f42e                	sd	a1,40(sp)
   10ba2:	f832                	sd	a2,48(sp)
    ret = vfprintf(stdout, fmt, ap);
   10ba4:	85aa                	mv	a1,a0
   10ba6:	861a                	mv	a2,t1
   10ba8:	4501                	li	a0,0
{
   10baa:	ec06                	sd	ra,24(sp)
   10bac:	fc36                	sd	a3,56(sp)
   10bae:	e0ba                	sd	a4,64(sp)
   10bb0:	e4be                	sd	a5,72(sp)
   10bb2:	e8c2                	sd	a6,80(sp)
   10bb4:	ecc6                	sd	a7,88(sp)
    va_start(ap, fmt);
   10bb6:	e41a                	sd	t1,8(sp)
    ret = vfprintf(stdout, fmt, ap);
   10bb8:	f9dff0ef          	jal	ra,10b54 <vfprintf>
    va_end(ap);
    return ret;
   10bbc:	60e2                	ld	ra,24(sp)
   10bbe:	6125                	addi	sp,sp,96
   10bc0:	8082                	ret

0000000000010bc2 <isspace>:
#define HIGHS      (ONES * (UCHAR_MAX / 2 + 1))
#define HASZERO(x) (((x)-ONES) & ~(x) & HIGHS)

int isspace(int c)
{
    return c == ' ' || (unsigned)c - '\t' < 5;
   10bc2:	02000793          	li	a5,32
   10bc6:	00f50663          	beq	a0,a5,10bd2 <isspace+0x10>
   10bca:	355d                	addiw	a0,a0,-9
   10bcc:	00553513          	sltiu	a0,a0,5
   10bd0:	8082                	ret
   10bd2:	4505                	li	a0,1
}
   10bd4:	8082                	ret

0000000000010bd6 <isdigit>:

int isdigit(int c)
{
    return (unsigned)c - '0' < 10;
   10bd6:	fd05051b          	addiw	a0,a0,-48
}
   10bda:	00a53513          	sltiu	a0,a0,10
   10bde:	8082                	ret

0000000000010be0 <atoi>:
    return c == ' ' || (unsigned)c - '\t' < 5;
   10be0:	02000613          	li	a2,32
   10be4:	4591                	li	a1,4

int atoi(const char* s)
{
    int n = 0, neg = 0;
    while (isspace(*s))
   10be6:	00054703          	lbu	a4,0(a0) # ffffffff80000000 <__global_pointer$+0xffffffff7ffed500>
    return c == ' ' || (unsigned)c - '\t' < 5;
   10bea:	ff77069b          	addiw	a3,a4,-9
   10bee:	04c70d63          	beq	a4,a2,10c48 <atoi+0x68>
   10bf2:	0007079b          	sext.w	a5,a4
   10bf6:	04d5f963          	bgeu	a1,a3,10c48 <atoi+0x68>
        s++;
    switch (*s) {
   10bfa:	02b00693          	li	a3,43
   10bfe:	04d70a63          	beq	a4,a3,10c52 <atoi+0x72>
   10c02:	02d00693          	li	a3,45
   10c06:	06d70463          	beq	a4,a3,10c6e <atoi+0x8e>
        neg = 1;
    case '+':
        s++;
    }
    /* Compute n as a negative number to avoid overflow on INT_MIN */
    while (isdigit(*s))
   10c0a:	fd07859b          	addiw	a1,a5,-48
   10c0e:	4625                	li	a2,9
   10c10:	873e                	mv	a4,a5
   10c12:	86aa                	mv	a3,a0
    int n = 0, neg = 0;
   10c14:	4e01                	li	t3,0
    while (isdigit(*s))
   10c16:	04b66a63          	bltu	a2,a1,10c6a <atoi+0x8a>
    int n = 0, neg = 0;
   10c1a:	4501                	li	a0,0
    while (isdigit(*s))
   10c1c:	4825                	li	a6,9
   10c1e:	0016c603          	lbu	a2,1(a3) # ffffffffffff0001 <__global_pointer$+0xfffffffffffdd501>
        n = 10 * n - (*s++ - '0');
   10c22:	0025179b          	slliw	a5,a0,0x2
   10c26:	9d3d                	addw	a0,a0,a5
   10c28:	fd07031b          	addiw	t1,a4,-48
   10c2c:	0015189b          	slliw	a7,a0,0x1
    while (isdigit(*s))
   10c30:	fd06059b          	addiw	a1,a2,-48
        n = 10 * n - (*s++ - '0');
   10c34:	0685                	addi	a3,a3,1
   10c36:	4068853b          	subw	a0,a7,t1
    while (isdigit(*s))
   10c3a:	0006071b          	sext.w	a4,a2
   10c3e:	feb870e3          	bgeu	a6,a1,10c1e <atoi+0x3e>
    return neg ? n : -n;
   10c42:	000e0563          	beqz	t3,10c4c <atoi+0x6c>
}
   10c46:	8082                	ret
        s++;
   10c48:	0505                	addi	a0,a0,1
   10c4a:	bf71                	j	10be6 <atoi+0x6>
   10c4c:	4113053b          	subw	a0,t1,a7
   10c50:	8082                	ret
    while (isdigit(*s))
   10c52:	00154783          	lbu	a5,1(a0)
   10c56:	4625                	li	a2,9
        s++;
   10c58:	00150693          	addi	a3,a0,1
    while (isdigit(*s))
   10c5c:	fd07859b          	addiw	a1,a5,-48
   10c60:	0007871b          	sext.w	a4,a5
    int n = 0, neg = 0;
   10c64:	4e01                	li	t3,0
    while (isdigit(*s))
   10c66:	fab67ae3          	bgeu	a2,a1,10c1a <atoi+0x3a>
   10c6a:	4501                	li	a0,0
}
   10c6c:	8082                	ret
    while (isdigit(*s))
   10c6e:	00154783          	lbu	a5,1(a0)
   10c72:	4625                	li	a2,9
        s++;
   10c74:	00150693          	addi	a3,a0,1
    while (isdigit(*s))
   10c78:	fd07859b          	addiw	a1,a5,-48
   10c7c:	0007871b          	sext.w	a4,a5
   10c80:	feb665e3          	bltu	a2,a1,10c6a <atoi+0x8a>
        neg = 1;
   10c84:	4e05                	li	t3,1
   10c86:	bf51                	j	10c1a <atoi+0x3a>

0000000000010c88 <memset>:

    /* Fill head and tail with minimal branching. Each
     * conditional ensures that all the subsequently used
     * offsets are well-defined and in the dest region. */

    if (!n)
   10c88:	c679                	beqz	a2,10d56 <memset+0xce>
        return dest;
    s[0] = c;
   10c8a:	0ff5f793          	andi	a5,a1,255
   10c8e:	00f50023          	sb	a5,0(a0)
    s[n - 1] = c;
   10c92:	00c50733          	add	a4,a0,a2
   10c96:	fef70fa3          	sb	a5,-1(a4)
    if (n <= 2)
   10c9a:	4689                	li	a3,2
   10c9c:	0ac6fd63          	bgeu	a3,a2,10d56 <memset+0xce>
        return dest;
    s[1] = c;
   10ca0:	00f500a3          	sb	a5,1(a0)
    s[2] = c;
   10ca4:	00f50123          	sb	a5,2(a0)
    s[n - 2] = c;
   10ca8:	fef70f23          	sb	a5,-2(a4)
    s[n - 3] = c;
   10cac:	fef70ea3          	sb	a5,-3(a4)
    if (n <= 6)
   10cb0:	4699                	li	a3,6
   10cb2:	0ac6f263          	bgeu	a3,a2,10d56 <memset+0xce>
        return dest;
    s[3] = c;
   10cb6:	00f501a3          	sb	a5,3(a0)
    s[n - 4] = c;
   10cba:	fef70e23          	sb	a5,-4(a4)
    if (n <= 8)
   10cbe:	46a1                	li	a3,8
   10cc0:	08c6fb63          	bgeu	a3,a2,10d56 <memset+0xce>

    /* Pure C fallback with no aliasing violations. */
    typedef uint32_t __attribute__((__may_alias__)) u32;
    typedef uint64_t __attribute__((__may_alias__)) u64;

    u32 c32 = ((u32)-1) / 255 * (unsigned char)c;
   10cc4:	0ff5f593          	andi	a1,a1,255
   10cc8:	0085979b          	slliw	a5,a1,0x8
    k = -(uintptr_t)s & 3;
   10ccc:	40a00733          	neg	a4,a0
   10cd0:	8b0d                	andi	a4,a4,3
    u32 c32 = ((u32)-1) / 255 * (unsigned char)c;
   10cd2:	9dbd                	addw	a1,a1,a5
    n -= k;
   10cd4:	8e19                	sub	a2,a2,a4
    u32 c32 = ((u32)-1) / 255 * (unsigned char)c;
   10cd6:	0105979b          	slliw	a5,a1,0x10
   10cda:	9dbd                	addw	a1,a1,a5
    s += k;
   10cdc:	972a                	add	a4,a4,a0
    n &= -4;
   10cde:	9a71                	andi	a2,a2,-4
     * an 8-byte bounary, fill head/tail up to 28 bytes each.
     * As in the initial byte-based head/tail fill, each
     * conditional below ensures that the subsequent offsets
     * are valid (e.g. !(n<=24) implies n>=28). */

    *(u32*)(s + 0) = c32;
   10ce0:	c30c                	sw	a1,0(a4)
    *(u32*)(s + n - 4) = c32;
   10ce2:	00c707b3          	add	a5,a4,a2
   10ce6:	feb7ae23          	sw	a1,-4(a5) # fffc <main-0xb4>
    if (n <= 8)
   10cea:	06c6f663          	bgeu	a3,a2,10d56 <memset+0xce>
        return dest;
    *(u32*)(s + 4) = c32;
   10cee:	c34c                	sw	a1,4(a4)
    *(u32*)(s + 8) = c32;
   10cf0:	c70c                	sw	a1,8(a4)
    *(u32*)(s + n - 12) = c32;
   10cf2:	feb7aa23          	sw	a1,-12(a5)
    *(u32*)(s + n - 8) = c32;
   10cf6:	feb7ac23          	sw	a1,-8(a5)
    if (n <= 24)
   10cfa:	46e1                	li	a3,24
   10cfc:	04c6fd63          	bgeu	a3,a2,10d56 <memset+0xce>

    /* Align to a multiple of 8 so we can fill 64 bits at a time,
     * and avoid writing the same bytes twice as much as is
     * practical without introducing additional branching. */

    k = 24 + ((uintptr_t)s & 4);
   10d00:	00477813          	andi	a6,a4,4
    *(u32*)(s + 12) = c32;
   10d04:	c74c                	sw	a1,12(a4)
    *(u32*)(s + 16) = c32;
   10d06:	cb0c                	sw	a1,16(a4)
    *(u32*)(s + 20) = c32;
   10d08:	cb4c                	sw	a1,20(a4)
    *(u32*)(s + 24) = c32;
   10d0a:	cf0c                	sw	a1,24(a4)
    k = 24 + ((uintptr_t)s & 4);
   10d0c:	0861                	addi	a6,a6,24

    /* If this loop is reached, 28 tail bytes have already been
     * filled, so any remainder when n drops below 32 can be
     * safely ignored. */

    u64 c64 = c32 | ((u64)c32 << 32);
   10d0e:	02059893          	slli	a7,a1,0x20
   10d12:	0208d893          	srli	a7,a7,0x20
   10d16:	02059693          	slli	a3,a1,0x20
    *(u32*)(s + n - 28) = c32;
   10d1a:	feb7a223          	sw	a1,-28(a5)
    *(u32*)(s + n - 24) = c32;
   10d1e:	feb7a423          	sw	a1,-24(a5)
    *(u32*)(s + n - 20) = c32;
   10d22:	feb7a623          	sw	a1,-20(a5)
    *(u32*)(s + n - 16) = c32;
   10d26:	feb7a823          	sw	a1,-16(a5)
    n -= k;
   10d2a:	41060633          	sub	a2,a2,a6
    for (; n >= 32; n -= 32, s += 32) {
   10d2e:	47fd                	li	a5,31
    s += k;
   10d30:	9742                	add	a4,a4,a6
    u64 c64 = c32 | ((u64)c32 << 32);
   10d32:	0116e6b3          	or	a3,a3,a7
    for (; n >= 32; n -= 32, s += 32) {
   10d36:	02c7f063          	bgeu	a5,a2,10d56 <memset+0xce>
   10d3a:	1601                	addi	a2,a2,-32
   10d3c:	fe067793          	andi	a5,a2,-32
   10d40:	02078793          	addi	a5,a5,32
   10d44:	97ba                	add	a5,a5,a4
        *(u64*)(s + 0) = c64;
   10d46:	e314                	sd	a3,0(a4)
        *(u64*)(s + 8) = c64;
   10d48:	e714                	sd	a3,8(a4)
        *(u64*)(s + 16) = c64;
   10d4a:	eb14                	sd	a3,16(a4)
        *(u64*)(s + 24) = c64;
   10d4c:	ef14                	sd	a3,24(a4)
    for (; n >= 32; n -= 32, s += 32) {
   10d4e:	02070713          	addi	a4,a4,32
   10d52:	fef71ae3          	bne	a4,a5,10d46 <memset+0xbe>
    }

    return dest;
}
   10d56:	8082                	ret

0000000000010d58 <strcmp>:

int strcmp(const char* l, const char* r)
{
    for (; *l == *r && *l; l++, r++)
   10d58:	00054783          	lbu	a5,0(a0)
   10d5c:	0005c703          	lbu	a4,0(a1) # ffffffff80000000 <__global_pointer$+0xffffffff7ffed500>
   10d60:	00e79863          	bne	a5,a4,10d70 <strcmp+0x18>
   10d64:	0505                	addi	a0,a0,1
   10d66:	0585                	addi	a1,a1,1
   10d68:	fbe5                	bnez	a5,10d58 <strcmp>
   10d6a:	4501                	li	a0,0
        ;
    return *(unsigned char*)l - *(unsigned char*)r;
}
   10d6c:	9d19                	subw	a0,a0,a4
   10d6e:	8082                	ret
   10d70:	0007851b          	sext.w	a0,a5
   10d74:	bfe5                	j	10d6c <strcmp+0x14>

0000000000010d76 <strncmp>:

int strncmp(const char* _l, const char* _r, size_t n)
{
    const unsigned char *l = (void*)_l, *r = (void*)_r;
    if (!n--)
   10d76:	ce05                	beqz	a2,10dae <strncmp+0x38>
        return 0;
    for (; *l && *r && n && *l == *r; l++, r++, n--)
   10d78:	00054703          	lbu	a4,0(a0)
   10d7c:	0005c783          	lbu	a5,0(a1)
   10d80:	cb0d                	beqz	a4,10db2 <strncmp+0x3c>
    if (!n--)
   10d82:	167d                	addi	a2,a2,-1
   10d84:	00c506b3          	add	a3,a0,a2
   10d88:	a819                	j	10d9e <strncmp+0x28>
    for (; *l && *r && n && *l == *r; l++, r++, n--)
   10d8a:	00a68e63          	beq	a3,a0,10da6 <strncmp+0x30>
   10d8e:	0505                	addi	a0,a0,1
   10d90:	00e79b63          	bne	a5,a4,10da6 <strncmp+0x30>
   10d94:	00054703          	lbu	a4,0(a0)
   10d98:	0005c783          	lbu	a5,0(a1)
   10d9c:	cb19                	beqz	a4,10db2 <strncmp+0x3c>
   10d9e:	0005c783          	lbu	a5,0(a1)
   10da2:	0585                	addi	a1,a1,1
   10da4:	f3fd                	bnez	a5,10d8a <strncmp+0x14>
        ;
    return *l - *r;
   10da6:	0007051b          	sext.w	a0,a4
   10daa:	9d1d                	subw	a0,a0,a5
   10dac:	8082                	ret
        return 0;
   10dae:	4501                	li	a0,0
}
   10db0:	8082                	ret
   10db2:	4501                	li	a0,0
    return *l - *r;
   10db4:	9d1d                	subw	a0,a0,a5
   10db6:	8082                	ret

0000000000010db8 <strlen>:
size_t strlen(const char* s)
{
    const char* a = s;
    typedef size_t __attribute__((__may_alias__)) word;
    const word* w;
    for (; (uintptr_t)s % SS; s++)
   10db8:	00757793          	andi	a5,a0,7
   10dbc:	cf89                	beqz	a5,10dd6 <strlen+0x1e>
   10dbe:	87aa                	mv	a5,a0
   10dc0:	a029                	j	10dca <strlen+0x12>
   10dc2:	0785                	addi	a5,a5,1
   10dc4:	0077f713          	andi	a4,a5,7
   10dc8:	cb01                	beqz	a4,10dd8 <strlen+0x20>
        if (!*s)
   10dca:	0007c703          	lbu	a4,0(a5)
   10dce:	fb75                	bnez	a4,10dc2 <strlen+0xa>
    for (w = (const void*)s; !HASZERO(*w); w++)
        ;
    s = (const void*)w;
    for (; *s; s++)
        ;
    return s - a;
   10dd0:	40a78533          	sub	a0,a5,a0
}
   10dd4:	8082                	ret
    for (; (uintptr_t)s % SS; s++)
   10dd6:	87aa                	mv	a5,a0
    for (w = (const void*)s; !HASZERO(*w); w++)
   10dd8:	6394                	ld	a3,0(a5)
   10dda:	00001597          	auipc	a1,0x1
   10dde:	5265b583          	ld	a1,1318(a1) # 12300 <__DATA_BEGIN__>
   10de2:	00001617          	auipc	a2,0x1
   10de6:	52663603          	ld	a2,1318(a2) # 12308 <__DATA_BEGIN__+0x8>
   10dea:	a019                	j	10df0 <strlen+0x38>
   10dec:	6794                	ld	a3,8(a5)
   10dee:	07a1                	addi	a5,a5,8
   10df0:	00b68733          	add	a4,a3,a1
   10df4:	fff6c693          	not	a3,a3
   10df8:	8f75                	and	a4,a4,a3
   10dfa:	8f71                	and	a4,a4,a2
   10dfc:	db65                	beqz	a4,10dec <strlen+0x34>
    for (; *s; s++)
   10dfe:	0007c703          	lbu	a4,0(a5)
   10e02:	d779                	beqz	a4,10dd0 <strlen+0x18>
   10e04:	0017c703          	lbu	a4,1(a5)
   10e08:	0785                	addi	a5,a5,1
   10e0a:	d379                	beqz	a4,10dd0 <strlen+0x18>
   10e0c:	0017c703          	lbu	a4,1(a5)
   10e10:	0785                	addi	a5,a5,1
   10e12:	fb6d                	bnez	a4,10e04 <strlen+0x4c>
   10e14:	bf75                	j	10dd0 <strlen+0x18>

0000000000010e16 <memchr>:

void* memchr(const void* src, int c, size_t n)
{
    const unsigned char* s = src;
    c = (unsigned char)c;
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
   10e16:	00757713          	andi	a4,a0,7
{
   10e1a:	87aa                	mv	a5,a0
    c = (unsigned char)c;
   10e1c:	0ff5f593          	andi	a1,a1,255
    for (; ((uintptr_t)s & ALIGN) && n && *s != c; s++, n--)
   10e20:	cb19                	beqz	a4,10e36 <memchr+0x20>
   10e22:	ce25                	beqz	a2,10e9a <memchr+0x84>
   10e24:	0007c703          	lbu	a4,0(a5)
   10e28:	04b70e63          	beq	a4,a1,10e84 <memchr+0x6e>
   10e2c:	0785                	addi	a5,a5,1
   10e2e:	0077f713          	andi	a4,a5,7
   10e32:	167d                	addi	a2,a2,-1
   10e34:	f77d                	bnez	a4,10e22 <memchr+0xc>
            ;
        s = (const void*)w;
    }
    for (; n && *s != c; s++, n--)
        ;
    return n ? (void*)s : 0;
   10e36:	4501                	li	a0,0
    if (n && *s != c) {
   10e38:	c235                	beqz	a2,10e9c <memchr+0x86>
   10e3a:	0007c703          	lbu	a4,0(a5)
   10e3e:	04b70363          	beq	a4,a1,10e84 <memchr+0x6e>
        size_t k = ONES * c;
   10e42:	00001517          	auipc	a0,0x1
   10e46:	4ce53503          	ld	a0,1230(a0) # 12310 <__DATA_BEGIN__+0x10>
        for (w = (const void*)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
   10e4a:	471d                	li	a4,7
        size_t k = ONES * c;
   10e4c:	02a58533          	mul	a0,a1,a0
        for (w = (const void*)s; n >= SS && !HASZERO(*w ^ k); w++, n -= SS)
   10e50:	02c77a63          	bgeu	a4,a2,10e84 <memchr+0x6e>
   10e54:	00001897          	auipc	a7,0x1
   10e58:	4ac8b883          	ld	a7,1196(a7) # 12300 <__DATA_BEGIN__>
   10e5c:	00001817          	auipc	a6,0x1
   10e60:	4ac83803          	ld	a6,1196(a6) # 12308 <__DATA_BEGIN__+0x8>
   10e64:	431d                	li	t1,7
   10e66:	a029                	j	10e70 <memchr+0x5a>
   10e68:	1661                	addi	a2,a2,-8
   10e6a:	07a1                	addi	a5,a5,8
   10e6c:	02c37963          	bgeu	t1,a2,10e9e <memchr+0x88>
   10e70:	6398                	ld	a4,0(a5)
   10e72:	8f29                	xor	a4,a4,a0
   10e74:	011706b3          	add	a3,a4,a7
   10e78:	fff74713          	not	a4,a4
   10e7c:	8f75                	and	a4,a4,a3
   10e7e:	01077733          	and	a4,a4,a6
   10e82:	d37d                	beqz	a4,10e68 <memchr+0x52>
   10e84:	853e                	mv	a0,a5
   10e86:	97b2                	add	a5,a5,a2
   10e88:	a021                	j	10e90 <memchr+0x7a>
    for (; n && *s != c; s++, n--)
   10e8a:	0505                	addi	a0,a0,1
   10e8c:	00f50763          	beq	a0,a5,10e9a <memchr+0x84>
   10e90:	00054703          	lbu	a4,0(a0)
   10e94:	feb71be3          	bne	a4,a1,10e8a <memchr+0x74>
   10e98:	8082                	ret
    return n ? (void*)s : 0;
   10e9a:	4501                	li	a0,0
}
   10e9c:	8082                	ret
    return n ? (void*)s : 0;
   10e9e:	4501                	li	a0,0
    for (; n && *s != c; s++, n--)
   10ea0:	f275                	bnez	a2,10e84 <memchr+0x6e>
}
   10ea2:	8082                	ret

0000000000010ea4 <strnlen>:

size_t strnlen(const char* s, size_t n)
{
   10ea4:	1101                	addi	sp,sp,-32
   10ea6:	e822                	sd	s0,16(sp)
    const char* p = memchr(s, 0, n);
   10ea8:	862e                	mv	a2,a1
{
   10eaa:	842e                	mv	s0,a1
    const char* p = memchr(s, 0, n);
   10eac:	4581                	li	a1,0
{
   10eae:	e426                	sd	s1,8(sp)
   10eb0:	ec06                	sd	ra,24(sp)
   10eb2:	84aa                	mv	s1,a0
    const char* p = memchr(s, 0, n);
   10eb4:	f63ff0ef          	jal	ra,10e16 <memchr>
    return p ? p - s : n;
   10eb8:	c519                	beqz	a0,10ec6 <strnlen+0x22>
}
   10eba:	60e2                	ld	ra,24(sp)
   10ebc:	6442                	ld	s0,16(sp)
    return p ? p - s : n;
   10ebe:	8d05                	sub	a0,a0,s1
}
   10ec0:	64a2                	ld	s1,8(sp)
   10ec2:	6105                	addi	sp,sp,32
   10ec4:	8082                	ret
   10ec6:	60e2                	ld	ra,24(sp)
    return p ? p - s : n;
   10ec8:	8522                	mv	a0,s0
}
   10eca:	6442                	ld	s0,16(sp)
   10ecc:	64a2                	ld	s1,8(sp)
   10ece:	6105                	addi	sp,sp,32
   10ed0:	8082                	ret

0000000000010ed2 <stpcpy>:
char* stpcpy(char* restrict d, const char* restrict s)
{
    typedef size_t __attribute__((__may_alias__)) word;
    word* wd;
    const word* ws;
    if ((uintptr_t)s % SS == (uintptr_t)d % SS) {
   10ed2:	00b547b3          	xor	a5,a0,a1
   10ed6:	8b9d                	andi	a5,a5,7
   10ed8:	eb95                	bnez	a5,10f0c <stpcpy+0x3a>
        for (; (uintptr_t)s % SS; s++, d++)
   10eda:	0075f793          	andi	a5,a1,7
   10ede:	e7b1                	bnez	a5,10f2a <stpcpy+0x58>
            if (!(*d = *s))
                return d;
        wd = (void*)d;
        ws = (const void*)s;
        for (; !HASZERO(*ws); *wd++ = *ws++)
   10ee0:	6198                	ld	a4,0(a1)
   10ee2:	00001617          	auipc	a2,0x1
   10ee6:	41e63603          	ld	a2,1054(a2) # 12300 <__DATA_BEGIN__>
   10eea:	00001817          	auipc	a6,0x1
   10eee:	41e83803          	ld	a6,1054(a6) # 12308 <__DATA_BEGIN__+0x8>
   10ef2:	a029                	j	10efc <stpcpy+0x2a>
   10ef4:	05a1                	addi	a1,a1,8
   10ef6:	e118                	sd	a4,0(a0)
   10ef8:	6198                	ld	a4,0(a1)
   10efa:	0521                	addi	a0,a0,8
   10efc:	00c707b3          	add	a5,a4,a2
   10f00:	fff74693          	not	a3,a4
   10f04:	8ff5                	and	a5,a5,a3
   10f06:	0107f7b3          	and	a5,a5,a6
   10f0a:	d7ed                	beqz	a5,10ef4 <stpcpy+0x22>
            ;
        d = (void*)wd;
        s = (const void*)ws;
    }
    for (; (*d = *s); s++, d++)
   10f0c:	0005c783          	lbu	a5,0(a1)
   10f10:	00f50023          	sb	a5,0(a0)
   10f14:	c785                	beqz	a5,10f3c <stpcpy+0x6a>
   10f16:	0015c783          	lbu	a5,1(a1)
   10f1a:	0505                	addi	a0,a0,1
   10f1c:	0585                	addi	a1,a1,1
   10f1e:	00f50023          	sb	a5,0(a0)
   10f22:	fbf5                	bnez	a5,10f16 <stpcpy+0x44>
        ;
    return d;
}
   10f24:	8082                	ret
        for (; (uintptr_t)s % SS; s++, d++)
   10f26:	0505                	addi	a0,a0,1
   10f28:	df45                	beqz	a4,10ee0 <stpcpy+0xe>
            if (!(*d = *s))
   10f2a:	0005c783          	lbu	a5,0(a1)
        for (; (uintptr_t)s % SS; s++, d++)
   10f2e:	0585                	addi	a1,a1,1
   10f30:	0075f713          	andi	a4,a1,7
            if (!(*d = *s))
   10f34:	00f50023          	sb	a5,0(a0)
   10f38:	f7fd                	bnez	a5,10f26 <stpcpy+0x54>
}
   10f3a:	8082                	ret
   10f3c:	8082                	ret

0000000000010f3e <stpncpy>:

char* stpncpy(char* restrict d, const char* restrict s, size_t n)
{
   10f3e:	1141                	addi	sp,sp,-16
    typedef size_t __attribute__((__may_alias__)) word;
    word* wd;
    const word* ws;
    if (((uintptr_t)s & ALIGN) == ((uintptr_t)d & ALIGN)) {
   10f40:	00b547b3          	xor	a5,a0,a1
{
   10f44:	e022                	sd	s0,0(sp)
   10f46:	e406                	sd	ra,8(sp)
    if (((uintptr_t)s & ALIGN) == ((uintptr_t)d & ALIGN)) {
   10f48:	8b9d                	andi	a5,a5,7
{
   10f4a:	842a                	mv	s0,a0
    if (((uintptr_t)s & ALIGN) == ((uintptr_t)d & ALIGN)) {
   10f4c:	efb1                	bnez	a5,10fa8 <stpncpy+0x6a>
        for (; ((uintptr_t)s & ALIGN) && n && (*d = *s); n--, s++, d++)
   10f4e:	0075f793          	andi	a5,a1,7
   10f52:	cf89                	beqz	a5,10f6c <stpncpy+0x2e>
   10f54:	c625                	beqz	a2,10fbc <stpncpy+0x7e>
   10f56:	0005c783          	lbu	a5,0(a1)
   10f5a:	0585                	addi	a1,a1,1
   10f5c:	0075f713          	andi	a4,a1,7
   10f60:	00f40023          	sb	a5,0(s0)
   10f64:	cfa1                	beqz	a5,10fbc <stpncpy+0x7e>
   10f66:	167d                	addi	a2,a2,-1
   10f68:	0405                	addi	s0,s0,1
   10f6a:	f76d                	bnez	a4,10f54 <stpncpy+0x16>
            ;
        if (!n || !*s)
   10f6c:	ca21                	beqz	a2,10fbc <stpncpy+0x7e>
   10f6e:	0005c783          	lbu	a5,0(a1)
   10f72:	c7a9                	beqz	a5,10fbc <stpncpy+0x7e>
            goto tail;
        wd = (void*)d;
        ws = (const void*)s;
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
   10f74:	479d                	li	a5,7
   10f76:	02c7fa63          	bgeu	a5,a2,10faa <stpncpy+0x6c>
   10f7a:	00001817          	auipc	a6,0x1
   10f7e:	38683803          	ld	a6,902(a6) # 12300 <__DATA_BEGIN__>
   10f82:	00001517          	auipc	a0,0x1
   10f86:	38653503          	ld	a0,902(a0) # 12308 <__DATA_BEGIN__+0x8>
   10f8a:	489d                	li	a7,7
   10f8c:	6198                	ld	a4,0(a1)
   10f8e:	010707b3          	add	a5,a4,a6
   10f92:	fff74693          	not	a3,a4
   10f96:	8ff5                	and	a5,a5,a3
   10f98:	8fe9                	and	a5,a5,a0
   10f9a:	eb81                	bnez	a5,10faa <stpncpy+0x6c>
            *wd = *ws;
   10f9c:	e018                	sd	a4,0(s0)
        for (; n >= sizeof(size_t) && !HASZERO(*ws); n -= sizeof(size_t), ws++, wd++)
   10f9e:	1661                	addi	a2,a2,-8
   10fa0:	05a1                	addi	a1,a1,8
   10fa2:	0421                	addi	s0,s0,8
   10fa4:	fec8e4e3          	bltu	a7,a2,10f8c <stpncpy+0x4e>
        d = (void*)wd;
        s = (const void*)ws;
    }
    for (; n && (*d = *s); n--, s++, d++)
   10fa8:	ca11                	beqz	a2,10fbc <stpncpy+0x7e>
   10faa:	0005c783          	lbu	a5,0(a1)
   10fae:	0585                	addi	a1,a1,1
   10fb0:	00f40023          	sb	a5,0(s0)
   10fb4:	c781                	beqz	a5,10fbc <stpncpy+0x7e>
   10fb6:	167d                	addi	a2,a2,-1
   10fb8:	0405                	addi	s0,s0,1
   10fba:	fa65                	bnez	a2,10faa <stpncpy+0x6c>
        ;
tail:
    memset(d, 0, n);
   10fbc:	8522                	mv	a0,s0
   10fbe:	4581                	li	a1,0
   10fc0:	cc9ff0ef          	jal	ra,10c88 <memset>
    return d;
   10fc4:	60a2                	ld	ra,8(sp)
   10fc6:	8522                	mv	a0,s0
   10fc8:	6402                	ld	s0,0(sp)
   10fca:	0141                	addi	sp,sp,16
   10fcc:	8082                	ret

0000000000010fce <open>:
    __asm_syscall("r"(a7), "0"(a0), "r"(a1))
}

static inline long __syscall3(long n, long a, long b, long c)
{
    register long a7 __asm__("a7") = n;
   10fce:	03800893          	li	a7,56
    register long a0 __asm__("a0") = a;
    register long a1 __asm__("a1") = b;
    register long a2 __asm__("a2") = c;
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
   10fd2:	00000073          	ecall

#include "syscall.h"

int open(const char* path, int flags, int mode) {
    return syscall(SYS_openat, path, flags, mode);
}
   10fd6:	2501                	sext.w	a0,a0
   10fd8:	8082                	ret

0000000000010fda <close>:
    register long a7 __asm__("a7") = n;
   10fda:	03900893          	li	a7,57
    __asm_syscall("r"(a7), "0"(a0))
   10fde:	00000073          	ecall

int close(int fd) {
    return syscall(SYS_close, fd);
}
   10fe2:	2501                	sext.w	a0,a0
   10fe4:	8082                	ret

0000000000010fe6 <write>:
    register long a7 __asm__("a7") = n;
   10fe6:	04000893          	li	a7,64
    __asm_syscall("r"(a7), "0"(a0), "r"(a1), "r"(a2))
   10fea:	00000073          	ecall

ssize_t write(int fd, const void* buf, size_t len)
{
    return syscall(SYS_write, fd, buf, len);
}
   10fee:	8082                	ret

0000000000010ff0 <getpid>:
    register long a7 __asm__("a7") = n;
   10ff0:	0ac00893          	li	a7,172
    __asm_syscall("r"(a7))
   10ff4:	00000073          	ecall

int getpid(void)
{
    return syscall(SYS_getpid);
}
   10ff8:	2501                	sext.w	a0,a0
   10ffa:	8082                	ret

0000000000010ffc <sched_yield>:
    register long a7 __asm__("a7") = n;
   10ffc:	07c00893          	li	a7,124
    __asm_syscall("r"(a7))
   11000:	00000073          	ecall

int sched_yield(void)
{
    return syscall(SYS_sched_yield);
}
   11004:	2501                	sext.w	a0,a0
   11006:	8082                	ret

0000000000011008 <exit>:
    register long a7 __asm__("a7") = n;
   11008:	05d00893          	li	a7,93
    __asm_syscall("r"(a7), "0"(a0))
   1100c:	00000073          	ecall

void exit(int code)
{
    syscall(SYS_exit, code);
   11010:	8082                	ret
