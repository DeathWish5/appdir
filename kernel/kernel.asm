
./kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080020000 <_entry>:
    80020000:	00008117          	auipc	sp,0x8
    80020004:	00010113          	mv	sp,sp
    80020008:	321000ef          	jal	ra,80020b28 <main>

000000008002000c <swtch>:
    8002000c:	00153023          	sd	ra,0(a0)
    80020010:	00253423          	sd	sp,8(a0)
    80020014:	e900                	sd	s0,16(a0)
    80020016:	ed04                	sd	s1,24(a0)
    80020018:	03253023          	sd	s2,32(a0)
    8002001c:	03353423          	sd	s3,40(a0)
    80020020:	03453823          	sd	s4,48(a0)
    80020024:	03553c23          	sd	s5,56(a0)
    80020028:	05653023          	sd	s6,64(a0)
    8002002c:	05753423          	sd	s7,72(a0)
    80020030:	05853823          	sd	s8,80(a0)
    80020034:	05953c23          	sd	s9,88(a0)
    80020038:	07a53023          	sd	s10,96(a0)
    8002003c:	07b53423          	sd	s11,104(a0)
    80020040:	0005b083          	ld	ra,0(a1)
    80020044:	0085b103          	ld	sp,8(a1)
    80020048:	6980                	ld	s0,16(a1)
    8002004a:	6d84                	ld	s1,24(a1)
    8002004c:	0205b903          	ld	s2,32(a1)
    80020050:	0285b983          	ld	s3,40(a1)
    80020054:	0305ba03          	ld	s4,48(a1)
    80020058:	0385ba83          	ld	s5,56(a1)
    8002005c:	0405bb03          	ld	s6,64(a1)
    80020060:	0485bb83          	ld	s7,72(a1)
    80020064:	0505bc03          	ld	s8,80(a1)
    80020068:	0585bc83          	ld	s9,88(a1)
    8002006c:	0605bd03          	ld	s10,96(a1)
    80020070:	0685bd83          	ld	s11,104(a1)
    80020074:	8082                	ret
	...

0000000080020080 <trampoline>:
    80020080:	14051573          	csrrw	a0,sscratch,a0
    80020084:	02153423          	sd	ra,40(a0)
    80020088:	02253823          	sd	sp,48(a0)
    8002008c:	02353c23          	sd	gp,56(a0)
    80020090:	04453023          	sd	tp,64(a0)
    80020094:	04553423          	sd	t0,72(a0)
    80020098:	04653823          	sd	t1,80(a0)
    8002009c:	04753c23          	sd	t2,88(a0)
    800200a0:	f120                	sd	s0,96(a0)
    800200a2:	f524                	sd	s1,104(a0)
    800200a4:	fd2c                	sd	a1,120(a0)
    800200a6:	e150                	sd	a2,128(a0)
    800200a8:	e554                	sd	a3,136(a0)
    800200aa:	e958                	sd	a4,144(a0)
    800200ac:	ed5c                	sd	a5,152(a0)
    800200ae:	0b053023          	sd	a6,160(a0)
    800200b2:	0b153423          	sd	a7,168(a0)
    800200b6:	0b253823          	sd	s2,176(a0)
    800200ba:	0b353c23          	sd	s3,184(a0)
    800200be:	0d453023          	sd	s4,192(a0)
    800200c2:	0d553423          	sd	s5,200(a0)
    800200c6:	0d653823          	sd	s6,208(a0)
    800200ca:	0d753c23          	sd	s7,216(a0)
    800200ce:	0f853023          	sd	s8,224(a0)
    800200d2:	0f953423          	sd	s9,232(a0)
    800200d6:	0fa53823          	sd	s10,240(a0)
    800200da:	0fb53c23          	sd	s11,248(a0)
    800200de:	11c53023          	sd	t3,256(a0)
    800200e2:	11d53423          	sd	t4,264(a0)
    800200e6:	11e53823          	sd	t5,272(a0)
    800200ea:	11f53c23          	sd	t6,280(a0)
    800200ee:	140022f3          	csrr	t0,sscratch
    800200f2:	06553823          	sd	t0,112(a0)
    800200f6:	14102373          	csrr	t1,sepc
    800200fa:	00653c23          	sd	t1,24(a0)
    800200fe:	00853103          	ld	sp,8(a0)
    80020102:	02053203          	ld	tp,32(a0)
    80020106:	00053303          	ld	t1,0(a0)
    8002010a:	01053283          	ld	t0,16(a0)
    8002010e:	8282                	jr	t0

0000000080020110 <userret>:
    80020110:	18059073          	csrw	satp,a1
    80020114:	12000073          	sfence.vma
    80020118:	07053283          	ld	t0,112(a0)
    8002011c:	14029073          	csrw	sscratch,t0
    80020120:	02853083          	ld	ra,40(a0)
    80020124:	03053103          	ld	sp,48(a0)
    80020128:	03853183          	ld	gp,56(a0)
    8002012c:	04053203          	ld	tp,64(a0)
    80020130:	04853283          	ld	t0,72(a0)
    80020134:	05053303          	ld	t1,80(a0)
    80020138:	05853383          	ld	t2,88(a0)
    8002013c:	7120                	ld	s0,96(a0)
    8002013e:	7524                	ld	s1,104(a0)
    80020140:	7d2c                	ld	a1,120(a0)
    80020142:	6150                	ld	a2,128(a0)
    80020144:	6554                	ld	a3,136(a0)
    80020146:	6958                	ld	a4,144(a0)
    80020148:	6d5c                	ld	a5,152(a0)
    8002014a:	0a053803          	ld	a6,160(a0)
    8002014e:	0a853883          	ld	a7,168(a0)
    80020152:	0b053903          	ld	s2,176(a0)
    80020156:	0b853983          	ld	s3,184(a0)
    8002015a:	0c053a03          	ld	s4,192(a0)
    8002015e:	0c853a83          	ld	s5,200(a0)
    80020162:	0d053b03          	ld	s6,208(a0)
    80020166:	0d853b83          	ld	s7,216(a0)
    8002016a:	0e053c03          	ld	s8,224(a0)
    8002016e:	0e853c83          	ld	s9,232(a0)
    80020172:	0f053d03          	ld	s10,240(a0)
    80020176:	0f853d83          	ld	s11,248(a0)
    8002017a:	10053e03          	ld	t3,256(a0)
    8002017e:	10853e83          	ld	t4,264(a0)
    80020182:	11053f03          	ld	t5,272(a0)
    80020186:	11853f83          	ld	t6,280(a0)
    8002018a:	14051573          	csrrw	a0,sscratch,a0
    8002018e:	10200073          	sret

0000000080020192 <loop>:
#include "defs.h"

void loop() {
    80020192:	1141                	addi	sp,sp,-16
    80020194:	e422                	sd	s0,8(sp)
    80020196:	0800                	addi	s0,sp,16
    for(;;);
    80020198:	a001                	j	80020198 <loop+0x6>

000000008002019a <panic>:
}

void panic(char *s)
{
    8002019a:	1101                	addi	sp,sp,-32
    8002019c:	ec06                	sd	ra,24(sp)
    8002019e:	e822                	sd	s0,16(sp)
    800201a0:	e426                	sd	s1,8(sp)
    800201a2:	1000                	addi	s0,sp,32
    800201a4:	84aa                	mv	s1,a0
    printf("panic: ");
    800201a6:	00006517          	auipc	a0,0x6
    800201aa:	e5a50513          	addi	a0,a0,-422 # 80026000 <etext>
    800201ae:	00000097          	auipc	ra,0x0
    800201b2:	218080e7          	jalr	536(ra) # 800203c6 <printf>
    printf(s);
    800201b6:	8526                	mv	a0,s1
    800201b8:	00000097          	auipc	ra,0x0
    800201bc:	20e080e7          	jalr	526(ra) # 800203c6 <printf>
    printf("\n");
    800201c0:	00006517          	auipc	a0,0x6
    800201c4:	fa050513          	addi	a0,a0,-96 # 80026160 <digits+0x118>
    800201c8:	00000097          	auipc	ra,0x0
    800201cc:	1fe080e7          	jalr	510(ra) # 800203c6 <printf>
    for(;;);
    800201d0:	a001                	j	800201d0 <panic+0x36>

00000000800201d2 <sys_write>:
#include "proc.h"

#define min(a, b) a < b ? a : b;

uint64 sys_write(int fd, char *str, uint len) {
    if (fd != 0)
    800201d2:	e52d                	bnez	a0,8002023c <sys_write+0x6a>
uint64 sys_write(int fd, char *str, uint len) {
    800201d4:	7179                	addi	sp,sp,-48
    800201d6:	f406                	sd	ra,40(sp)
    800201d8:	f022                	sd	s0,32(sp)
    800201da:	ec26                	sd	s1,24(sp)
    800201dc:	e84a                	sd	s2,16(sp)
    800201de:	e44e                	sd	s3,8(sp)
    800201e0:	1800                	addi	s0,sp,48
    800201e2:	892e                	mv	s2,a1
    800201e4:	84b2                	mv	s1,a2
        return -1;
    int size = min(strlen(str), len);
    800201e6:	852e                	mv	a0,a1
    800201e8:	00000097          	auipc	ra,0x0
    800201ec:	5fc080e7          	jalr	1532(ra) # 800207e4 <strlen>
    800201f0:	2501                	sext.w	a0,a0
    800201f2:	0004899b          	sext.w	s3,s1
    800201f6:	02956c63          	bltu	a0,s1,8002022e <sys_write+0x5c>
    for(int i = 0; i < size; ++i) {
    800201fa:	03305263          	blez	s3,8002021e <sys_write+0x4c>
    800201fe:	84ca                	mv	s1,s2
    80020200:	0905                	addi	s2,s2,1
    80020202:	fff9879b          	addiw	a5,s3,-1
    80020206:	1782                	slli	a5,a5,0x20
    80020208:	9381                	srli	a5,a5,0x20
    8002020a:	993e                	add	s2,s2,a5
        console_putchar(str[i]);
    8002020c:	0004c503          	lbu	a0,0(s1)
    80020210:	00000097          	auipc	ra,0x0
    80020214:	798080e7          	jalr	1944(ra) # 800209a8 <console_putchar>
    for(int i = 0; i < size; ++i) {
    80020218:	0485                	addi	s1,s1,1
    8002021a:	ff2499e3          	bne	s1,s2,8002020c <sys_write+0x3a>
    }
    return size;
    8002021e:	854e                	mv	a0,s3
}
    80020220:	70a2                	ld	ra,40(sp)
    80020222:	7402                	ld	s0,32(sp)
    80020224:	64e2                	ld	s1,24(sp)
    80020226:	6942                	ld	s2,16(sp)
    80020228:	69a2                	ld	s3,8(sp)
    8002022a:	6145                	addi	sp,sp,48
    8002022c:	8082                	ret
    int size = min(strlen(str), len);
    8002022e:	854a                	mv	a0,s2
    80020230:	00000097          	auipc	ra,0x0
    80020234:	5b4080e7          	jalr	1460(ra) # 800207e4 <strlen>
    80020238:	89aa                	mv	s3,a0
    8002023a:	b7c1                	j	800201fa <sys_write+0x28>
        return -1;
    8002023c:	557d                	li	a0,-1
}
    8002023e:	8082                	ret

0000000080020240 <sys_exit>:

uint64 sys_exit(int code) {
    80020240:	1141                	addi	sp,sp,-16
    80020242:	e406                	sd	ra,8(sp)
    80020244:	e022                	sd	s0,0(sp)
    80020246:	0800                	addi	s0,sp,16
    exit(code);
    80020248:	00001097          	auipc	ra,0x1
    8002024c:	b3c080e7          	jalr	-1220(ra) # 80020d84 <exit>
    return 0;
}
    80020250:	4501                	li	a0,0
    80020252:	60a2                	ld	ra,8(sp)
    80020254:	6402                	ld	s0,0(sp)
    80020256:	0141                	addi	sp,sp,16
    80020258:	8082                	ret

000000008002025a <sys_sched_yield>:

uint64 sys_sched_yield() {
    8002025a:	1141                	addi	sp,sp,-16
    8002025c:	e406                	sd	ra,8(sp)
    8002025e:	e022                	sd	s0,0(sp)
    80020260:	0800                	addi	s0,sp,16
    yield();
    80020262:	00001097          	auipc	ra,0x1
    80020266:	afe080e7          	jalr	-1282(ra) # 80020d60 <yield>
    return 0;
}
    8002026a:	4501                	li	a0,0
    8002026c:	60a2                	ld	ra,8(sp)
    8002026e:	6402                	ld	s0,0(sp)
    80020270:	0141                	addi	sp,sp,16
    80020272:	8082                	ret

0000000080020274 <syscall>:

void syscall() {
    80020274:	1101                	addi	sp,sp,-32
    80020276:	ec06                	sd	ra,24(sp)
    80020278:	e822                	sd	s0,16(sp)
    8002027a:	e426                	sd	s1,8(sp)
    8002027c:	e04a                	sd	s2,0(sp)
    8002027e:	1000                	addi	s0,sp,32
    struct trapframe *trapframe = curr_proc()->trapframe;
    80020280:	00001097          	auipc	ra,0x1
    80020284:	900080e7          	jalr	-1792(ra) # 80020b80 <curr_proc>
    80020288:	02053903          	ld	s2,32(a0)
    int id = trapframe->a7, ret;
    8002028c:	0a892483          	lw	s1,168(s2)
    printf("syscall %d\n", id);
    80020290:	85a6                	mv	a1,s1
    80020292:	00006517          	auipc	a0,0x6
    80020296:	d7e50513          	addi	a0,a0,-642 # 80026010 <etext+0x10>
    8002029a:	00000097          	auipc	ra,0x0
    8002029e:	12c080e7          	jalr	300(ra) # 800203c6 <printf>
    uint64 args[6] = {trapframe->a0, trapframe->a1, trapframe->a3, trapframe->a4, trapframe->a5, trapframe->a6};
    800202a2:	07093503          	ld	a0,112(s2)
    switch (id) {
    800202a6:	05d00793          	li	a5,93
    800202aa:	06f48063          	beq	s1,a5,8002030a <syscall+0x96>
    800202ae:	07c00793          	li	a5,124
    800202b2:	06f48363          	beq	s1,a5,80020318 <syscall+0xa4>
    800202b6:	04000793          	li	a5,64
    800202ba:	00f48d63          	beq	s1,a5,800202d4 <syscall+0x60>
        case SYS_sched_yield:
            ret = sys_sched_yield();
            break;
        default:
            ret = -1;
            printf("unknown syscall %d\n", id);
    800202be:	85a6                	mv	a1,s1
    800202c0:	00006517          	auipc	a0,0x6
    800202c4:	d4850513          	addi	a0,a0,-696 # 80026008 <etext+0x8>
    800202c8:	00000097          	auipc	ra,0x0
    800202cc:	0fe080e7          	jalr	254(ra) # 800203c6 <printf>
            ret = -1;
    800202d0:	55fd                	li	a1,-1
    800202d2:	a821                	j	800202ea <syscall+0x76>
            ret = sys_write(args[0], (char *) args[1], args[2]);
    800202d4:	08892603          	lw	a2,136(s2)
    800202d8:	07893583          	ld	a1,120(s2)
    800202dc:	2501                	sext.w	a0,a0
    800202de:	00000097          	auipc	ra,0x0
    800202e2:	ef4080e7          	jalr	-268(ra) # 800201d2 <sys_write>
    800202e6:	0005059b          	sext.w	a1,a0
    }
    trapframe->a0 = ret;
    800202ea:	06b93823          	sd	a1,112(s2)
    printf("syscall ret %d\n", ret);
    800202ee:	00006517          	auipc	a0,0x6
    800202f2:	d3250513          	addi	a0,a0,-718 # 80026020 <etext+0x20>
    800202f6:	00000097          	auipc	ra,0x0
    800202fa:	0d0080e7          	jalr	208(ra) # 800203c6 <printf>
}
    800202fe:	60e2                	ld	ra,24(sp)
    80020300:	6442                	ld	s0,16(sp)
    80020302:	64a2                	ld	s1,8(sp)
    80020304:	6902                	ld	s2,0(sp)
    80020306:	6105                	addi	sp,sp,32
    80020308:	8082                	ret
    exit(code);
    8002030a:	2501                	sext.w	a0,a0
    8002030c:	00001097          	auipc	ra,0x1
    80020310:	a78080e7          	jalr	-1416(ra) # 80020d84 <exit>
            ret = sys_exit(args[0]);
    80020314:	4581                	li	a1,0
            break;
    80020316:	bfd1                	j	800202ea <syscall+0x76>
    yield();
    80020318:	00001097          	auipc	ra,0x1
    8002031c:	a48080e7          	jalr	-1464(ra) # 80020d60 <yield>
            ret = sys_sched_yield();
    80020320:	4581                	li	a1,0
            break;
    80020322:	b7e1                	j	800202ea <syscall+0x76>

0000000080020324 <printint>:
#include "defs.h"
#include <stdarg.h>
static char digits[] = "0123456789abcdef";

static void printint(int xx, int base, int sign) {
    80020324:	7179                	addi	sp,sp,-48
    80020326:	f406                	sd	ra,40(sp)
    80020328:	f022                	sd	s0,32(sp)
    8002032a:	ec26                	sd	s1,24(sp)
    8002032c:	e84a                	sd	s2,16(sp)
    8002032e:	1800                	addi	s0,sp,48
    char buf[16];
    int i;
    uint x;

    if (sign && (sign = xx < 0))
    80020330:	c219                	beqz	a2,80020336 <printint+0x12>
    80020332:	08054663          	bltz	a0,800203be <printint+0x9a>
        x = -xx;
    else
        x = xx;
    80020336:	2501                	sext.w	a0,a0
    80020338:	4881                	li	a7,0
    8002033a:	fd040693          	addi	a3,s0,-48

    i = 0;
    8002033e:	4701                	li	a4,0
    do {
        buf[i++] = digits[x % base];
    80020340:	2581                	sext.w	a1,a1
    80020342:	00006617          	auipc	a2,0x6
    80020346:	d0660613          	addi	a2,a2,-762 # 80026048 <digits>
    8002034a:	883a                	mv	a6,a4
    8002034c:	2705                	addiw	a4,a4,1
    8002034e:	02b577bb          	remuw	a5,a0,a1
    80020352:	1782                	slli	a5,a5,0x20
    80020354:	9381                	srli	a5,a5,0x20
    80020356:	97b2                	add	a5,a5,a2
    80020358:	0007c783          	lbu	a5,0(a5)
    8002035c:	00f68023          	sb	a5,0(a3)
    } while ((x /= base) != 0);
    80020360:	0005079b          	sext.w	a5,a0
    80020364:	02b5553b          	divuw	a0,a0,a1
    80020368:	0685                	addi	a3,a3,1
    8002036a:	feb7f0e3          	bgeu	a5,a1,8002034a <printint+0x26>

    if (sign)
    8002036e:	00088b63          	beqz	a7,80020384 <printint+0x60>
        buf[i++] = '-';
    80020372:	fe040793          	addi	a5,s0,-32
    80020376:	973e                	add	a4,a4,a5
    80020378:	02d00793          	li	a5,45
    8002037c:	fef70823          	sb	a5,-16(a4)
    80020380:	0028071b          	addiw	a4,a6,2

    while (--i >= 0)
    80020384:	02e05763          	blez	a4,800203b2 <printint+0x8e>
    80020388:	fd040793          	addi	a5,s0,-48
    8002038c:	00e784b3          	add	s1,a5,a4
    80020390:	fff78913          	addi	s2,a5,-1
    80020394:	993a                	add	s2,s2,a4
    80020396:	377d                	addiw	a4,a4,-1
    80020398:	1702                	slli	a4,a4,0x20
    8002039a:	9301                	srli	a4,a4,0x20
    8002039c:	40e90933          	sub	s2,s2,a4
        consputc(buf[i]);
    800203a0:	fff4c503          	lbu	a0,-1(s1)
    800203a4:	00000097          	auipc	ra,0x0
    800203a8:	5ec080e7          	jalr	1516(ra) # 80020990 <consputc>
    while (--i >= 0)
    800203ac:	14fd                	addi	s1,s1,-1
    800203ae:	ff2499e3          	bne	s1,s2,800203a0 <printint+0x7c>
}
    800203b2:	70a2                	ld	ra,40(sp)
    800203b4:	7402                	ld	s0,32(sp)
    800203b6:	64e2                	ld	s1,24(sp)
    800203b8:	6942                	ld	s2,16(sp)
    800203ba:	6145                	addi	sp,sp,48
    800203bc:	8082                	ret
        x = -xx;
    800203be:	40a0053b          	negw	a0,a0
    if (sign && (sign = xx < 0))
    800203c2:	4885                	li	a7,1
        x = -xx;
    800203c4:	bf9d                	j	8002033a <printint+0x16>

00000000800203c6 <printf>:
    for (i = 0; i < (sizeof(uint64) * 2); i++, x <<= 4)
        consputc(digits[x >> (sizeof(uint64) * 8 - 4)]);
}

// Print to the console. only understands %d, %x, %p, %s.
void printf(char *fmt, ...) {
    800203c6:	7131                	addi	sp,sp,-192
    800203c8:	fc86                	sd	ra,120(sp)
    800203ca:	f8a2                	sd	s0,112(sp)
    800203cc:	f4a6                	sd	s1,104(sp)
    800203ce:	f0ca                	sd	s2,96(sp)
    800203d0:	ecce                	sd	s3,88(sp)
    800203d2:	e8d2                	sd	s4,80(sp)
    800203d4:	e4d6                	sd	s5,72(sp)
    800203d6:	e0da                	sd	s6,64(sp)
    800203d8:	fc5e                	sd	s7,56(sp)
    800203da:	f862                	sd	s8,48(sp)
    800203dc:	f466                	sd	s9,40(sp)
    800203de:	f06a                	sd	s10,32(sp)
    800203e0:	ec6e                	sd	s11,24(sp)
    800203e2:	0100                	addi	s0,sp,128
    800203e4:	8a2a                	mv	s4,a0
    800203e6:	e40c                	sd	a1,8(s0)
    800203e8:	e810                	sd	a2,16(s0)
    800203ea:	ec14                	sd	a3,24(s0)
    800203ec:	f018                	sd	a4,32(s0)
    800203ee:	f41c                	sd	a5,40(s0)
    800203f0:	03043823          	sd	a6,48(s0)
    800203f4:	03143c23          	sd	a7,56(s0)
    va_list ap;
    int i, c;
    char *s;

    if (fmt == 0)
    800203f8:	c915                	beqz	a0,8002042c <printf+0x66>
        panic("null fmt");

    va_start(ap, fmt);
    800203fa:	00840793          	addi	a5,s0,8
    800203fe:	f8f43423          	sd	a5,-120(s0)
    for (i = 0; (c = fmt[i] & 0xff) != 0; i++) {
    80020402:	000a4503          	lbu	a0,0(s4)
    80020406:	14050863          	beqz	a0,80020556 <printf+0x190>
    8002040a:	4981                	li	s3,0
        if (c != '%') {
    8002040c:	02500a93          	li	s5,37
            continue;
        }
        c = fmt[++i] & 0xff;
        if (c == 0)
            break;
        switch (c) {
    80020410:	07000b93          	li	s7,112
    consputc('x');
    80020414:	4d41                	li	s10,16
        consputc(digits[x >> (sizeof(uint64) * 8 - 4)]);
    80020416:	00006b17          	auipc	s6,0x6
    8002041a:	c32b0b13          	addi	s6,s6,-974 # 80026048 <digits>
        switch (c) {
    8002041e:	07300c93          	li	s9,115
                printptr(va_arg(ap, uint64));
                break;
            case 's':
                if ((s = va_arg(ap, char *)) == 0)
                    s = "(null)";
                for (; *s; s++)
    80020422:	02800d93          	li	s11,40
        switch (c) {
    80020426:	06400c13          	li	s8,100
    8002042a:	a02d                	j	80020454 <printf+0x8e>
        panic("null fmt");
    8002042c:	00006517          	auipc	a0,0x6
    80020430:	c0c50513          	addi	a0,a0,-1012 # 80026038 <etext+0x38>
    80020434:	00000097          	auipc	ra,0x0
    80020438:	d66080e7          	jalr	-666(ra) # 8002019a <panic>
    8002043c:	bf7d                	j	800203fa <printf+0x34>
            consputc(c);
    8002043e:	00000097          	auipc	ra,0x0
    80020442:	552080e7          	jalr	1362(ra) # 80020990 <consputc>
    for (i = 0; (c = fmt[i] & 0xff) != 0; i++) {
    80020446:	2985                	addiw	s3,s3,1
    80020448:	013a07b3          	add	a5,s4,s3
    8002044c:	0007c503          	lbu	a0,0(a5)
    80020450:	10050363          	beqz	a0,80020556 <printf+0x190>
        if (c != '%') {
    80020454:	ff5515e3          	bne	a0,s5,8002043e <printf+0x78>
        c = fmt[++i] & 0xff;
    80020458:	2985                	addiw	s3,s3,1
    8002045a:	013a07b3          	add	a5,s4,s3
    8002045e:	0007c783          	lbu	a5,0(a5)
    80020462:	0007849b          	sext.w	s1,a5
        if (c == 0)
    80020466:	cbe5                	beqz	a5,80020556 <printf+0x190>
        switch (c) {
    80020468:	05778a63          	beq	a5,s7,800204bc <printf+0xf6>
    8002046c:	02fbf663          	bgeu	s7,a5,80020498 <printf+0xd2>
    80020470:	09978863          	beq	a5,s9,80020500 <printf+0x13a>
    80020474:	07800713          	li	a4,120
    80020478:	0ce79463          	bne	a5,a4,80020540 <printf+0x17a>
                printint(va_arg(ap, int), 16, 1);
    8002047c:	f8843783          	ld	a5,-120(s0)
    80020480:	00878713          	addi	a4,a5,8
    80020484:	f8e43423          	sd	a4,-120(s0)
    80020488:	4605                	li	a2,1
    8002048a:	85ea                	mv	a1,s10
    8002048c:	4388                	lw	a0,0(a5)
    8002048e:	00000097          	auipc	ra,0x0
    80020492:	e96080e7          	jalr	-362(ra) # 80020324 <printint>
                break;
    80020496:	bf45                	j	80020446 <printf+0x80>
        switch (c) {
    80020498:	09578e63          	beq	a5,s5,80020534 <printf+0x16e>
    8002049c:	0b879263          	bne	a5,s8,80020540 <printf+0x17a>
                printint(va_arg(ap, int), 10, 1);
    800204a0:	f8843783          	ld	a5,-120(s0)
    800204a4:	00878713          	addi	a4,a5,8
    800204a8:	f8e43423          	sd	a4,-120(s0)
    800204ac:	4605                	li	a2,1
    800204ae:	45a9                	li	a1,10
    800204b0:	4388                	lw	a0,0(a5)
    800204b2:	00000097          	auipc	ra,0x0
    800204b6:	e72080e7          	jalr	-398(ra) # 80020324 <printint>
                break;
    800204ba:	b771                	j	80020446 <printf+0x80>
                printptr(va_arg(ap, uint64));
    800204bc:	f8843783          	ld	a5,-120(s0)
    800204c0:	00878713          	addi	a4,a5,8
    800204c4:	f8e43423          	sd	a4,-120(s0)
    800204c8:	0007b903          	ld	s2,0(a5)
    consputc('0');
    800204cc:	03000513          	li	a0,48
    800204d0:	00000097          	auipc	ra,0x0
    800204d4:	4c0080e7          	jalr	1216(ra) # 80020990 <consputc>
    consputc('x');
    800204d8:	07800513          	li	a0,120
    800204dc:	00000097          	auipc	ra,0x0
    800204e0:	4b4080e7          	jalr	1204(ra) # 80020990 <consputc>
    800204e4:	84ea                	mv	s1,s10
        consputc(digits[x >> (sizeof(uint64) * 8 - 4)]);
    800204e6:	03c95793          	srli	a5,s2,0x3c
    800204ea:	97da                	add	a5,a5,s6
    800204ec:	0007c503          	lbu	a0,0(a5)
    800204f0:	00000097          	auipc	ra,0x0
    800204f4:	4a0080e7          	jalr	1184(ra) # 80020990 <consputc>
    for (i = 0; i < (sizeof(uint64) * 2); i++, x <<= 4)
    800204f8:	0912                	slli	s2,s2,0x4
    800204fa:	34fd                	addiw	s1,s1,-1
    800204fc:	f4ed                	bnez	s1,800204e6 <printf+0x120>
    800204fe:	b7a1                	j	80020446 <printf+0x80>
                if ((s = va_arg(ap, char *)) == 0)
    80020500:	f8843783          	ld	a5,-120(s0)
    80020504:	00878713          	addi	a4,a5,8
    80020508:	f8e43423          	sd	a4,-120(s0)
    8002050c:	6384                	ld	s1,0(a5)
    8002050e:	cc89                	beqz	s1,80020528 <printf+0x162>
                for (; *s; s++)
    80020510:	0004c503          	lbu	a0,0(s1)
    80020514:	d90d                	beqz	a0,80020446 <printf+0x80>
                    consputc(*s);
    80020516:	00000097          	auipc	ra,0x0
    8002051a:	47a080e7          	jalr	1146(ra) # 80020990 <consputc>
                for (; *s; s++)
    8002051e:	0485                	addi	s1,s1,1
    80020520:	0004c503          	lbu	a0,0(s1)
    80020524:	f96d                	bnez	a0,80020516 <printf+0x150>
    80020526:	b705                	j	80020446 <printf+0x80>
                    s = "(null)";
    80020528:	00006497          	auipc	s1,0x6
    8002052c:	b0848493          	addi	s1,s1,-1272 # 80026030 <etext+0x30>
                for (; *s; s++)
    80020530:	856e                	mv	a0,s11
    80020532:	b7d5                	j	80020516 <printf+0x150>
                break;
            case '%':
                consputc('%');
    80020534:	8556                	mv	a0,s5
    80020536:	00000097          	auipc	ra,0x0
    8002053a:	45a080e7          	jalr	1114(ra) # 80020990 <consputc>
                break;
    8002053e:	b721                	j	80020446 <printf+0x80>
            default:
                // Print unknown % sequence to draw attention.
                consputc('%');
    80020540:	8556                	mv	a0,s5
    80020542:	00000097          	auipc	ra,0x0
    80020546:	44e080e7          	jalr	1102(ra) # 80020990 <consputc>
                consputc(c);
    8002054a:	8526                	mv	a0,s1
    8002054c:	00000097          	auipc	ra,0x0
    80020550:	444080e7          	jalr	1092(ra) # 80020990 <consputc>
                break;
    80020554:	bdcd                	j	80020446 <printf+0x80>
        }
    }
}
    80020556:	70e6                	ld	ra,120(sp)
    80020558:	7446                	ld	s0,112(sp)
    8002055a:	74a6                	ld	s1,104(sp)
    8002055c:	7906                	ld	s2,96(sp)
    8002055e:	69e6                	ld	s3,88(sp)
    80020560:	6a46                	ld	s4,80(sp)
    80020562:	6aa6                	ld	s5,72(sp)
    80020564:	6b06                	ld	s6,64(sp)
    80020566:	7be2                	ld	s7,56(sp)
    80020568:	7c42                	ld	s8,48(sp)
    8002056a:	7ca2                	ld	s9,40(sp)
    8002056c:	7d02                	ld	s10,32(sp)
    8002056e:	6de2                	ld	s11,24(sp)
    80020570:	6129                	addi	sp,sp,192
    80020572:	8082                	ret

0000000080020574 <trapinit>:

extern char trampoline[], uservec[], boot_stack[];
extern void *userret(uint64);

// set up to take exceptions and traps while in the kernel.
void trapinit(void) {
    80020574:	1141                	addi	sp,sp,-16
    80020576:	e422                	sd	s0,8(sp)
    80020578:	0800                	addi	s0,sp,16
    w_stvec((uint64) uservec & ~0x3);
    8002057a:	00000797          	auipc	a5,0x0
    8002057e:	b0678793          	addi	a5,a5,-1274 # 80020080 <trampoline>
    80020582:	9bf1                	andi	a5,a5,-4
}

// Supervisor Trap-Vector Base Address
// low two bits are mode.
static inline void w_stvec(uint64 x) {
    asm volatile("csrw stvec, %0"
    80020584:	10579073          	csrw	stvec,a5
}
    80020588:	6422                	ld	s0,8(sp)
    8002058a:	0141                	addi	sp,sp,16
    8002058c:	8082                	ret

000000008002058e <usertrapret>:
    }
    usertrapret(trapframe, (uint64) boot_stack);
}


void usertrapret() {
    8002058e:	1101                	addi	sp,sp,-32
    80020590:	ec06                	sd	ra,24(sp)
    80020592:	e822                	sd	s0,16(sp)
    80020594:	e426                	sd	s1,8(sp)
    80020596:	1000                	addi	s0,sp,32
    struct trapframe *trapframe = curr_proc()->trapframe;
    80020598:	00000097          	auipc	ra,0x0
    8002059c:	5e8080e7          	jalr	1512(ra) # 80020b80 <curr_proc>
    800205a0:	7104                	ld	s1,32(a0)
                 : "r"(x));
}

static inline uint64 r_satp() {
    uint64 x;
    asm volatile("csrr %0, satp"
    800205a2:	180027f3          	csrr	a5,satp

    trapframe->kernel_satp = r_satp();                   // kernel page table
    800205a6:	e09c                	sd	a5,0(s1)
    trapframe->kernel_sp = curr_proc()->kstack + PGSIZE;// process's kernel stack
    800205a8:	00000097          	auipc	ra,0x0
    800205ac:	5d8080e7          	jalr	1496(ra) # 80020b80 <curr_proc>
    800205b0:	6d1c                	ld	a5,24(a0)
    800205b2:	6705                	lui	a4,0x1
    800205b4:	97ba                	add	a5,a5,a4
    800205b6:	e49c                	sd	a5,8(s1)
    trapframe->kernel_trap = (uint64) usertrap;
    800205b8:	00000797          	auipc	a5,0x0
    800205bc:	03878793          	addi	a5,a5,56 # 800205f0 <usertrap>
    800205c0:	e89c                	sd	a5,16(s1)

// read and write tp, the thread pointer, which holds
// this core's hartid (core number), the index into cpus[].
static inline uint64 r_tp() {
    uint64 x;
    asm volatile("mv %0, tp"
    800205c2:	8792                	mv	a5,tp
    trapframe->kernel_hartid = r_tp();// hartid for cpuid()
    800205c4:	f09c                	sd	a5,32(s1)
    asm volatile("csrw sepc, %0"
    800205c6:	6c9c                	ld	a5,24(s1)
    800205c8:	14179073          	csrw	sepc,a5
    asm volatile("csrr %0, sstatus"
    800205cc:	100027f3          	csrr	a5,sstatus
    // set up the registers that trampoline.S's sret will use
    // to get to user space.

    // set S Previous Privilege mode to User.
    uint64 x = r_sstatus();
    x &= ~SSTATUS_SPP;// clear SPP to 0 for user mode
    800205d0:	eff7f793          	andi	a5,a5,-257
    x |= SSTATUS_SPIE;// enable interrupts in user mode
    800205d4:	0207e793          	ori	a5,a5,32
    asm volatile("csrw sstatus, %0"
    800205d8:	10079073          	csrw	sstatus,a5
    w_sstatus(x);

    // tell trampoline.S the user page table to switch to.
    // uint64 satp = MAKE_SATP(p->pagetable);
    userret((uint64) trapframe);
    800205dc:	8526                	mv	a0,s1
    800205de:	00000097          	auipc	ra,0x0
    800205e2:	b32080e7          	jalr	-1230(ra) # 80020110 <userret>
    800205e6:	60e2                	ld	ra,24(sp)
    800205e8:	6442                	ld	s0,16(sp)
    800205ea:	64a2                	ld	s1,8(sp)
    800205ec:	6105                	addi	sp,sp,32
    800205ee:	8082                	ret

00000000800205f0 <usertrap>:
void usertrap() {
    800205f0:	1101                	addi	sp,sp,-32
    800205f2:	ec06                	sd	ra,24(sp)
    800205f4:	e822                	sd	s0,16(sp)
    800205f6:	e426                	sd	s1,8(sp)
    800205f8:	1000                	addi	s0,sp,32
    struct trapframe *trapframe = curr_proc()->trapframe;
    800205fa:	00000097          	auipc	ra,0x0
    800205fe:	586080e7          	jalr	1414(ra) # 80020b80 <curr_proc>
    80020602:	7104                	ld	s1,32(a0)
    asm volatile("csrr %0, sstatus"
    80020604:	100027f3          	csrr	a5,sstatus
    if ((r_sstatus() & SSTATUS_SPP) != 0)
    80020608:	1007f793          	andi	a5,a5,256
    8002060c:	eb8d                	bnez	a5,8002063e <usertrap+0x4e>
    asm volatile("csrr %0, scause"
    8002060e:	14202773          	csrr	a4,scause
    if (r_scause() == UserEnvCall) {
    80020612:	47a1                	li	a5,8
    80020614:	02f70e63          	beq	a4,a5,80020650 <usertrap+0x60>
        exit(-1);
    80020618:	557d                	li	a0,-1
    8002061a:	00000097          	auipc	ra,0x0
    8002061e:	76a080e7          	jalr	1898(ra) # 80020d84 <exit>
    usertrapret(trapframe, (uint64) boot_stack);
    80020622:	00008597          	auipc	a1,0x8
    80020626:	9de58593          	addi	a1,a1,-1570 # 80028000 <boot_stack>
    8002062a:	8526                	mv	a0,s1
    8002062c:	00000097          	auipc	ra,0x0
    80020630:	f62080e7          	jalr	-158(ra) # 8002058e <usertrapret>
}
    80020634:	60e2                	ld	ra,24(sp)
    80020636:	6442                	ld	s0,16(sp)
    80020638:	64a2                	ld	s1,8(sp)
    8002063a:	6105                	addi	sp,sp,32
    8002063c:	8082                	ret
        panic("usertrap: not from user mode");
    8002063e:	00006517          	auipc	a0,0x6
    80020642:	a2250513          	addi	a0,a0,-1502 # 80026060 <digits+0x18>
    80020646:	00000097          	auipc	ra,0x0
    8002064a:	b54080e7          	jalr	-1196(ra) # 8002019a <panic>
    8002064e:	b7c1                	j	8002060e <usertrap+0x1e>
        trapframe->epc += 4;
    80020650:	6c9c                	ld	a5,24(s1)
    80020652:	0791                	addi	a5,a5,4
    80020654:	ec9c                	sd	a5,24(s1)
        syscall();
    80020656:	00000097          	auipc	ra,0x0
    8002065a:	c1e080e7          	jalr	-994(ra) # 80020274 <syscall>
    8002065e:	b7d1                	j	80020622 <usertrap+0x32>

0000000080020660 <memset>:
#include "defs.h"

void *
memset(void *dst, int c, uint n) {
    80020660:	1141                	addi	sp,sp,-16
    80020662:	e422                	sd	s0,8(sp)
    80020664:	0800                	addi	s0,sp,16
    char *cdst = (char *) dst;
    int i;
    for (i = 0; i < n; i++) {
    80020666:	ca19                	beqz	a2,8002067c <memset+0x1c>
    80020668:	87aa                	mv	a5,a0
    8002066a:	1602                	slli	a2,a2,0x20
    8002066c:	9201                	srli	a2,a2,0x20
    8002066e:	00a60733          	add	a4,a2,a0
        cdst[i] = c;
    80020672:	00b78023          	sb	a1,0(a5)
    for (i = 0; i < n; i++) {
    80020676:	0785                	addi	a5,a5,1
    80020678:	fee79de3          	bne	a5,a4,80020672 <memset+0x12>
    }
    return dst;
}
    8002067c:	6422                	ld	s0,8(sp)
    8002067e:	0141                	addi	sp,sp,16
    80020680:	8082                	ret

0000000080020682 <memcmp>:

int memcmp(const void *v1, const void *v2, uint n) {
    80020682:	1141                	addi	sp,sp,-16
    80020684:	e422                	sd	s0,8(sp)
    80020686:	0800                	addi	s0,sp,16
    const uchar *s1, *s2;

    s1 = v1;
    s2 = v2;
    while (n-- > 0) {
    80020688:	ca05                	beqz	a2,800206b8 <memcmp+0x36>
    8002068a:	fff6069b          	addiw	a3,a2,-1
    8002068e:	1682                	slli	a3,a3,0x20
    80020690:	9281                	srli	a3,a3,0x20
    80020692:	0685                	addi	a3,a3,1
    80020694:	96aa                	add	a3,a3,a0
        if (*s1 != *s2)
    80020696:	00054783          	lbu	a5,0(a0)
    8002069a:	0005c703          	lbu	a4,0(a1)
    8002069e:	00e79863          	bne	a5,a4,800206ae <memcmp+0x2c>
            return *s1 - *s2;
        s1++, s2++;
    800206a2:	0505                	addi	a0,a0,1
    800206a4:	0585                	addi	a1,a1,1
    while (n-- > 0) {
    800206a6:	fed518e3          	bne	a0,a3,80020696 <memcmp+0x14>
    }

    return 0;
    800206aa:	4501                	li	a0,0
    800206ac:	a019                	j	800206b2 <memcmp+0x30>
            return *s1 - *s2;
    800206ae:	40e7853b          	subw	a0,a5,a4
}
    800206b2:	6422                	ld	s0,8(sp)
    800206b4:	0141                	addi	sp,sp,16
    800206b6:	8082                	ret
    return 0;
    800206b8:	4501                	li	a0,0
    800206ba:	bfe5                	j	800206b2 <memcmp+0x30>

00000000800206bc <memmove>:

void *
memmove(void *dst, const void *src, uint n) {
    800206bc:	1141                	addi	sp,sp,-16
    800206be:	e422                	sd	s0,8(sp)
    800206c0:	0800                	addi	s0,sp,16
    const char *s;
    char *d;

    s = src;
    d = dst;
    if (s < d && s + n > d) {
    800206c2:	02a5e563          	bltu	a1,a0,800206ec <memmove+0x30>
        s += n;
        d += n;
        while (n-- > 0)
            *--d = *--s;
    } else
        while (n-- > 0)
    800206c6:	fff6069b          	addiw	a3,a2,-1
    800206ca:	ce11                	beqz	a2,800206e6 <memmove+0x2a>
    800206cc:	1682                	slli	a3,a3,0x20
    800206ce:	9281                	srli	a3,a3,0x20
    800206d0:	0685                	addi	a3,a3,1
    800206d2:	96ae                	add	a3,a3,a1
    800206d4:	87aa                	mv	a5,a0
            *d++ = *s++;
    800206d6:	0585                	addi	a1,a1,1
    800206d8:	0785                	addi	a5,a5,1
    800206da:	fff5c703          	lbu	a4,-1(a1)
    800206de:	fee78fa3          	sb	a4,-1(a5)
        while (n-- > 0)
    800206e2:	fed59ae3          	bne	a1,a3,800206d6 <memmove+0x1a>

    return dst;
}
    800206e6:	6422                	ld	s0,8(sp)
    800206e8:	0141                	addi	sp,sp,16
    800206ea:	8082                	ret
    if (s < d && s + n > d) {
    800206ec:	02061713          	slli	a4,a2,0x20
    800206f0:	9301                	srli	a4,a4,0x20
    800206f2:	00e587b3          	add	a5,a1,a4
    800206f6:	fcf578e3          	bgeu	a0,a5,800206c6 <memmove+0xa>
        d += n;
    800206fa:	972a                	add	a4,a4,a0
        while (n-- > 0)
    800206fc:	fff6069b          	addiw	a3,a2,-1
    80020700:	d27d                	beqz	a2,800206e6 <memmove+0x2a>
    80020702:	02069613          	slli	a2,a3,0x20
    80020706:	9201                	srli	a2,a2,0x20
    80020708:	fff64613          	not	a2,a2
    8002070c:	963e                	add	a2,a2,a5
            *--d = *--s;
    8002070e:	17fd                	addi	a5,a5,-1
    80020710:	177d                	addi	a4,a4,-1
    80020712:	0007c683          	lbu	a3,0(a5)
    80020716:	00d70023          	sb	a3,0(a4) # 1000 <_entry-0x8001f000>
        while (n-- > 0)
    8002071a:	fef61ae3          	bne	a2,a5,8002070e <memmove+0x52>
    8002071e:	b7e1                	j	800206e6 <memmove+0x2a>

0000000080020720 <memcpy>:

// memcpy exists to placate GCC.  Use memmove.
void *
memcpy(void *dst, const void *src, uint n) {
    80020720:	1141                	addi	sp,sp,-16
    80020722:	e406                	sd	ra,8(sp)
    80020724:	e022                	sd	s0,0(sp)
    80020726:	0800                	addi	s0,sp,16
    return memmove(dst, src, n);
    80020728:	00000097          	auipc	ra,0x0
    8002072c:	f94080e7          	jalr	-108(ra) # 800206bc <memmove>
}
    80020730:	60a2                	ld	ra,8(sp)
    80020732:	6402                	ld	s0,0(sp)
    80020734:	0141                	addi	sp,sp,16
    80020736:	8082                	ret

0000000080020738 <strncmp>:

int strncmp(const char *p, const char *q, uint n) {
    80020738:	1141                	addi	sp,sp,-16
    8002073a:	e422                	sd	s0,8(sp)
    8002073c:	0800                	addi	s0,sp,16
    while (n > 0 && *p && *p == *q)
    8002073e:	ce11                	beqz	a2,8002075a <strncmp+0x22>
    80020740:	00054783          	lbu	a5,0(a0)
    80020744:	cf89                	beqz	a5,8002075e <strncmp+0x26>
    80020746:	0005c703          	lbu	a4,0(a1)
    8002074a:	00f71a63          	bne	a4,a5,8002075e <strncmp+0x26>
        n--, p++, q++;
    8002074e:	367d                	addiw	a2,a2,-1
    80020750:	0505                	addi	a0,a0,1
    80020752:	0585                	addi	a1,a1,1
    while (n > 0 && *p && *p == *q)
    80020754:	f675                	bnez	a2,80020740 <strncmp+0x8>
    if (n == 0)
        return 0;
    80020756:	4501                	li	a0,0
    80020758:	a809                	j	8002076a <strncmp+0x32>
    8002075a:	4501                	li	a0,0
    8002075c:	a039                	j	8002076a <strncmp+0x32>
    if (n == 0)
    8002075e:	ca09                	beqz	a2,80020770 <strncmp+0x38>
    return (uchar) *p - (uchar) *q;
    80020760:	00054503          	lbu	a0,0(a0)
    80020764:	0005c783          	lbu	a5,0(a1)
    80020768:	9d1d                	subw	a0,a0,a5
}
    8002076a:	6422                	ld	s0,8(sp)
    8002076c:	0141                	addi	sp,sp,16
    8002076e:	8082                	ret
        return 0;
    80020770:	4501                	li	a0,0
    80020772:	bfe5                	j	8002076a <strncmp+0x32>

0000000080020774 <strncpy>:

char *
strncpy(char *s, const char *t, int n) {
    80020774:	1141                	addi	sp,sp,-16
    80020776:	e422                	sd	s0,8(sp)
    80020778:	0800                	addi	s0,sp,16
    char *os;

    os = s;
    while (n-- > 0 && (*s++ = *t++) != 0)
    8002077a:	872a                	mv	a4,a0
    8002077c:	8832                	mv	a6,a2
    8002077e:	367d                	addiw	a2,a2,-1
    80020780:	01005963          	blez	a6,80020792 <strncpy+0x1e>
    80020784:	0705                	addi	a4,a4,1
    80020786:	0005c783          	lbu	a5,0(a1)
    8002078a:	fef70fa3          	sb	a5,-1(a4)
    8002078e:	0585                	addi	a1,a1,1
    80020790:	f7f5                	bnez	a5,8002077c <strncpy+0x8>
        ;
    while (n-- > 0)
    80020792:	86ba                	mv	a3,a4
    80020794:	00c05c63          	blez	a2,800207ac <strncpy+0x38>
        *s++ = 0;
    80020798:	0685                	addi	a3,a3,1
    8002079a:	fe068fa3          	sb	zero,-1(a3)
    while (n-- > 0)
    8002079e:	fff6c793          	not	a5,a3
    800207a2:	9fb9                	addw	a5,a5,a4
    800207a4:	010787bb          	addw	a5,a5,a6
    800207a8:	fef048e3          	bgtz	a5,80020798 <strncpy+0x24>
    return os;
}
    800207ac:	6422                	ld	s0,8(sp)
    800207ae:	0141                	addi	sp,sp,16
    800207b0:	8082                	ret

00000000800207b2 <safestrcpy>:

// Like strncpy but guaranteed to NUL-terminate.
char *
safestrcpy(char *s, const char *t, int n) {
    800207b2:	1141                	addi	sp,sp,-16
    800207b4:	e422                	sd	s0,8(sp)
    800207b6:	0800                	addi	s0,sp,16
    char *os;

    os = s;
    if (n <= 0)
    800207b8:	02c05363          	blez	a2,800207de <safestrcpy+0x2c>
    800207bc:	fff6069b          	addiw	a3,a2,-1
    800207c0:	1682                	slli	a3,a3,0x20
    800207c2:	9281                	srli	a3,a3,0x20
    800207c4:	96ae                	add	a3,a3,a1
    800207c6:	87aa                	mv	a5,a0
        return os;
    while (--n > 0 && (*s++ = *t++) != 0)
    800207c8:	00d58963          	beq	a1,a3,800207da <safestrcpy+0x28>
    800207cc:	0585                	addi	a1,a1,1
    800207ce:	0785                	addi	a5,a5,1
    800207d0:	fff5c703          	lbu	a4,-1(a1)
    800207d4:	fee78fa3          	sb	a4,-1(a5)
    800207d8:	fb65                	bnez	a4,800207c8 <safestrcpy+0x16>
        ;
    *s = 0;
    800207da:	00078023          	sb	zero,0(a5)
    return os;
}
    800207de:	6422                	ld	s0,8(sp)
    800207e0:	0141                	addi	sp,sp,16
    800207e2:	8082                	ret

00000000800207e4 <strlen>:

int strlen(const char *s) {
    800207e4:	1141                	addi	sp,sp,-16
    800207e6:	e422                	sd	s0,8(sp)
    800207e8:	0800                	addi	s0,sp,16
    int n;

    for (n = 0; s[n]; n++)
    800207ea:	00054783          	lbu	a5,0(a0)
    800207ee:	cf91                	beqz	a5,8002080a <strlen+0x26>
    800207f0:	0505                	addi	a0,a0,1
    800207f2:	87aa                	mv	a5,a0
    800207f4:	4685                	li	a3,1
    800207f6:	9e89                	subw	a3,a3,a0
    800207f8:	00f6853b          	addw	a0,a3,a5
    800207fc:	0785                	addi	a5,a5,1
    800207fe:	fff7c703          	lbu	a4,-1(a5)
    80020802:	fb7d                	bnez	a4,800207f8 <strlen+0x14>
        ;
    return n;
}
    80020804:	6422                	ld	s0,8(sp)
    80020806:	0141                	addi	sp,sp,16
    80020808:	8082                	ret
    for (n = 0; s[n]; n++)
    8002080a:	4501                	li	a0,0
    8002080c:	bfe5                	j	80020804 <strlen+0x20>

000000008002080e <finished>:
extern char _app_num[];

int fin = 0;

int finished() {
    ++fin;
    8002080e:	0006a717          	auipc	a4,0x6a
    80020812:	20a70713          	addi	a4,a4,522 # 8008aa18 <fin>
    80020816:	431c                	lw	a5,0(a4)
    80020818:	2785                	addiw	a5,a5,1
    8002081a:	0007869b          	sext.w	a3,a5
    8002081e:	c31c                	sw	a5,0(a4)
    if(fin >= app_num)
    80020820:	0006a797          	auipc	a5,0x6a
    80020824:	2087a783          	lw	a5,520(a5) # 8008aa28 <app_num>
    80020828:	00f6d463          	bge	a3,a5,80020830 <finished+0x22>
        panic("all apps over\n");
    return 0;
}
    8002082c:	4501                	li	a0,0
    8002082e:	8082                	ret
int finished() {
    80020830:	1141                	addi	sp,sp,-16
    80020832:	e406                	sd	ra,8(sp)
    80020834:	e022                	sd	s0,0(sp)
    80020836:	0800                	addi	s0,sp,16
        panic("all apps over\n");
    80020838:	00006517          	auipc	a0,0x6
    8002083c:	84850513          	addi	a0,a0,-1976 # 80026080 <digits+0x38>
    80020840:	00000097          	auipc	ra,0x0
    80020844:	95a080e7          	jalr	-1702(ra) # 8002019a <panic>
}
    80020848:	4501                	li	a0,0
    8002084a:	60a2                	ld	ra,8(sp)
    8002084c:	6402                	ld	s0,0(sp)
    8002084e:	0141                	addi	sp,sp,16
    80020850:	8082                	ret

0000000080020852 <batchinit>:

void batchinit() {
    80020852:	1141                	addi	sp,sp,-16
    80020854:	e422                	sd	s0,8(sp)
    80020856:	0800                	addi	s0,sp,16
    app_info_ptr = (uint64*) _app_num;
    80020858:	00006697          	auipc	a3,0x6
    8002085c:	7a868693          	addi	a3,a3,1960 # 80027000 <_app_num>
    80020860:	0006a797          	auipc	a5,0x6a
    80020864:	1cd7b023          	sd	a3,448(a5) # 8008aa20 <app_info_ptr>
    app_cur = -1;
    80020868:	57fd                	li	a5,-1
    8002086a:	0006a717          	auipc	a4,0x6a
    8002086e:	1cf72123          	sw	a5,450(a4) # 8008aa2c <app_cur>
    app_num = *app_info_ptr;
    80020872:	0006c783          	lbu	a5,0(a3)
    80020876:	0016c703          	lbu	a4,1(a3)
    8002087a:	0722                	slli	a4,a4,0x8
    8002087c:	8f5d                	or	a4,a4,a5
    8002087e:	0026c783          	lbu	a5,2(a3)
    80020882:	07c2                	slli	a5,a5,0x10
    80020884:	8f5d                	or	a4,a4,a5
    80020886:	0036c783          	lbu	a5,3(a3)
    8002088a:	07e2                	slli	a5,a5,0x18
    8002088c:	8fd9                	or	a5,a5,a4
    8002088e:	0006a717          	auipc	a4,0x6a
    80020892:	18f72d23          	sw	a5,410(a4) # 8008aa28 <app_num>
}
    80020896:	6422                	ld	s0,8(sp)
    80020898:	0141                	addi	sp,sp,16
    8002089a:	8082                	ret

000000008002089c <run_all_app>:

int run_all_app() {
    for(int i = 0; i < app_num; ++i) {
    8002089c:	0006a797          	auipc	a5,0x6a
    800208a0:	18c7a783          	lw	a5,396(a5) # 8008aa28 <app_num>
    800208a4:	0ef05463          	blez	a5,8002098c <run_all_app+0xf0>
int run_all_app() {
    800208a8:	7159                	addi	sp,sp,-112
    800208aa:	f486                	sd	ra,104(sp)
    800208ac:	f0a2                	sd	s0,96(sp)
    800208ae:	eca6                	sd	s1,88(sp)
    800208b0:	e8ca                	sd	s2,80(sp)
    800208b2:	e4ce                	sd	s3,72(sp)
    800208b4:	e0d2                	sd	s4,64(sp)
    800208b6:	fc56                	sd	s5,56(sp)
    800208b8:	f85a                	sd	s6,48(sp)
    800208ba:	f45e                	sd	s7,40(sp)
    800208bc:	f062                	sd	s8,32(sp)
    800208be:	ec66                	sd	s9,24(sp)
    800208c0:	e86a                	sd	s10,16(sp)
    800208c2:	e46e                	sd	s11,8(sp)
    800208c4:	1880                	addi	s0,sp,112
    for(int i = 0; i < app_num; ++i) {
    800208c6:	4a01                	li	s4,0
        app_cur++;
    800208c8:	0006a917          	auipc	s2,0x6a
    800208cc:	16490913          	addi	s2,s2,356 # 8008aa2c <app_cur>
        app_info_ptr++;
    800208d0:	0006a997          	auipc	s3,0x6a
    800208d4:	15098993          	addi	s3,s3,336 # 8008aa20 <app_info_ptr>
        struct proc* p = allocproc();
        struct trapframe* trapframe = p->trapframe;
        printf("run app %d\n", app_cur);
    800208d8:	00005c97          	auipc	s9,0x5
    800208dc:	7b8c8c93          	addi	s9,s9,1976 # 80026090 <digits+0x48>
        uint64 entry = *app_info_ptr;
        if(app_cur == 0)
            trapframe->epc = entry + 0xf4 - 0xb0;
        else if(app_cur == 1)
    800208e0:	4d05                	li	s10,1
            trapframe->epc = entry + 0xf8 - 0xb0;
        else
            panic("unknown apps\n");
    800208e2:	00005d97          	auipc	s11,0x5
    800208e6:	7bed8d93          	addi	s11,s11,1982 # 800260a0 <digits+0x58>
        trapframe->sp = (uint64) p->ustack + PAGE_SIZE;
    800208ea:	6c05                	lui	s8,0x1
        p->state = RUNNABLE;
    800208ec:	4b8d                	li	s7,3
    for(int i = 0; i < app_num; ++i) {
    800208ee:	0006ab17          	auipc	s6,0x6a
    800208f2:	13ab0b13          	addi	s6,s6,314 # 8008aa28 <app_num>
    800208f6:	a015                	j	8002091a <run_all_app+0x7e>
        else if(app_cur == 1)
    800208f8:	07a71463          	bne	a4,s10,80020960 <run_all_app+0xc4>
            trapframe->epc = entry + 0xf8 - 0xb0;
    800208fc:	04878793          	addi	a5,a5,72
    80020900:	00fabc23          	sd	a5,24(s5)
        trapframe->sp = (uint64) p->ustack + PAGE_SIZE;
    80020904:	689c                	ld	a5,16(s1)
    80020906:	97e2                	add	a5,a5,s8
    80020908:	02fab823          	sd	a5,48(s5)
        p->state = RUNNABLE;
    8002090c:	0174a023          	sw	s7,0(s1)
    for(int i = 0; i < app_num; ++i) {
    80020910:	2a05                	addiw	s4,s4,1
    80020912:	000b2783          	lw	a5,0(s6)
    80020916:	04fa5b63          	bge	s4,a5,8002096c <run_all_app+0xd0>
        app_cur++;
    8002091a:	00092783          	lw	a5,0(s2)
    8002091e:	2785                	addiw	a5,a5,1
    80020920:	00f92023          	sw	a5,0(s2)
        app_info_ptr++;
    80020924:	0009b783          	ld	a5,0(s3)
    80020928:	07a1                	addi	a5,a5,8
    8002092a:	00f9b023          	sd	a5,0(s3)
        struct proc* p = allocproc();
    8002092e:	00000097          	auipc	ra,0x0
    80020932:	304080e7          	jalr	772(ra) # 80020c32 <allocproc>
    80020936:	84aa                	mv	s1,a0
        struct trapframe* trapframe = p->trapframe;
    80020938:	02053a83          	ld	s5,32(a0)
        printf("run app %d\n", app_cur);
    8002093c:	00092583          	lw	a1,0(s2)
    80020940:	8566                	mv	a0,s9
    80020942:	00000097          	auipc	ra,0x0
    80020946:	a84080e7          	jalr	-1404(ra) # 800203c6 <printf>
        uint64 entry = *app_info_ptr;
    8002094a:	0009b783          	ld	a5,0(s3)
    8002094e:	639c                	ld	a5,0(a5)
        if(app_cur == 0)
    80020950:	00092703          	lw	a4,0(s2)
    80020954:	f355                	bnez	a4,800208f8 <run_all_app+0x5c>
            trapframe->epc = entry + 0xf4 - 0xb0;
    80020956:	04478793          	addi	a5,a5,68
    8002095a:	00fabc23          	sd	a5,24(s5)
    8002095e:	b75d                	j	80020904 <run_all_app+0x68>
            panic("unknown apps\n");
    80020960:	856e                	mv	a0,s11
    80020962:	00000097          	auipc	ra,0x0
    80020966:	838080e7          	jalr	-1992(ra) # 8002019a <panic>
    8002096a:	bf69                	j	80020904 <run_all_app+0x68>
    }
    return 0;
    8002096c:	4501                	li	a0,0
    8002096e:	70a6                	ld	ra,104(sp)
    80020970:	7406                	ld	s0,96(sp)
    80020972:	64e6                	ld	s1,88(sp)
    80020974:	6946                	ld	s2,80(sp)
    80020976:	69a6                	ld	s3,72(sp)
    80020978:	6a06                	ld	s4,64(sp)
    8002097a:	7ae2                	ld	s5,56(sp)
    8002097c:	7b42                	ld	s6,48(sp)
    8002097e:	7ba2                	ld	s7,40(sp)
    80020980:	7c02                	ld	s8,32(sp)
    80020982:	6ce2                	ld	s9,24(sp)
    80020984:	6d42                	ld	s10,16(sp)
    80020986:	6da2                	ld	s11,8(sp)
    80020988:	6165                	addi	sp,sp,112
    8002098a:	8082                	ret
    8002098c:	4501                	li	a0,0
    8002098e:	8082                	ret

0000000080020990 <consputc>:
#include "defs.h"

void consputc(int c) {
    80020990:	1141                	addi	sp,sp,-16
    80020992:	e406                	sd	ra,8(sp)
    80020994:	e022                	sd	s0,0(sp)
    80020996:	0800                	addi	s0,sp,16
    console_putchar(c);
    80020998:	00000097          	auipc	ra,0x0
    8002099c:	010080e7          	jalr	16(ra) # 800209a8 <console_putchar>
    800209a0:	60a2                	ld	ra,8(sp)
    800209a2:	6402                	ld	s0,0(sp)
    800209a4:	0141                	addi	sp,sp,16
    800209a6:	8082                	ret

00000000800209a8 <console_putchar>:
                 : "r"(a0), "r"(a1), "r"(a2), "r"(a7)
                 : "memory");
    return a0;
}

void console_putchar(int c) {
    800209a8:	1141                	addi	sp,sp,-16
    800209aa:	e422                	sd	s0,8(sp)
    800209ac:	0800                	addi	s0,sp,16
    register uint64 a1 asm("a1") = arg1;
    800209ae:	4581                	li	a1,0
    register uint64 a2 asm("a2") = arg2;
    800209b0:	4601                	li	a2,0
    register uint64 a7 asm("a7") = which;
    800209b2:	4885                	li	a7,1
    asm volatile("ecall"
    800209b4:	00000073          	ecall
    sbi_call(SBI_CONSOLE_PUTCHAR, c, 0, 0);
}
    800209b8:	6422                	ld	s0,8(sp)
    800209ba:	0141                	addi	sp,sp,16
    800209bc:	8082                	ret

00000000800209be <console_getchar>:

int console_getchar() {
    800209be:	1141                	addi	sp,sp,-16
    800209c0:	e422                	sd	s0,8(sp)
    800209c2:	0800                	addi	s0,sp,16
    register uint64 a0 asm("a0") = arg0;
    800209c4:	4501                	li	a0,0
    register uint64 a1 asm("a1") = arg1;
    800209c6:	4581                	li	a1,0
    register uint64 a2 asm("a2") = arg2;
    800209c8:	4601                	li	a2,0
    register uint64 a7 asm("a7") = which;
    800209ca:	4889                	li	a7,2
    asm volatile("ecall"
    800209cc:	00000073          	ecall
    return sbi_call(SBI_CONSOLE_GETCHAR, 0, 0, 0);
}
    800209d0:	2501                	sext.w	a0,a0
    800209d2:	6422                	ld	s0,8(sp)
    800209d4:	0141                	addi	sp,sp,16
    800209d6:	8082                	ret

00000000800209d8 <shutdown>:

void shutdown() {
    800209d8:	1141                	addi	sp,sp,-16
    800209da:	e406                	sd	ra,8(sp)
    800209dc:	e022                	sd	s0,0(sp)
    800209de:	0800                	addi	s0,sp,16
    register uint64 a0 asm("a0") = arg0;
    800209e0:	4501                	li	a0,0
    register uint64 a1 asm("a1") = arg1;
    800209e2:	4581                	li	a1,0
    register uint64 a2 asm("a2") = arg2;
    800209e4:	4601                	li	a2,0
    register uint64 a7 asm("a7") = which;
    800209e6:	48a1                	li	a7,8
    asm volatile("ecall"
    800209e8:	00000073          	ecall
    sbi_call(SBI_SHUTDOWN, 0, 0, 0);
    panic("shutdown");
    800209ec:	00005517          	auipc	a0,0x5
    800209f0:	6c450513          	addi	a0,a0,1732 # 800260b0 <digits+0x68>
    800209f4:	fffff097          	auipc	ra,0xfffff
    800209f8:	7a6080e7          	jalr	1958(ra) # 8002019a <panic>
    800209fc:	60a2                	ld	ra,8(sp)
    800209fe:	6402                	ld	s0,0(sp)
    80020a00:	0141                	addi	sp,sp,16
    80020a02:	8082                	ret

0000000080020a04 <clean_bss>:
extern char sdata[];
extern char edata[];
extern char sbss[];
extern char ebss[];

void clean_bss() {
    80020a04:	1141                	addi	sp,sp,-16
    80020a06:	e422                	sd	s0,8(sp)
    80020a08:	0800                	addi	s0,sp,16
    char* p;
    for(p = sbss; p < ebss; ++p)
    80020a0a:	00009717          	auipc	a4,0x9
    80020a0e:	5f670713          	addi	a4,a4,1526 # 8002a000 <idle>
    80020a12:	0006a797          	auipc	a5,0x6a
    80020a16:	5ee78793          	addi	a5,a5,1518 # 8008b000 <ebss>
    80020a1a:	00f77c63          	bgeu	a4,a5,80020a32 <clean_bss+0x2e>
    80020a1e:	87ba                	mv	a5,a4
    80020a20:	0006a717          	auipc	a4,0x6a
    80020a24:	5e070713          	addi	a4,a4,1504 # 8008b000 <ebss>
        *p = 0;
    80020a28:	00078023          	sb	zero,0(a5)
    for(p = sbss; p < ebss; ++p)
    80020a2c:	0785                	addi	a5,a5,1
    80020a2e:	fee79de3          	bne	a5,a4,80020a28 <clean_bss+0x24>
}
    80020a32:	6422                	ld	s0,8(sp)
    80020a34:	0141                	addi	sp,sp,16
    80020a36:	8082                	ret

0000000080020a38 <show_memory_layout>:

void show_memory_layout() {
    80020a38:	1141                	addi	sp,sp,-16
    80020a3a:	e406                	sd	ra,8(sp)
    80020a3c:	e022                	sd	s0,0(sp)
    80020a3e:	0800                	addi	s0,sp,16
    printf("\n");
    80020a40:	00005517          	auipc	a0,0x5
    80020a44:	72050513          	addi	a0,a0,1824 # 80026160 <digits+0x118>
    80020a48:	00000097          	auipc	ra,0x0
    80020a4c:	97e080e7          	jalr	-1666(ra) # 800203c6 <printf>
    printf("stext: %p\n", stext);
    80020a50:	fffff597          	auipc	a1,0xfffff
    80020a54:	5b058593          	addi	a1,a1,1456 # 80020000 <_entry>
    80020a58:	00005517          	auipc	a0,0x5
    80020a5c:	66850513          	addi	a0,a0,1640 # 800260c0 <digits+0x78>
    80020a60:	00000097          	auipc	ra,0x0
    80020a64:	966080e7          	jalr	-1690(ra) # 800203c6 <printf>
    printf("etext: %p\n", etext);
    80020a68:	00005597          	auipc	a1,0x5
    80020a6c:	59858593          	addi	a1,a1,1432 # 80026000 <etext>
    80020a70:	00005517          	auipc	a0,0x5
    80020a74:	66050513          	addi	a0,a0,1632 # 800260d0 <digits+0x88>
    80020a78:	00000097          	auipc	ra,0x0
    80020a7c:	94e080e7          	jalr	-1714(ra) # 800203c6 <printf>
    printf("sroda: %p\n", srodata);
    80020a80:	00005597          	auipc	a1,0x5
    80020a84:	58058593          	addi	a1,a1,1408 # 80026000 <etext>
    80020a88:	00005517          	auipc	a0,0x5
    80020a8c:	65850513          	addi	a0,a0,1624 # 800260e0 <digits+0x98>
    80020a90:	00000097          	auipc	ra,0x0
    80020a94:	936080e7          	jalr	-1738(ra) # 800203c6 <printf>
    printf("eroda: %p\n", erodata);
    80020a98:	00006597          	auipc	a1,0x6
    80020a9c:	56858593          	addi	a1,a1,1384 # 80027000 <_app_num>
    80020aa0:	00005517          	auipc	a0,0x5
    80020aa4:	65050513          	addi	a0,a0,1616 # 800260f0 <digits+0xa8>
    80020aa8:	00000097          	auipc	ra,0x0
    80020aac:	91e080e7          	jalr	-1762(ra) # 800203c6 <printf>
    printf("sdata: %p\n", sdata);
    80020ab0:	00006597          	auipc	a1,0x6
    80020ab4:	55058593          	addi	a1,a1,1360 # 80027000 <_app_num>
    80020ab8:	00005517          	auipc	a0,0x5
    80020abc:	64850513          	addi	a0,a0,1608 # 80026100 <digits+0xb8>
    80020ac0:	00000097          	auipc	ra,0x0
    80020ac4:	906080e7          	jalr	-1786(ra) # 800203c6 <printf>
    printf("edata: %p\n", edata);
    80020ac8:	00007597          	auipc	a1,0x7
    80020acc:	53858593          	addi	a1,a1,1336 # 80028000 <boot_stack>
    80020ad0:	00005517          	auipc	a0,0x5
    80020ad4:	64050513          	addi	a0,a0,1600 # 80026110 <digits+0xc8>
    80020ad8:	00000097          	auipc	ra,0x0
    80020adc:	8ee080e7          	jalr	-1810(ra) # 800203c6 <printf>
    printf("sbss : %p\n", sbss);
    80020ae0:	00009597          	auipc	a1,0x9
    80020ae4:	52058593          	addi	a1,a1,1312 # 8002a000 <idle>
    80020ae8:	00005517          	auipc	a0,0x5
    80020aec:	63850513          	addi	a0,a0,1592 # 80026120 <digits+0xd8>
    80020af0:	00000097          	auipc	ra,0x0
    80020af4:	8d6080e7          	jalr	-1834(ra) # 800203c6 <printf>
    printf("ebss : %p\n", ebss);
    80020af8:	0006a597          	auipc	a1,0x6a
    80020afc:	50858593          	addi	a1,a1,1288 # 8008b000 <ebss>
    80020b00:	00005517          	auipc	a0,0x5
    80020b04:	63050513          	addi	a0,a0,1584 # 80026130 <digits+0xe8>
    80020b08:	00000097          	auipc	ra,0x0
    80020b0c:	8be080e7          	jalr	-1858(ra) # 800203c6 <printf>
    printf("\n");
    80020b10:	00005517          	auipc	a0,0x5
    80020b14:	65050513          	addi	a0,a0,1616 # 80026160 <digits+0x118>
    80020b18:	00000097          	auipc	ra,0x0
    80020b1c:	8ae080e7          	jalr	-1874(ra) # 800203c6 <printf>
}
    80020b20:	60a2                	ld	ra,8(sp)
    80020b22:	6402                	ld	s0,0(sp)
    80020b24:	0141                	addi	sp,sp,16
    80020b26:	8082                	ret

0000000080020b28 <main>:

void main() {
    80020b28:	1141                	addi	sp,sp,-16
    80020b2a:	e406                	sd	ra,8(sp)
    80020b2c:	e022                	sd	s0,0(sp)
    80020b2e:	0800                	addi	s0,sp,16
    clean_bss();
    80020b30:	00000097          	auipc	ra,0x0
    80020b34:	ed4080e7          	jalr	-300(ra) # 80020a04 <clean_bss>
    printf("GOGOGO!\n");
    80020b38:	00005517          	auipc	a0,0x5
    80020b3c:	60850513          	addi	a0,a0,1544 # 80026140 <digits+0xf8>
    80020b40:	00000097          	auipc	ra,0x0
    80020b44:	886080e7          	jalr	-1914(ra) # 800203c6 <printf>
    trapinit();
    80020b48:	00000097          	auipc	ra,0x0
    80020b4c:	a2c080e7          	jalr	-1492(ra) # 80020574 <trapinit>
    batchinit();
    80020b50:	00000097          	auipc	ra,0x0
    80020b54:	d02080e7          	jalr	-766(ra) # 80020852 <batchinit>
    procinit();
    80020b58:	00000097          	auipc	ra,0x0
    80020b5c:	03c080e7          	jalr	60(ra) # 80020b94 <procinit>
    run_all_app();
    80020b60:	00000097          	auipc	ra,0x0
    80020b64:	d3c080e7          	jalr	-708(ra) # 8002089c <run_all_app>
    printf("start scheduler!\n");
    80020b68:	00005517          	auipc	a0,0x5
    80020b6c:	5e850513          	addi	a0,a0,1512 # 80026150 <digits+0x108>
    80020b70:	00000097          	auipc	ra,0x0
    80020b74:	856080e7          	jalr	-1962(ra) # 800203c6 <printf>
    scheduler();
    80020b78:	00000097          	auipc	ra,0x0
    80020b7c:	13e080e7          	jalr	318(ra) # 80020cb6 <scheduler>

0000000080020b80 <curr_proc>:
extern char boot_stack[];
struct proc* current_proc;
struct proc idle;


struct proc* curr_proc() {
    80020b80:	1141                	addi	sp,sp,-16
    80020b82:	e422                	sd	s0,8(sp)
    80020b84:	0800                	addi	s0,sp,16
    return current_proc;
}
    80020b86:	0006a517          	auipc	a0,0x6a
    80020b8a:	eaa53503          	ld	a0,-342(a0) # 8008aa30 <current_proc>
    80020b8e:	6422                	ld	s0,8(sp)
    80020b90:	0141                	addi	sp,sp,16
    80020b92:	8082                	ret

0000000080020b94 <procinit>:

void
procinit(void)
{
    80020b94:	1141                	addi	sp,sp,-16
    80020b96:	e422                	sd	s0,8(sp)
    80020b98:	0800                	addi	s0,sp,16
    struct proc *p;
    for(p = pool; p < &pool[NPROC]; p++) {
    80020b9a:	00069717          	auipc	a4,0x69
    80020b9e:	4fe70713          	addi	a4,a4,1278 # 8008a098 <pool>
        p->state = UNUSED;
        p->kstack = (uint64)kstack[p - pool];
    80020ba2:	8e3a                	mv	t3,a4
    80020ba4:	00005317          	auipc	t1,0x5
    80020ba8:	63433303          	ld	t1,1588(t1) # 800261d8 <SBI_SET_TIMER+0x8>
    80020bac:	00059897          	auipc	a7,0x59
    80020bb0:	4ec88893          	addi	a7,a7,1260 # 8007a098 <kstack>
        p->ustack = (uint64)ustack[p - pool];
    80020bb4:	00019817          	auipc	a6,0x19
    80020bb8:	4e480813          	addi	a6,a6,1252 # 8003a098 <ustack>
        p->trapframe = (struct trapframe*)trapframe[p - pool];
    80020bbc:	00009517          	auipc	a0,0x9
    80020bc0:	4dc50513          	addi	a0,a0,1244 # 8002a098 <trapframe>
    for(p = pool; p < &pool[NPROC]; p++) {
    80020bc4:	0006a597          	auipc	a1,0x6a
    80020bc8:	e5458593          	addi	a1,a1,-428 # 8008aa18 <fin>
        p->state = UNUSED;
    80020bcc:	00072023          	sw	zero,0(a4)
        p->kstack = (uint64)kstack[p - pool];
    80020bd0:	41c707b3          	sub	a5,a4,t3
    80020bd4:	878d                	srai	a5,a5,0x3
    80020bd6:	026787b3          	mul	a5,a5,t1
    80020bda:	00c79693          	slli	a3,a5,0xc
    80020bde:	01168633          	add	a2,a3,a7
    80020be2:	ef10                	sd	a2,24(a4)
        p->ustack = (uint64)ustack[p - pool];
    80020be4:	07ba                	slli	a5,a5,0xe
    80020be6:	97c2                	add	a5,a5,a6
    80020be8:	eb1c                	sd	a5,16(a4)
        p->trapframe = (struct trapframe*)trapframe[p - pool];
    80020bea:	96aa                	add	a3,a3,a0
    80020bec:	f314                	sd	a3,32(a4)
    for(p = pool; p < &pool[NPROC]; p++) {
    80020bee:	09870713          	addi	a4,a4,152
    80020bf2:	fcb71de3          	bne	a4,a1,80020bcc <procinit+0x38>
    }
    idle.kstack = (uint64)boot_stack;
    80020bf6:	00009797          	auipc	a5,0x9
    80020bfa:	40a78793          	addi	a5,a5,1034 # 8002a000 <idle>
    80020bfe:	00007717          	auipc	a4,0x7
    80020c02:	40270713          	addi	a4,a4,1026 # 80028000 <boot_stack>
    80020c06:	ef98                	sd	a4,24(a5)
    idle.pid = 0;
    80020c08:	0007a423          	sw	zero,8(a5)
    idle.killed = 0;
    80020c0c:	0007a223          	sw	zero,4(a5)
}
    80020c10:	6422                	ld	s0,8(sp)
    80020c12:	0141                	addi	sp,sp,16
    80020c14:	8082                	ret

0000000080020c16 <allocpid>:

int allocpid() {
    80020c16:	1141                	addi	sp,sp,-16
    80020c18:	e422                	sd	s0,8(sp)
    80020c1a:	0800                	addi	s0,sp,16
    static int PID = 1;
    return PID++;
    80020c1c:	00006797          	auipc	a5,0x6
    80020c20:	40478793          	addi	a5,a5,1028 # 80027020 <PID.0>
    80020c24:	4388                	lw	a0,0(a5)
    80020c26:	0015071b          	addiw	a4,a0,1
    80020c2a:	c398                	sw	a4,0(a5)
}
    80020c2c:	6422                	ld	s0,8(sp)
    80020c2e:	0141                	addi	sp,sp,16
    80020c30:	8082                	ret

0000000080020c32 <allocproc>:

struct proc* allocproc(void)
{
    80020c32:	1101                	addi	sp,sp,-32
    80020c34:	ec06                	sd	ra,24(sp)
    80020c36:	e822                	sd	s0,16(sp)
    80020c38:	e426                	sd	s1,8(sp)
    80020c3a:	1000                	addi	s0,sp,32
    struct proc *p;
    for(p = pool; p < &pool[NPROC]; p++) {
    80020c3c:	00069497          	auipc	s1,0x69
    80020c40:	45c48493          	addi	s1,s1,1116 # 8008a098 <pool>
    80020c44:	0006a717          	auipc	a4,0x6a
    80020c48:	dd470713          	addi	a4,a4,-556 # 8008aa18 <fin>
        if(p->state == UNUSED) {
    80020c4c:	409c                	lw	a5,0(s1)
    80020c4e:	cf81                	beqz	a5,80020c66 <allocproc+0x34>
    for(p = pool; p < &pool[NPROC]; p++) {
    80020c50:	09848493          	addi	s1,s1,152
    80020c54:	fee49ce3          	bne	s1,a4,80020c4c <allocproc+0x1a>
            goto found;
        }
    }
    return 0;
    80020c58:	4481                	li	s1,0
    memset(p->trapframe, 0, PAGE_SIZE);
    memset((void*)p->kstack, 0, PAGE_SIZE);
    p->context.ra = (uint64)usertrapret;
    p->context.sp = p->kstack + PAGE_SIZE;
    return p;
}
    80020c5a:	8526                	mv	a0,s1
    80020c5c:	60e2                	ld	ra,24(sp)
    80020c5e:	6442                	ld	s0,16(sp)
    80020c60:	64a2                	ld	s1,8(sp)
    80020c62:	6105                	addi	sp,sp,32
    80020c64:	8082                	ret
    p->pid = allocpid();
    80020c66:	00000097          	auipc	ra,0x0
    80020c6a:	fb0080e7          	jalr	-80(ra) # 80020c16 <allocpid>
    80020c6e:	c488                	sw	a0,8(s1)
    p->state = USED;
    80020c70:	4785                	li	a5,1
    80020c72:	c09c                	sw	a5,0(s1)
    memset(&p->context, 0, sizeof(p->context));
    80020c74:	07000613          	li	a2,112
    80020c78:	4581                	li	a1,0
    80020c7a:	02848513          	addi	a0,s1,40
    80020c7e:	00000097          	auipc	ra,0x0
    80020c82:	9e2080e7          	jalr	-1566(ra) # 80020660 <memset>
    memset(p->trapframe, 0, PAGE_SIZE);
    80020c86:	6605                	lui	a2,0x1
    80020c88:	4581                	li	a1,0
    80020c8a:	7088                	ld	a0,32(s1)
    80020c8c:	00000097          	auipc	ra,0x0
    80020c90:	9d4080e7          	jalr	-1580(ra) # 80020660 <memset>
    memset((void*)p->kstack, 0, PAGE_SIZE);
    80020c94:	6605                	lui	a2,0x1
    80020c96:	4581                	li	a1,0
    80020c98:	6c88                	ld	a0,24(s1)
    80020c9a:	00000097          	auipc	ra,0x0
    80020c9e:	9c6080e7          	jalr	-1594(ra) # 80020660 <memset>
    p->context.ra = (uint64)usertrapret;
    80020ca2:	00000797          	auipc	a5,0x0
    80020ca6:	8ec78793          	addi	a5,a5,-1812 # 8002058e <usertrapret>
    80020caa:	f49c                	sd	a5,40(s1)
    p->context.sp = p->kstack + PAGE_SIZE;
    80020cac:	6c9c                	ld	a5,24(s1)
    80020cae:	6705                	lui	a4,0x1
    80020cb0:	97ba                	add	a5,a5,a4
    80020cb2:	f89c                	sd	a5,48(s1)
    return p;
    80020cb4:	b75d                	j	80020c5a <allocproc+0x28>

0000000080020cb6 <scheduler>:

void
scheduler(void)
{
    80020cb6:	7139                	addi	sp,sp,-64
    80020cb8:	fc06                	sd	ra,56(sp)
    80020cba:	f822                	sd	s0,48(sp)
    80020cbc:	f426                	sd	s1,40(sp)
    80020cbe:	f04a                	sd	s2,32(sp)
    80020cc0:	ec4e                	sd	s3,24(sp)
    80020cc2:	e852                	sd	s4,16(sp)
    80020cc4:	e456                	sd	s5,8(sp)
    80020cc6:	e05a                	sd	s6,0(sp)
    80020cc8:	0080                	addi	s0,sp,64
    struct proc *p;

    for(;;){
        for(p = pool; p < &pool[NPROC]; p++) {
            if(p->state == RUNNABLE) {
    80020cca:	498d                	li	s3,3
                p->state = RUNNING;
    80020ccc:	4b11                	li	s6,4
                current_proc = p;
    80020cce:	0006aa97          	auipc	s5,0x6a
    80020cd2:	d62a8a93          	addi	s5,s5,-670 # 8008aa30 <current_proc>
                swtch(&idle.context, &p->context);
    80020cd6:	00009a17          	auipc	s4,0x9
    80020cda:	352a0a13          	addi	s4,s4,850 # 8002a028 <idle+0x28>
        for(p = pool; p < &pool[NPROC]; p++) {
    80020cde:	0006a917          	auipc	s2,0x6a
    80020ce2:	d3a90913          	addi	s2,s2,-710 # 8008aa18 <fin>
    80020ce6:	00069497          	auipc	s1,0x69
    80020cea:	3b248493          	addi	s1,s1,946 # 8008a098 <pool>
    80020cee:	a029                	j	80020cf8 <scheduler+0x42>
    80020cf0:	09848493          	addi	s1,s1,152
    80020cf4:	ff2489e3          	beq	s1,s2,80020ce6 <scheduler+0x30>
            if(p->state == RUNNABLE) {
    80020cf8:	409c                	lw	a5,0(s1)
    80020cfa:	ff379be3          	bne	a5,s3,80020cf0 <scheduler+0x3a>
                p->state = RUNNING;
    80020cfe:	0164a023          	sw	s6,0(s1)
                current_proc = p;
    80020d02:	009ab023          	sd	s1,0(s5)
                swtch(&idle.context, &p->context);
    80020d06:	02848593          	addi	a1,s1,40
    80020d0a:	8552                	mv	a0,s4
    80020d0c:	fffff097          	auipc	ra,0xfffff
    80020d10:	300080e7          	jalr	768(ra) # 8002000c <swtch>
    80020d14:	bff1                	j	80020cf0 <scheduler+0x3a>

0000000080020d16 <sched>:
// be proc->intena and proc->noff, but that would
// break in the few places where a lock is held but
// there's no process.
void
sched(void)
{
    80020d16:	1101                	addi	sp,sp,-32
    80020d18:	ec06                	sd	ra,24(sp)
    80020d1a:	e822                	sd	s0,16(sp)
    80020d1c:	e426                	sd	s1,8(sp)
    80020d1e:	1000                	addi	s0,sp,32
    return current_proc;
    80020d20:	0006a497          	auipc	s1,0x6a
    80020d24:	d104b483          	ld	s1,-752(s1) # 8008aa30 <current_proc>
    struct proc *p = curr_proc();
    if(p->state == RUNNING)
    80020d28:	4098                	lw	a4,0(s1)
    80020d2a:	4791                	li	a5,4
    80020d2c:	02f70163          	beq	a4,a5,80020d4e <sched+0x38>
        panic("sched running");
    swtch(&p->context, &idle.context);
    80020d30:	00009597          	auipc	a1,0x9
    80020d34:	2f858593          	addi	a1,a1,760 # 8002a028 <idle+0x28>
    80020d38:	02848513          	addi	a0,s1,40
    80020d3c:	fffff097          	auipc	ra,0xfffff
    80020d40:	2d0080e7          	jalr	720(ra) # 8002000c <swtch>
}
    80020d44:	60e2                	ld	ra,24(sp)
    80020d46:	6442                	ld	s0,16(sp)
    80020d48:	64a2                	ld	s1,8(sp)
    80020d4a:	6105                	addi	sp,sp,32
    80020d4c:	8082                	ret
        panic("sched running");
    80020d4e:	00005517          	auipc	a0,0x5
    80020d52:	41a50513          	addi	a0,a0,1050 # 80026168 <digits+0x120>
    80020d56:	fffff097          	auipc	ra,0xfffff
    80020d5a:	444080e7          	jalr	1092(ra) # 8002019a <panic>
    80020d5e:	bfc9                	j	80020d30 <sched+0x1a>

0000000080020d60 <yield>:

// Give up the CPU for one scheduling round.
void yield(void)
{
    80020d60:	1141                	addi	sp,sp,-16
    80020d62:	e406                	sd	ra,8(sp)
    80020d64:	e022                	sd	s0,0(sp)
    80020d66:	0800                	addi	s0,sp,16
    current_proc->state = RUNNABLE;
    80020d68:	0006a797          	auipc	a5,0x6a
    80020d6c:	cc87b783          	ld	a5,-824(a5) # 8008aa30 <current_proc>
    80020d70:	470d                	li	a4,3
    80020d72:	c398                	sw	a4,0(a5)
    sched();
    80020d74:	00000097          	auipc	ra,0x0
    80020d78:	fa2080e7          	jalr	-94(ra) # 80020d16 <sched>
}
    80020d7c:	60a2                	ld	ra,8(sp)
    80020d7e:	6402                	ld	s0,0(sp)
    80020d80:	0141                	addi	sp,sp,16
    80020d82:	8082                	ret

0000000080020d84 <exit>:

void exit(int code) {
    80020d84:	1101                	addi	sp,sp,-32
    80020d86:	ec06                	sd	ra,24(sp)
    80020d88:	e822                	sd	s0,16(sp)
    80020d8a:	e426                	sd	s1,8(sp)
    80020d8c:	1000                	addi	s0,sp,32
    80020d8e:	862a                	mv	a2,a0
    return current_proc;
    80020d90:	0006a497          	auipc	s1,0x6a
    80020d94:	ca04b483          	ld	s1,-864(s1) # 8008aa30 <current_proc>
    struct proc *p = curr_proc();
    printf("proc %d exit with %d\n", p->pid, code);
    80020d98:	448c                	lw	a1,8(s1)
    80020d9a:	00005517          	auipc	a0,0x5
    80020d9e:	3de50513          	addi	a0,a0,990 # 80026178 <digits+0x130>
    80020da2:	fffff097          	auipc	ra,0xfffff
    80020da6:	624080e7          	jalr	1572(ra) # 800203c6 <printf>
    p->state = UNUSED;
    80020daa:	0004a023          	sw	zero,0(s1)
    finished();
    80020dae:	00000097          	auipc	ra,0x0
    80020db2:	a60080e7          	jalr	-1440(ra) # 8002080e <finished>
    sched();
    80020db6:	00000097          	auipc	ra,0x0
    80020dba:	f60080e7          	jalr	-160(ra) # 80020d16 <sched>
    80020dbe:	60e2                	ld	ra,24(sp)
    80020dc0:	6442                	ld	s0,16(sp)
    80020dc2:	64a2                	ld	s1,8(sp)
    80020dc4:	6105                	addi	sp,sp,32
    80020dc6:	8082                	ret
	...

0000000080020dd0 <app_0_start>:
    80020dd0:	1141                	addi	sp,sp,-16
    80020dd2:	00001517          	auipc	a0,0x1
    80020dd6:	f5e50513          	addi	a0,a0,-162 # 80021d30 <app_0_start+0xf60>
    80020dda:	e406                	sd	ra,8(sp)
    80020ddc:	253000ef          	jal	ra,8002182e <app_0_start+0xa5e>
    80020de0:	739000ef          	jal	ra,80021d18 <app_0_start+0xf48>
    80020de4:	00001517          	auipc	a0,0x1
    80020de8:	f5c50513          	addi	a0,a0,-164 # 80021d40 <app_0_start+0xf70>
    80020dec:	243000ef          	jal	ra,8002182e <app_0_start+0xa5e>
    80020df0:	00001517          	auipc	a0,0x1
    80020df4:	f5050513          	addi	a0,a0,-176 # 80021d40 <app_0_start+0xf70>
    80020df8:	237000ef          	jal	ra,8002182e <app_0_start+0xa5e>
    80020dfc:	71d000ef          	jal	ra,80021d18 <app_0_start+0xf48>
    80020e00:	00001517          	auipc	a0,0x1
    80020e04:	f4050513          	addi	a0,a0,-192 # 80021d40 <app_0_start+0xf70>
    80020e08:	227000ef          	jal	ra,8002182e <app_0_start+0xa5e>
    80020e0c:	60a2                	ld	ra,8(sp)
    80020e0e:	4501                	li	a0,0
    80020e10:	0141                	addi	sp,sp,16
    80020e12:	8082                	ret
    80020e14:	850a                	mv	a0,sp
    80020e16:	0040006f          	j	80020e1a <app_0_start+0x4a>
    80020e1a:	1141                	addi	sp,sp,-16
    80020e1c:	e406                	sd	ra,8(sp)
    80020e1e:	fb3ff0ef          	jal	ra,80020dd0 <app_0_start>
    80020e22:	703000ef          	jal	ra,80021d24 <app_0_start+0xf54>
    80020e26:	60a2                	ld	ra,8(sp)
    80020e28:	4501                	li	a0,0
    80020e2a:	0141                	addi	sp,sp,16
    80020e2c:	8082                	ret
    80020e2e:	35dd                	addiw	a1,a1,-9
    80020e30:	0005871b          	sext.w	a4,a1
    80020e34:	47bd                	li	a5,15
    80020e36:	02e7e363          	bltu	a5,a4,80020e5c <app_0_start+0x8c>
    80020e3a:	1582                	slli	a1,a1,0x20
    80020e3c:	9181                	srli	a1,a1,0x20
    80020e3e:	00001717          	auipc	a4,0x1
    80020e42:	f1270713          	addi	a4,a4,-238 # 80021d50 <app_0_start+0xf80>
    80020e46:	058a                	slli	a1,a1,0x2
    80020e48:	95ba                	add	a1,a1,a4
    80020e4a:	419c                	lw	a5,0(a1)
    80020e4c:	97ba                	add	a5,a5,a4
    80020e4e:	8782                	jr	a5
    80020e50:	621c                	ld	a5,0(a2)
    80020e52:	00878713          	addi	a4,a5,8
    80020e56:	e218                	sd	a4,0(a2)
    80020e58:	639c                	ld	a5,0(a5)
    80020e5a:	e11c                	sd	a5,0(a0)
    80020e5c:	8082                	ret
    80020e5e:	621c                	ld	a5,0(a2)
    80020e60:	6398                	ld	a4,0(a5)
    80020e62:	07a1                	addi	a5,a5,8
    80020e64:	e21c                	sd	a5,0(a2)
    80020e66:	e118                	sd	a4,0(a0)
    80020e68:	8082                	ret
    80020e6a:	621c                	ld	a5,0(a2)
    80020e6c:	4398                	lw	a4,0(a5)
    80020e6e:	07a1                	addi	a5,a5,8
    80020e70:	e21c                	sd	a5,0(a2)
    80020e72:	e118                	sd	a4,0(a0)
    80020e74:	8082                	ret
    80020e76:	621c                	ld	a5,0(a2)
    80020e78:	0007e703          	lwu	a4,0(a5)
    80020e7c:	07a1                	addi	a5,a5,8
    80020e7e:	e21c                	sd	a5,0(a2)
    80020e80:	e118                	sd	a4,0(a0)
    80020e82:	8082                	ret
    80020e84:	621c                	ld	a5,0(a2)
    80020e86:	0007c703          	lbu	a4,0(a5)
    80020e8a:	07a1                	addi	a5,a5,8
    80020e8c:	e21c                	sd	a5,0(a2)
    80020e8e:	e118                	sd	a4,0(a0)
    80020e90:	8082                	ret
    80020e92:	621c                	ld	a5,0(a2)
    80020e94:	00078703          	lb	a4,0(a5)
    80020e98:	07a1                	addi	a5,a5,8
    80020e9a:	e21c                	sd	a5,0(a2)
    80020e9c:	e118                	sd	a4,0(a0)
    80020e9e:	8082                	ret
    80020ea0:	621c                	ld	a5,0(a2)
    80020ea2:	0007d703          	lhu	a4,0(a5)
    80020ea6:	07a1                	addi	a5,a5,8
    80020ea8:	e21c                	sd	a5,0(a2)
    80020eaa:	e118                	sd	a4,0(a0)
    80020eac:	8082                	ret
    80020eae:	621c                	ld	a5,0(a2)
    80020eb0:	00079703          	lh	a4,0(a5)
    80020eb4:	07a1                	addi	a5,a5,8
    80020eb6:	e21c                	sd	a5,0(a2)
    80020eb8:	e118                	sd	a4,0(a0)
    80020eba:	8082                	ret
    80020ebc:	df010113          	addi	sp,sp,-528 # 80027df0 <PID.0+0xdd0>
    80020ec0:	fbca                	sd	s2,496(sp)
    80020ec2:	20113423          	sd	ra,520(sp)
    80020ec6:	20813023          	sd	s0,512(sp)
    80020eca:	ffa6                	sd	s1,504(sp)
    80020ecc:	f7ce                	sd	s3,488(sp)
    80020ece:	f3d2                	sd	s4,480(sp)
    80020ed0:	efd6                	sd	s5,472(sp)
    80020ed2:	ebda                	sd	s6,464(sp)
    80020ed4:	e7de                	sd	s7,456(sp)
    80020ed6:	e3e2                	sd	s8,448(sp)
    80020ed8:	ff66                	sd	s9,440(sp)
    80020eda:	fb6a                	sd	s10,432(sp)
    80020edc:	f76e                	sd	s11,424(sp)
    80020ede:	892e                	mv	s2,a1
    80020ee0:	0005c583          	lbu	a1,0(a1)
    80020ee4:	ec32                	sd	a2,24(sp)
    80020ee6:	f836                	sd	a3,48(sp)
    80020ee8:	f03a                	sd	a4,32(sp)
    80020eea:	e802                	sd	zero,16(sp)
    80020eec:	7e058963          	beqz	a1,800216de <app_0_start+0x90e>
    80020ef0:	0cccdc37          	lui	s8,0xcccd
    80020ef4:	80000bb7          	lui	s7,0x80000
    80020ef8:	6acd                	lui	s5,0x13
    80020efa:	cccc0793          	addi	a5,s8,-820 # ccccccc <_entry-0x73353334>
    80020efe:	89aa                	mv	s3,a0
    80020f00:	4a01                	li	s4,0
    80020f02:	fffbcb93          	not	s7,s7
    80020f06:	889a8a9b          	addiw	s5,s5,-1911
    80020f0a:	e03e                	sd	a5,0(sp)
    80020f0c:	00001b17          	auipc	s6,0x1
    80020f10:	f2cb0b13          	addi	s6,s6,-212 # 80021e38 <app_0_start+0x1068>
    80020f14:	87ca                	mv	a5,s2
    80020f16:	02500713          	li	a4,37
    80020f1a:	12e58f63          	beq	a1,a4,80021058 <app_0_start+0x288>
    80020f1e:	0017c583          	lbu	a1,1(a5)
    80020f22:	0785                	addi	a5,a5,1
    80020f24:	f9fd                	bnez	a1,80020f1a <app_0_start+0x14a>
    80020f26:	412784b3          	sub	s1,a5,s2
    80020f2a:	8c3e                	mv	s8,a5
    80020f2c:	414b8cbb          	subw	s9,s7,s4
    80020f30:	149cce63          	blt	s9,s1,8002108c <app_0_start+0x2bc>
    80020f34:	2481                	sext.w	s1,s1
    80020f36:	00099b63          	bnez	s3,80020f4c <app_0_start+0x17c>
    80020f3a:	cc99                	beqz	s1,80020f58 <app_0_start+0x188>
    80020f3c:	01448a3b          	addw	s4,s1,s4
    80020f40:	000c4583          	lbu	a1,0(s8)
    80020f44:	34058863          	beqz	a1,80021294 <app_0_start+0x4c4>
    80020f48:	8962                	mv	s2,s8
    80020f4a:	b7e9                	j	80020f14 <app_0_start+0x144>
    80020f4c:	8626                	mv	a2,s1
    80020f4e:	85ca                	mv	a1,s2
    80020f50:	854e                	mv	a0,s3
    80020f52:	5b1000ef          	jal	ra,80021d02 <app_0_start+0xf32>
    80020f56:	f0fd                	bnez	s1,80020f3c <app_0_start+0x16c>
    80020f58:	001c4503          	lbu	a0,1(s8)
    80020f5c:	197000ef          	jal	ra,800218f2 <app_0_start+0xb22>
    80020f60:	14050d63          	beqz	a0,800210ba <app_0_start+0x2ea>
    80020f64:	002c4683          	lbu	a3,2(s8)
    80020f68:	02400793          	li	a5,36
    80020f6c:	001c4603          	lbu	a2,1(s8)
    80020f70:	22f68e63          	beq	a3,a5,800211ac <app_0_start+0x3dc>
    80020f74:	57fd                	li	a5,-1
    80020f76:	0c05                	addi	s8,s8,1
    80020f78:	e43e                	sd	a5,8(sp)
    80020f7a:	fe06081b          	addiw	a6,a2,-32
    80020f7e:	46fd                	li	a3,31
    80020f80:	87c2                	mv	a5,a6
    80020f82:	4401                	li	s0,0
    80020f84:	4505                	li	a0,1
    80020f86:	45fd                	li	a1,31
    80020f88:	0106ff63          	bgeu	a3,a6,80020fa6 <app_0_start+0x1d6>
    80020f8c:	a00d                	j	80020fae <app_0_start+0x1de>
    80020f8e:	001c4603          	lbu	a2,1(s8)
    80020f92:	00f517bb          	sllw	a5,a0,a5
    80020f96:	8c5d                	or	s0,s0,a5
    80020f98:	fe06069b          	addiw	a3,a2,-32
    80020f9c:	87b6                	mv	a5,a3
    80020f9e:	0c05                	addi	s8,s8,1
    80020fa0:	2401                	sext.w	s0,s0
    80020fa2:	00d5e663          	bltu	a1,a3,80020fae <app_0_start+0x1de>
    80020fa6:	00fad6bb          	srlw	a3,s5,a5
    80020faa:	8a85                	andi	a3,a3,1
    80020fac:	f2ed                	bnez	a3,80020f8e <app_0_start+0x1be>
    80020fae:	02a00793          	li	a5,42
    80020fb2:	4d81                	li	s11,0
    80020fb4:	22f60763          	beq	a2,a5,800211e2 <app_0_start+0x412>
    80020fb8:	000c4503          	lbu	a0,0(s8)
    80020fbc:	137000ef          	jal	ra,800218f2 <app_0_start+0xb22>
    80020fc0:	c91d                	beqz	a0,80020ff6 <app_0_start+0x226>
    80020fc2:	6782                	ld	a5,0(sp)
    80020fc4:	0fb7e863          	bltu	a5,s11,800210b4 <app_0_start+0x2e4>
    80020fc8:	002d979b          	slliw	a5,s11,0x2
    80020fcc:	000c4683          	lbu	a3,0(s8)
    80020fd0:	01b7883b          	addw	a6,a5,s11
    80020fd4:	0018179b          	slliw	a5,a6,0x1
    80020fd8:	fd06861b          	addiw	a2,a3,-48
    80020fdc:	40fb85bb          	subw	a1,s7,a5
    80020fe0:	5dfd                	li	s11,-1
    80020fe2:	00c5c463          	blt	a1,a2,80020fea <app_0_start+0x21a>
    80020fe6:	00f60dbb          	addw	s11,a2,a5
    80020fea:	0c05                	addi	s8,s8,1
    80020fec:	000c4503          	lbu	a0,0(s8)
    80020ff0:	103000ef          	jal	ra,800218f2 <app_0_start+0xb22>
    80020ff4:	f579                	bnez	a0,80020fc2 <app_0_start+0x1f2>
    80020ff6:	080dcb63          	bltz	s11,8002108c <app_0_start+0x2bc>
    80020ffa:	000c4683          	lbu	a3,0(s8)
    80020ffe:	02e00793          	li	a5,46
    80021002:	0af69f63          	bne	a3,a5,800210c0 <app_0_start+0x2f0>
    80021006:	001c4683          	lbu	a3,1(s8)
    8002100a:	02a00793          	li	a5,42
    8002100e:	16f68363          	beq	a3,a5,80021174 <app_0_start+0x3a4>
    80021012:	001c4503          	lbu	a0,1(s8)
    80021016:	0c05                	addi	s8,s8,1
    80021018:	4d01                	li	s10,0
    8002101a:	0d9000ef          	jal	ra,800218f2 <app_0_start+0xb22>
    8002101e:	c91d                	beqz	a0,80021054 <app_0_start+0x284>
    80021020:	6782                	ld	a5,0(sp)
    80021022:	1ba7ed63          	bltu	a5,s10,800211dc <app_0_start+0x40c>
    80021026:	002d179b          	slliw	a5,s10,0x2
    8002102a:	000c4683          	lbu	a3,0(s8)
    8002102e:	01a78d3b          	addw	s10,a5,s10
    80021032:	001d179b          	slliw	a5,s10,0x1
    80021036:	fd06861b          	addiw	a2,a3,-48
    8002103a:	40fb85bb          	subw	a1,s7,a5
    8002103e:	5d7d                	li	s10,-1
    80021040:	00c5c463          	blt	a1,a2,80021048 <app_0_start+0x278>
    80021044:	00f60d3b          	addw	s10,a2,a5
    80021048:	0c05                	addi	s8,s8,1
    8002104a:	000c4503          	lbu	a0,0(s8)
    8002104e:	0a5000ef          	jal	ra,800218f2 <app_0_start+0xb22>
    80021052:	f579                	bnez	a0,80021020 <app_0_start+0x250>
    80021054:	4885                	li	a7,1
    80021056:	a0bd                	j	800210c4 <app_0_start+0x2f4>
    80021058:	0007c603          	lbu	a2,0(a5)
    8002105c:	8c3e                	mv	s8,a5
    8002105e:	02500693          	li	a3,37
    80021062:	412784b3          	sub	s1,a5,s2
    80021066:	00b60963          	beq	a2,a1,80021078 <app_0_start+0x2a8>
    8002106a:	b5c9                	j	80020f2c <app_0_start+0x15c>
    8002106c:	002c4603          	lbu	a2,2(s8)
    80021070:	0785                	addi	a5,a5,1
    80021072:	0c09                	addi	s8,s8,2
    80021074:	00d61663          	bne	a2,a3,80021080 <app_0_start+0x2b0>
    80021078:	001c4603          	lbu	a2,1(s8)
    8002107c:	fed608e3          	beq	a2,a3,8002106c <app_0_start+0x29c>
    80021080:	412784b3          	sub	s1,a5,s2
    80021084:	414b8cbb          	subw	s9,s7,s4
    80021088:	ea9cd6e3          	bge	s9,s1,80020f34 <app_0_start+0x164>
    8002108c:	5a7d                	li	s4,-1
    8002108e:	20813083          	ld	ra,520(sp)
    80021092:	20013403          	ld	s0,512(sp)
    80021096:	74fe                	ld	s1,504(sp)
    80021098:	795e                	ld	s2,496(sp)
    8002109a:	79be                	ld	s3,488(sp)
    8002109c:	6afe                	ld	s5,472(sp)
    8002109e:	6b5e                	ld	s6,464(sp)
    800210a0:	6bbe                	ld	s7,456(sp)
    800210a2:	6c1e                	ld	s8,448(sp)
    800210a4:	7cfa                	ld	s9,440(sp)
    800210a6:	7d5a                	ld	s10,432(sp)
    800210a8:	7dba                	ld	s11,424(sp)
    800210aa:	8552                	mv	a0,s4
    800210ac:	7a1e                	ld	s4,480(sp)
    800210ae:	21010113          	addi	sp,sp,528
    800210b2:	8082                	ret
    800210b4:	5dfd                	li	s11,-1
    800210b6:	0c05                	addi	s8,s8,1
    800210b8:	bf15                	j	80020fec <app_0_start+0x21c>
    800210ba:	001c4603          	lbu	a2,1(s8)
    800210be:	bd5d                	j	80020f74 <app_0_start+0x1a4>
    800210c0:	4881                	li	a7,0
    800210c2:	5d7d                	li	s10,-1
    800210c4:	4781                	li	a5,0
    800210c6:	03900513          	li	a0,57
    800210ca:	03a00e13          	li	t3,58
    800210ce:	431d                	li	t1,7
    800210d0:	a015                	j	800210f4 <app_0_start+0x324>
    800210d2:	02079693          	slli	a3,a5,0x20
    800210d6:	9281                	srli	a3,a3,0x20
    800210d8:	03c686b3          	mul	a3,a3,t3
    800210dc:	0c05                	addi	s8,s8,1
    800210de:	96da                	add	a3,a3,s6
    800210e0:	96b2                	add	a3,a3,a2
    800210e2:	0006c683          	lbu	a3,0(a3)
    800210e6:	fff6861b          	addiw	a2,a3,-1
    800210ea:	0006859b          	sext.w	a1,a3
    800210ee:	00c36a63          	bltu	t1,a2,80021102 <app_0_start+0x332>
    800210f2:	87ae                	mv	a5,a1
    800210f4:	000c4683          	lbu	a3,0(s8)
    800210f8:	fbf6861b          	addiw	a2,a3,-65
    800210fc:	fcc57be3          	bgeu	a0,a2,800210d2 <app_0_start+0x302>
    80021100:	b771                	j	8002108c <app_0_start+0x2bc>
    80021102:	d5c9                	beqz	a1,8002108c <app_0_start+0x2bc>
    80021104:	466d                	li	a2,27
    80021106:	6722                	ld	a4,8(sp)
    80021108:	0ac58b63          	beq	a1,a2,800211be <app_0_start+0x3ee>
    8002110c:	16074963          	bltz	a4,8002127e <app_0_start+0x4ae>
    80021110:	75c2                	ld	a1,48(sp)
    80021112:	00471613          	slli	a2,a4,0x4
    80021116:	962e                	add	a2,a2,a1
    80021118:	6208                	ld	a0,0(a2)
    8002111a:	660c                	ld	a1,8(a2)
    8002111c:	00271613          	slli	a2,a4,0x2
    80021120:	7702                	ld	a4,32(sp)
    80021122:	f0aa                	sd	a0,96(sp)
    80021124:	f4ae                	sd	a1,104(sp)
    80021126:	963a                	add	a2,a2,a4
    80021128:	c214                	sw	a3,0(a2)
    8002112a:	e0098be3          	beqz	s3,80020f40 <app_0_start+0x170>
    8002112e:	fffc4683          	lbu	a3,-1(s8)
    80021132:	0006861b          	sext.w	a2,a3
    80021136:	c789                	beqz	a5,80021140 <app_0_start+0x370>
    80021138:	8abd                	andi	a3,a3,15
    8002113a:	458d                	li	a1,3
    8002113c:	12b68e63          	beq	a3,a1,80021278 <app_0_start+0x4a8>
    80021140:	03241713          	slli	a4,s0,0x32
    80021144:	00075563          	bgez	a4,8002114e <app_0_start+0x37e>
    80021148:	76c1                	lui	a3,0xffff0
    8002114a:	16fd                	addi	a3,a3,-1
    8002114c:	8c75                	and	s0,s0,a3
    8002114e:	fa86069b          	addiw	a3,a2,-88
    80021152:	0006851b          	sext.w	a0,a3
    80021156:	02000593          	li	a1,32
    8002115a:	18a5e963          	bltu	a1,a0,800212ec <app_0_start+0x51c>
    8002115e:	1682                	slli	a3,a3,0x20
    80021160:	9281                	srli	a3,a3,0x20
    80021162:	00001597          	auipc	a1,0x1
    80021166:	c2e58593          	addi	a1,a1,-978 # 80021d90 <app_0_start+0xfc0>
    8002116a:	068a                	slli	a3,a3,0x2
    8002116c:	96ae                	add	a3,a3,a1
    8002116e:	4294                	lw	a3,0(a3)
    80021170:	96ae                	add	a3,a3,a1
    80021172:	8682                	jr	a3
    80021174:	002c4503          	lbu	a0,2(s8)
    80021178:	77a000ef          	jal	ra,800218f2 <app_0_start+0xb22>
    8002117c:	c519                	beqz	a0,8002118a <app_0_start+0x3ba>
    8002117e:	003c4683          	lbu	a3,3(s8)
    80021182:	02400793          	li	a5,36
    80021186:	0cf68463          	beq	a3,a5,8002124e <app_0_start+0x47e>
    8002118a:	67c2                	ld	a5,16(sp)
    8002118c:	f00790e3          	bnez	a5,8002108c <app_0_start+0x2bc>
    80021190:	08098863          	beqz	s3,80021220 <app_0_start+0x450>
    80021194:	6762                	ld	a4,24(sp)
    80021196:	0c09                	addi	s8,s8,2
    80021198:	631c                	ld	a5,0(a4)
    8002119a:	0007ad03          	lw	s10,0(a5)
    8002119e:	07a1                	addi	a5,a5,8
    800211a0:	e31c                	sd	a5,0(a4)
    800211a2:	fffd4893          	not	a7,s10
    800211a6:	01f8d89b          	srliw	a7,a7,0x1f
    800211aa:	bf29                	j	800210c4 <app_0_start+0x2f4>
    800211ac:	fd06079b          	addiw	a5,a2,-48
    800211b0:	e43e                	sd	a5,8(sp)
    800211b2:	4785                	li	a5,1
    800211b4:	0c0d                	addi	s8,s8,3
    800211b6:	e83e                	sd	a5,16(sp)
    800211b8:	000c4603          	lbu	a2,0(s8)
    800211bc:	bb7d                	j	80020f7a <app_0_start+0x1aa>
    800211be:	f60746e3          	bltz	a4,8002112a <app_0_start+0x35a>
    800211c2:	b5e9                	j	8002108c <app_0_start+0x2bc>
    800211c4:	469d                	li	a3,7
    800211c6:	d6f6ede3          	bltu	a3,a5,80020f40 <app_0_start+0x170>
    800211ca:	00001697          	auipc	a3,0x1
    800211ce:	c4a68693          	addi	a3,a3,-950 # 80021e14 <app_0_start+0x1044>
    800211d2:	078a                	slli	a5,a5,0x2
    800211d4:	97b6                	add	a5,a5,a3
    800211d6:	439c                	lw	a5,0(a5)
    800211d8:	97b6                	add	a5,a5,a3
    800211da:	8782                	jr	a5
    800211dc:	5d7d                	li	s10,-1
    800211de:	0c05                	addi	s8,s8,1
    800211e0:	b5ad                	j	8002104a <app_0_start+0x27a>
    800211e2:	001c4503          	lbu	a0,1(s8)
    800211e6:	70c000ef          	jal	ra,800218f2 <app_0_start+0xb22>
    800211ea:	c519                	beqz	a0,800211f8 <app_0_start+0x428>
    800211ec:	002c4683          	lbu	a3,2(s8)
    800211f0:	02400793          	li	a5,36
    800211f4:	02f68a63          	beq	a3,a5,80021228 <app_0_start+0x458>
    800211f8:	67c2                	ld	a5,16(sp)
    800211fa:	e80799e3          	bnez	a5,8002108c <app_0_start+0x2bc>
    800211fe:	0c05                	addi	s8,s8,1
    80021200:	4d81                	li	s11,0
    80021202:	de098ce3          	beqz	s3,80020ffa <app_0_start+0x22a>
    80021206:	6762                	ld	a4,24(sp)
    80021208:	631c                	ld	a5,0(a4)
    8002120a:	0007ad83          	lw	s11,0(a5)
    8002120e:	07a1                	addi	a5,a5,8
    80021210:	e31c                	sd	a5,0(a4)
    80021212:	de0dd4e3          	bgez	s11,80020ffa <app_0_start+0x22a>
    80021216:	6789                	lui	a5,0x2
    80021218:	8c5d                	or	s0,s0,a5
    8002121a:	41b00dbb          	negw	s11,s11
    8002121e:	bbf1                	j	80020ffa <app_0_start+0x22a>
    80021220:	4d01                	li	s10,0
    80021222:	4885                	li	a7,1
    80021224:	0c09                	addi	s8,s8,2
    80021226:	bd79                	j	800210c4 <app_0_start+0x2f4>
    80021228:	001c4783          	lbu	a5,1(s8)
    8002122c:	7702                	ld	a4,32(sp)
    8002122e:	46a9                	li	a3,10
    80021230:	078a                	slli	a5,a5,0x2
    80021232:	97ba                	add	a5,a5,a4
    80021234:	0c0d                	addi	s8,s8,3
    80021236:	f4d7a023          	sw	a3,-192(a5) # 1f40 <_entry-0x8001e0c0>
    8002123a:	4705                	li	a4,1
    8002123c:	ffec4783          	lbu	a5,-2(s8)
    80021240:	e83a                	sd	a4,16(sp)
    80021242:	7742                	ld	a4,48(sp)
    80021244:	0792                	slli	a5,a5,0x4
    80021246:	97ba                	add	a5,a5,a4
    80021248:	d007ad83          	lw	s11,-768(a5)
    8002124c:	b7d9                	j	80021212 <app_0_start+0x442>
    8002124e:	002c4783          	lbu	a5,2(s8)
    80021252:	7702                	ld	a4,32(sp)
    80021254:	46a9                	li	a3,10
    80021256:	078a                	slli	a5,a5,0x2
    80021258:	97ba                	add	a5,a5,a4
    8002125a:	0c11                	addi	s8,s8,4
    8002125c:	f4d7a023          	sw	a3,-192(a5)
    80021260:	ffec4783          	lbu	a5,-2(s8)
    80021264:	7742                	ld	a4,48(sp)
    80021266:	0792                	slli	a5,a5,0x4
    80021268:	97ba                	add	a5,a5,a4
    8002126a:	d007ad03          	lw	s10,-768(a5)
    8002126e:	fffd4893          	not	a7,s10
    80021272:	01f8d89b          	srliw	a7,a7,0x1f
    80021276:	b5b9                	j	800210c4 <app_0_start+0x2f4>
    80021278:	0df67613          	andi	a2,a2,223
    8002127c:	b5d1                	j	80021140 <app_0_start+0x370>
    8002127e:	f43e                	sd	a5,40(sp)
    80021280:	e446                	sd	a7,8(sp)
    80021282:	44098e63          	beqz	s3,800216de <app_0_start+0x90e>
    80021286:	6662                	ld	a2,24(sp)
    80021288:	1088                	addi	a0,sp,96
    8002128a:	ba5ff0ef          	jal	ra,80020e2e <app_0_start+0x5e>
    8002128e:	68a2                	ld	a7,8(sp)
    80021290:	77a2                	ld	a5,40(sp)
    80021292:	bd71                	j	8002112e <app_0_start+0x35e>
    80021294:	de099de3          	bnez	s3,8002108e <app_0_start+0x2be>
    80021298:	67c2                	ld	a5,16(sp)
    8002129a:	44078263          	beqz	a5,800216de <app_0_start+0x90e>
    8002129e:	7782                	ld	a5,32(sp)
    800212a0:	4485                	li	s1,1
    800212a2:	49a9                	li	s3,10
    800212a4:	00478913          	addi	s2,a5,4
    800212a8:	77c2                	ld	a5,48(sp)
    800212aa:	01078413          	addi	s0,a5,16
    800212ae:	00092583          	lw	a1,0(s2)
    800212b2:	4c058663          	beqz	a1,8002177e <app_0_start+0x9ae>
    800212b6:	6662                	ld	a2,24(sp)
    800212b8:	8522                	mv	a0,s0
    800212ba:	0485                	addi	s1,s1,1
    800212bc:	b73ff0ef          	jal	ra,80020e2e <app_0_start+0x5e>
    800212c0:	0911                	addi	s2,s2,4
    800212c2:	0441                	addi	s0,s0,16
    800212c4:	ff3495e3          	bne	s1,s3,800212ae <app_0_start+0x4de>
    800212c8:	4a05                	li	s4,1
    800212ca:	b3d1                	j	8002108e <app_0_start+0x2be>
    800212cc:	7786                	ld	a5,96(sp)
    800212ce:	0147b023          	sd	s4,0(a5)
    800212d2:	b1bd                	j	80020f40 <app_0_start+0x170>
    800212d4:	7786                	ld	a5,96(sp)
    800212d6:	01478023          	sb	s4,0(a5)
    800212da:	b19d                	j	80020f40 <app_0_start+0x170>
    800212dc:	7786                	ld	a5,96(sp)
    800212de:	01479023          	sh	s4,0(a5)
    800212e2:	b9b9                	j	80020f40 <app_0_start+0x170>
    800212e4:	7786                	ld	a5,96(sp)
    800212e6:	0147a023          	sw	s4,0(a5)
    800212ea:	b999                	j	80020f40 <app_0_start+0x170>
    800212ec:	09b10793          	addi	a5,sp,155
    800212f0:	412787b3          	sub	a5,a5,s2
    800212f4:	f43e                	sd	a5,40(sp)
    800212f6:	3cfd5963          	bge	s10,a5,800216c8 <app_0_start+0x8f8>
    800212fa:	5d22                	lw	s10,40(sp)
    800212fc:	80000537          	lui	a0,0x80000
    80021300:	00001797          	auipc	a5,0x1
    80021304:	d1878793          	addi	a5,a5,-744 # 80022018 <app_0_start+0x1248>
    80021308:	fff54513          	not	a0,a0
    8002130c:	e4be                	sd	a5,72(sp)
    8002130e:	d7a54fe3          	blt	a0,s10,8002108c <app_0_start+0x2bc>
    80021312:	01a487bb          	addw	a5,s1,s10
    80021316:	e0be                	sd	a5,64(sp)
    80021318:	873e                	mv	a4,a5
    8002131a:	87ee                	mv	a5,s11
    8002131c:	00edd363          	bge	s11,a4,80021322 <app_0_start+0x552>
    80021320:	87ba                	mv	a5,a4
    80021322:	0007871b          	sext.w	a4,a5
    80021326:	e8ba                	sd	a4,80(sp)
    80021328:	d6ecc2e3          	blt	s9,a4,8002108c <app_0_start+0x2bc>
    8002132c:	6cc9                	lui	s9,0x12
    8002132e:	019477b3          	and	a5,s0,s9
    80021332:	32079363          	bnez	a5,80021658 <app_0_start+0x888>
    80021336:	87ba                	mv	a5,a4
    80021338:	6706                	ld	a4,64(sp)
    8002133a:	36f75663          	bge	a4,a5,800216a6 <app_0_start+0x8d6>
    8002133e:	40e7883b          	subw	a6,a5,a4
    80021342:	10000613          	li	a2,256
    80021346:	87c2                	mv	a5,a6
    80021348:	86c2                	mv	a3,a6
    8002134a:	01065463          	bge	a2,a6,80021352 <app_0_start+0x582>
    8002134e:	10000793          	li	a5,256
    80021352:	0a010c93          	addi	s9,sp,160
    80021356:	863e                	mv	a2,a5
    80021358:	02000593          	li	a1,32
    8002135c:	8566                	mv	a0,s9
    8002135e:	fc42                	sd	a6,56(sp)
    80021360:	e436                	sd	a3,8(sp)
    80021362:	ecbe                	sd	a5,88(sp)
    80021364:	640000ef          	jal	ra,800219a4 <app_0_start+0xbd4>
    80021368:	7862                	ld	a6,56(sp)
    8002136a:	0ff00613          	li	a2,255
    8002136e:	66a2                	ld	a3,8(sp)
    80021370:	8dc2                	mv	s11,a6
    80021372:	39065e63          	bge	a2,a6,8002170e <app_0_start+0x93e>
    80021376:	87c2                	mv	a5,a6
    80021378:	f007879b          	addiw	a5,a5,-256
    8002137c:	10000613          	li	a2,256
    80021380:	85e6                	mv	a1,s9
    80021382:	854e                	mv	a0,s3
    80021384:	e43e                	sd	a5,8(sp)
    80021386:	fc3e                	sd	a5,56(sp)
    80021388:	17b000ef          	jal	ra,80021d02 <app_0_start+0xf32>
    8002138c:	67a2                	ld	a5,8(sp)
    8002138e:	0ff00713          	li	a4,255
    80021392:	fef763e3          	bltu	a4,a5,80021378 <app_0_start+0x5a8>
    80021396:	863e                	mv	a2,a5
    80021398:	85e6                	mv	a1,s9
    8002139a:	854e                	mv	a0,s3
    8002139c:	167000ef          	jal	ra,80021d02 <app_0_start+0xf32>
    800213a0:	65a6                	ld	a1,72(sp)
    800213a2:	8626                	mv	a2,s1
    800213a4:	854e                	mv	a0,s3
    800213a6:	15d000ef          	jal	ra,80021d02 <app_0_start+0xf32>
    800213aa:	66c1                	lui	a3,0x10
    800213ac:	8ea1                	xor	a3,a3,s0
    800213ae:	6649                	lui	a2,0x12
    800213b0:	8ef1                	and	a3,a3,a2
    800213b2:	ea8d                	bnez	a3,800213e4 <app_0_start+0x614>
    800213b4:	6666                	ld	a2,88(sp)
    800213b6:	03000593          	li	a1,48
    800213ba:	8566                	mv	a0,s9
    800213bc:	5e8000ef          	jal	ra,800219a4 <app_0_start+0xbd4>
    800213c0:	0ff00493          	li	s1,255
    800213c4:	10000613          	li	a2,256
    800213c8:	85e6                	mv	a1,s9
    800213ca:	854e                	mv	a0,s3
    800213cc:	f00d8d9b          	addiw	s11,s11,-256
    800213d0:	133000ef          	jal	ra,80021d02 <app_0_start+0xf32>
    800213d4:	86ee                	mv	a3,s11
    800213d6:	ffb4e7e3          	bltu	s1,s11,800213c4 <app_0_start+0x5f4>
    800213da:	8636                	mv	a2,a3
    800213dc:	85e6                	mv	a1,s9
    800213de:	854e                	mv	a0,s3
    800213e0:	123000ef          	jal	ra,80021d02 <app_0_start+0xf32>
    800213e4:	57a2                	lw	a5,40(sp)
    800213e6:	05a7d963          	bge	a5,s10,80021438 <app_0_start+0x668>
    800213ea:	40fd0d3b          	subw	s10,s10,a5
    800213ee:	10000693          	li	a3,256
    800213f2:	866a                	mv	a2,s10
    800213f4:	8dea                	mv	s11,s10
    800213f6:	01a6d463          	bge	a3,s10,800213fe <app_0_start+0x62e>
    800213fa:	10000613          	li	a2,256
    800213fe:	0a010c93          	addi	s9,sp,160
    80021402:	03000593          	li	a1,48
    80021406:	8566                	mv	a0,s9
    80021408:	59c000ef          	jal	ra,800219a4 <app_0_start+0xbd4>
    8002140c:	0ff00693          	li	a3,255
    80021410:	01a6df63          	bge	a3,s10,8002142e <app_0_start+0x65e>
    80021414:	0ff00493          	li	s1,255
    80021418:	10000613          	li	a2,256
    8002141c:	85e6                	mv	a1,s9
    8002141e:	854e                	mv	a0,s3
    80021420:	f00d0d1b          	addiw	s10,s10,-256
    80021424:	0df000ef          	jal	ra,80021d02 <app_0_start+0xf32>
    80021428:	8dea                	mv	s11,s10
    8002142a:	ffa4e7e3          	bltu	s1,s10,80021418 <app_0_start+0x648>
    8002142e:	866e                	mv	a2,s11
    80021430:	85e6                	mv	a1,s9
    80021432:	854e                	mv	a0,s3
    80021434:	0cf000ef          	jal	ra,80021d02 <app_0_start+0xf32>
    80021438:	7622                	ld	a2,40(sp)
    8002143a:	85ca                	mv	a1,s2
    8002143c:	854e                	mv	a0,s3
    8002143e:	0c5000ef          	jal	ra,80021d02 <app_0_start+0xf32>
    80021442:	6746                	ld	a4,80(sp)
    80021444:	6789                	lui	a5,0x2
    80021446:	8fa1                	xor	a5,a5,s0
    80021448:	66c9                	lui	a3,0x12
    8002144a:	8ff5                	and	a5,a5,a3
    8002144c:	01470a3b          	addw	s4,a4,s4
    80021450:	ae0798e3          	bnez	a5,80020f40 <app_0_start+0x170>
    80021454:	87ba                	mv	a5,a4
    80021456:	6706                	ld	a4,64(sp)
    80021458:	aef754e3          	bge	a4,a5,80020f40 <app_0_start+0x170>
    8002145c:	40e784bb          	subw	s1,a5,a4
    80021460:	10000793          	li	a5,256
    80021464:	8626                	mv	a2,s1
    80021466:	8926                	mv	s2,s1
    80021468:	0097d463          	bge	a5,s1,80021470 <app_0_start+0x6a0>
    8002146c:	10000613          	li	a2,256
    80021470:	0a010c93          	addi	s9,sp,160
    80021474:	02000593          	li	a1,32
    80021478:	8566                	mv	a0,s9
    8002147a:	52a000ef          	jal	ra,800219a4 <app_0_start+0xbd4>
    8002147e:	0ff00793          	li	a5,255
    80021482:	0097df63          	bge	a5,s1,800214a0 <app_0_start+0x6d0>
    80021486:	0ff00413          	li	s0,255
    8002148a:	10000613          	li	a2,256
    8002148e:	85e6                	mv	a1,s9
    80021490:	854e                	mv	a0,s3
    80021492:	f004849b          	addiw	s1,s1,-256
    80021496:	06d000ef          	jal	ra,80021d02 <app_0_start+0xf32>
    8002149a:	8926                	mv	s2,s1
    8002149c:	fe9467e3          	bltu	s0,s1,8002148a <app_0_start+0x6ba>
    800214a0:	864a                	mv	a2,s2
    800214a2:	85e6                	mv	a1,s9
    800214a4:	854e                	mv	a0,s3
    800214a6:	05d000ef          	jal	ra,80021d02 <app_0_start+0xf32>
    800214aa:	bc59                	j	80020f40 <app_0_start+0x170>
    800214ac:	02067513          	andi	a0,a2,32
    800214b0:	2501                	sext.w	a0,a0
    800214b2:	7786                	ld	a5,96(sp)
    800214b4:	1e078f63          	beqz	a5,800216b2 <app_0_start+0x8e2>
    800214b8:	09b10593          	addi	a1,sp,155
    800214bc:	0185151b          	slliw	a0,a0,0x18
    800214c0:	4185551b          	sraiw	a0,a0,0x18
    800214c4:	892e                	mv	s2,a1
    800214c6:	00f7f693          	andi	a3,a5,15
    800214ca:	96da                	add	a3,a3,s6
    800214cc:	1d06c683          	lbu	a3,464(a3) # 121d0 <_entry-0x8000de30>
    800214d0:	197d                	addi	s2,s2,-1
    800214d2:	8391                	srli	a5,a5,0x4
    800214d4:	8ec9                	or	a3,a3,a0
    800214d6:	00d90023          	sb	a3,0(s2)
    800214da:	f7f5                	bnez	a5,800214c6 <app_0_start+0x6f6>
    800214dc:	00847793          	andi	a5,s0,8
    800214e0:	20079a63          	bnez	a5,800216f4 <app_0_start+0x924>
    800214e4:	80000537          	lui	a0,0x80000
    800214e8:	00001797          	auipc	a5,0x1
    800214ec:	b3078793          	addi	a5,a5,-1232 # 80022018 <app_0_start+0x1248>
    800214f0:	fff54513          	not	a0,a0
    800214f4:	e4be                	sd	a5,72(sp)
    800214f6:	0c089e63          	bnez	a7,800215d2 <app_0_start+0x802>
    800214fa:	7786                	ld	a5,96(sp)
    800214fc:	41258733          	sub	a4,a1,s2
    80021500:	0017b793          	seqz	a5,a5
    80021504:	f43a                	sd	a4,40(sp)
    80021506:	97ba                	add	a5,a5,a4
    80021508:	01a7d363          	bge	a5,s10,8002150e <app_0_start+0x73e>
    8002150c:	87ea                	mv	a5,s10
    8002150e:	00078d1b          	sext.w	s10,a5
    80021512:	77a2                	ld	a5,40(sp)
    80021514:	defd5de3          	bge	s10,a5,8002130e <app_0_start+0x53e>
    80021518:	5d22                	lw	s10,40(sp)
    8002151a:	bbd5                	j	8002130e <app_0_start+0x53e>
    8002151c:	7786                	ld	a5,96(sp)
    8002151e:	2207c363          	bltz	a5,80021744 <app_0_start+0x974>
    80021522:	03441713          	slli	a4,s0,0x34
    80021526:	2c074a63          	bltz	a4,800217fa <app_0_start+0xa2a>
    8002152a:	00147693          	andi	a3,s0,1
    8002152e:	80000537          	lui	a0,0x80000
    80021532:	10068363          	beqz	a3,80021638 <app_0_start+0x868>
    80021536:	00001717          	auipc	a4,0x1
    8002153a:	ae470713          	addi	a4,a4,-1308 # 8002201a <app_0_start+0x124a>
    8002153e:	ffe54513          	xori	a0,a0,-2
    80021542:	4485                	li	s1,1
    80021544:	e4ba                	sd	a4,72(sp)
    80021546:	16078b63          	beqz	a5,800216bc <app_0_start+0x8ec>
    8002154a:	09b10593          	addi	a1,sp,155
    8002154e:	892e                	mv	s2,a1
    80021550:	4629                	li	a2,10
    80021552:	4e25                	li	t3,9
    80021554:	02c7f6b3          	remu	a3,a5,a2
    80021558:	197d                	addi	s2,s2,-1
    8002155a:	833e                	mv	t1,a5
    8002155c:	0306869b          	addiw	a3,a3,48
    80021560:	00d90023          	sb	a3,0(s2)
    80021564:	02c7d7b3          	divu	a5,a5,a2
    80021568:	fe6e66e3          	bltu	t3,t1,80021554 <app_0_start+0x784>
    8002156c:	b769                	j	800214f6 <app_0_start+0x726>
    8002156e:	7786                	ld	a5,96(sp)
    80021570:	4d05                	li	s10,1
    80021572:	09a10913          	addi	s2,sp,154
    80021576:	08f10d23          	sb	a5,154(sp)
    8002157a:	77c1                	lui	a5,0xffff0
    8002157c:	17fd                	addi	a5,a5,-1
    8002157e:	8c7d                	and	s0,s0,a5
    80021580:	4785                	li	a5,1
    80021582:	e0be                	sd	a5,64(sp)
    80021584:	f43e                	sd	a5,40(sp)
    80021586:	00001797          	auipc	a5,0x1
    8002158a:	a9278793          	addi	a5,a5,-1390 # 80022018 <app_0_start+0x1248>
    8002158e:	6706                	ld	a4,64(sp)
    80021590:	e4be                	sd	a5,72(sp)
    80021592:	b361                	j	8002131a <app_0_start+0x54a>
    80021594:	7786                	ld	a5,96(sp)
    80021596:	09b10593          	addi	a1,sp,155
    8002159a:	892e                	mv	s2,a1
    8002159c:	86be                	mv	a3,a5
    8002159e:	cb91                	beqz	a5,800215b2 <app_0_start+0x7e2>
    800215a0:	0076f613          	andi	a2,a3,7
    800215a4:	197d                	addi	s2,s2,-1
    800215a6:	0306061b          	addiw	a2,a2,48
    800215aa:	00c90023          	sb	a2,0(s2)
    800215ae:	828d                	srli	a3,a3,0x3
    800215b0:	fae5                	bnez	a3,800215a0 <app_0_start+0x7d0>
    800215b2:	00847693          	andi	a3,s0,8
    800215b6:	c699                	beqz	a3,800215c4 <app_0_start+0x7f4>
    800215b8:	412586b3          	sub	a3,a1,s2
    800215bc:	01a6c463          	blt	a3,s10,800215c4 <app_0_start+0x7f4>
    800215c0:	00168d1b          	addiw	s10,a3,1
    800215c4:	10088f63          	beqz	a7,800216e2 <app_0_start+0x912>
    800215c8:	00001797          	auipc	a5,0x1
    800215cc:	a5078793          	addi	a5,a5,-1456 # 80022018 <app_0_start+0x1248>
    800215d0:	e4be                	sd	a5,72(sp)
    800215d2:	aa0d4de3          	bltz	s10,8002108c <app_0_start+0x2bc>
    800215d6:	7786                	ld	a5,96(sp)
    800215d8:	76c1                	lui	a3,0xffff0
    800215da:	16fd                	addi	a3,a3,-1
    800215dc:	8c75                	and	s0,s0,a3
    800215de:	ebb5                	bnez	a5,80021652 <app_0_start+0x882>
    800215e0:	060d1963          	bnez	s10,80021652 <app_0_start+0x882>
    800215e4:	e0a6                	sd	s1,64(sp)
    800215e6:	f402                	sd	zero,40(sp)
    800215e8:	892e                	mv	s2,a1
    800215ea:	8726                	mv	a4,s1
    800215ec:	b33d                	j	8002131a <app_0_start+0x54a>
    800215ee:	46c1                	li	a3,16
    800215f0:	87ea                	mv	a5,s10
    800215f2:	00dd7363          	bgeu	s10,a3,800215f8 <app_0_start+0x828>
    800215f6:	47c1                	li	a5,16
    800215f8:	00078d1b          	sext.w	s10,a5
    800215fc:	00846413          	ori	s0,s0,8
    80021600:	02000513          	li	a0,32
    80021604:	07800613          	li	a2,120
    80021608:	b56d                	j	800214b2 <app_0_start+0x6e2>
    8002160a:	7906                	ld	s2,96(sp)
    8002160c:	02090e63          	beqz	s2,80021648 <app_0_start+0x878>
    80021610:	140d4863          	bltz	s10,80021760 <app_0_start+0x990>
    80021614:	85ea                	mv	a1,s10
    80021616:	854a                	mv	a0,s2
    80021618:	5a8000ef          	jal	ra,80021bc0 <app_0_start+0xdf0>
    8002161c:	8d2a                	mv	s10,a0
    8002161e:	00a90733          	add	a4,s2,a0
    80021622:	77c1                	lui	a5,0xffff0
    80021624:	17fd                	addi	a5,a5,-1
    80021626:	8c7d                	and	s0,s0,a5
    80021628:	412707b3          	sub	a5,a4,s2
    8002162c:	2d01                	sext.w	s10,s10
    8002162e:	f43e                	sd	a5,40(sp)
    80021630:	b1d9                	j	800212f6 <app_0_start+0x526>
    80021632:	7786                	ld	a5,96(sp)
    80021634:	80000537          	lui	a0,0x80000
    80021638:	00001717          	auipc	a4,0x1
    8002163c:	9e070713          	addi	a4,a4,-1568 # 80022018 <app_0_start+0x1248>
    80021640:	fff54513          	not	a0,a0
    80021644:	e4ba                	sd	a4,72(sp)
    80021646:	b701                	j	80021546 <app_0_start+0x776>
    80021648:	00001917          	auipc	s2,0x1
    8002164c:	9e090913          	addi	s2,s2,-1568 # 80022028 <app_0_start+0x1258>
    80021650:	b7c1                	j	80021610 <app_0_start+0x840>
    80021652:	409b853b          	subw	a0,s7,s1
    80021656:	b55d                	j	800214fc <app_0_start+0x72c>
    80021658:	65a6                	ld	a1,72(sp)
    8002165a:	8626                	mv	a2,s1
    8002165c:	854e                	mv	a0,s3
    8002165e:	6a4000ef          	jal	ra,80021d02 <app_0_start+0xf32>
    80021662:	67c1                	lui	a5,0x10
    80021664:	8fa1                	xor	a5,a5,s0
    80021666:	0197fcb3          	and	s9,a5,s9
    8002166a:	d60c9de3          	bnez	s9,800213e4 <app_0_start+0x614>
    8002166e:	67c6                	ld	a5,80(sp)
    80021670:	6706                	ld	a4,64(sp)
    80021672:	d6f759e3          	bge	a4,a5,800213e4 <app_0_start+0x614>
    80021676:	40e786bb          	subw	a3,a5,a4
    8002167a:	10000593          	li	a1,256
    8002167e:	8636                	mv	a2,a3
    80021680:	8db6                	mv	s11,a3
    80021682:	00d5d463          	bge	a1,a3,8002168a <app_0_start+0x8ba>
    80021686:	10000613          	li	a2,256
    8002168a:	0a010c93          	addi	s9,sp,160
    8002168e:	03000593          	li	a1,48
    80021692:	8566                	mv	a0,s9
    80021694:	e436                	sd	a3,8(sp)
    80021696:	30e000ef          	jal	ra,800219a4 <app_0_start+0xbd4>
    8002169a:	66a2                	ld	a3,8(sp)
    8002169c:	0ff00613          	li	a2,255
    800216a0:	d2d640e3          	blt	a2,a3,800213c0 <app_0_start+0x5f0>
    800216a4:	bb1d                	j	800213da <app_0_start+0x60a>
    800216a6:	65a6                	ld	a1,72(sp)
    800216a8:	8626                	mv	a2,s1
    800216aa:	854e                	mv	a0,s3
    800216ac:	656000ef          	jal	ra,80021d02 <app_0_start+0xf32>
    800216b0:	bb15                	j	800213e4 <app_0_start+0x614>
    800216b2:	00001797          	auipc	a5,0x1
    800216b6:	96678793          	addi	a5,a5,-1690 # 80022018 <app_0_start+0x1248>
    800216ba:	e4be                	sd	a5,72(sp)
    800216bc:	00088c63          	beqz	a7,800216d4 <app_0_start+0x904>
    800216c0:	09b10593          	addi	a1,sp,155
    800216c4:	892e                	mv	s2,a1
    800216c6:	b731                	j	800215d2 <app_0_start+0x802>
    800216c8:	00001797          	auipc	a5,0x1
    800216cc:	95078793          	addi	a5,a5,-1712 # 80022018 <app_0_start+0x1248>
    800216d0:	e4be                	sd	a5,72(sp)
    800216d2:	b181                	j	80021312 <app_0_start+0x542>
    800216d4:	09b10593          	addi	a1,sp,155
    800216d8:	4781                	li	a5,0
    800216da:	892e                	mv	s2,a1
    800216dc:	b711                	j	800215e0 <app_0_start+0x810>
    800216de:	4a01                	li	s4,0
    800216e0:	b27d                	j	8002108e <app_0_start+0x2be>
    800216e2:	00001717          	auipc	a4,0x1
    800216e6:	93670713          	addi	a4,a4,-1738 # 80022018 <app_0_start+0x1248>
    800216ea:	e4ba                	sd	a4,72(sp)
    800216ec:	4481                	li	s1,0
    800216ee:	ee0789e3          	beqz	a5,800215e0 <app_0_start+0x810>
    800216f2:	b785                	j	80021652 <app_0_start+0x882>
    800216f4:	8211                	srli	a2,a2,0x4
    800216f6:	00001797          	auipc	a5,0x1
    800216fa:	92278793          	addi	a5,a5,-1758 # 80022018 <app_0_start+0x1248>
    800216fe:	97b2                	add	a5,a5,a2
    80021700:	80000537          	lui	a0,0x80000
    80021704:	e4be                	sd	a5,72(sp)
    80021706:	ffd54513          	xori	a0,a0,-3
    8002170a:	4489                	li	s1,2
    8002170c:	b3ed                	j	800214f6 <app_0_start+0x726>
    8002170e:	8642                	mv	a2,a6
    80021710:	85e6                	mv	a1,s9
    80021712:	854e                	mv	a0,s3
    80021714:	e436                	sd	a3,8(sp)
    80021716:	5ec000ef          	jal	ra,80021d02 <app_0_start+0xf32>
    8002171a:	65a6                	ld	a1,72(sp)
    8002171c:	8626                	mv	a2,s1
    8002171e:	854e                	mv	a0,s3
    80021720:	5e2000ef          	jal	ra,80021d02 <app_0_start+0xf32>
    80021724:	67c1                	lui	a5,0x10
    80021726:	8fa1                	xor	a5,a5,s0
    80021728:	6649                	lui	a2,0x12
    8002172a:	8ff1                	and	a5,a5,a2
    8002172c:	66a2                	ld	a3,8(sp)
    8002172e:	ca079be3          	bnez	a5,800213e4 <app_0_start+0x614>
    80021732:	6666                	ld	a2,88(sp)
    80021734:	03000593          	li	a1,48
    80021738:	8566                	mv	a0,s9
    8002173a:	e436                	sd	a3,8(sp)
    8002173c:	268000ef          	jal	ra,800219a4 <app_0_start+0xbd4>
    80021740:	66a2                	ld	a3,8(sp)
    80021742:	b961                	j	800213da <app_0_start+0x60a>
    80021744:	40f007b3          	neg	a5,a5
    80021748:	80000537          	lui	a0,0x80000
    8002174c:	00001717          	auipc	a4,0x1
    80021750:	8cc70713          	addi	a4,a4,-1844 # 80022018 <app_0_start+0x1248>
    80021754:	f0be                	sd	a5,96(sp)
    80021756:	ffe54513          	xori	a0,a0,-2
    8002175a:	4485                	li	s1,1
    8002175c:	e4ba                	sd	a4,72(sp)
    8002175e:	b3f5                	j	8002154a <app_0_start+0x77a>
    80021760:	800005b7          	lui	a1,0x80000
    80021764:	fff5c593          	not	a1,a1
    80021768:	854a                	mv	a0,s2
    8002176a:	456000ef          	jal	ra,80021bc0 <app_0_start+0xdf0>
    8002176e:	00a90733          	add	a4,s2,a0
    80021772:	00074783          	lbu	a5,0(a4)
    80021776:	8d2a                	mv	s10,a0
    80021778:	ea0785e3          	beqz	a5,80021622 <app_0_start+0x852>
    8002177c:	ba01                	j	8002108c <app_0_start+0x2bc>
    8002177e:	00148793          	addi	a5,s1,1
    80021782:	4729                	li	a4,10
    80021784:	b4e782e3          	beq	a5,a4,800212c8 <app_0_start+0x4f8>
    80021788:	7602                	ld	a2,32(sp)
    8002178a:	078a                	slli	a5,a5,0x2
    8002178c:	97b2                	add	a5,a5,a2
    8002178e:	4394                	lw	a3,0(a5)
    80021790:	8e069ee3          	bnez	a3,8002108c <app_0_start+0x2bc>
    80021794:	00248693          	addi	a3,s1,2
    80021798:	b2e688e3          	beq	a3,a4,800212c8 <app_0_start+0x4f8>
    8002179c:	43d4                	lw	a3,4(a5)
    8002179e:	8e0697e3          	bnez	a3,8002108c <app_0_start+0x2bc>
    800217a2:	00348693          	addi	a3,s1,3
    800217a6:	b2e681e3          	beq	a3,a4,800212c8 <app_0_start+0x4f8>
    800217aa:	4794                	lw	a3,8(a5)
    800217ac:	8e0690e3          	bnez	a3,8002108c <app_0_start+0x2bc>
    800217b0:	00448693          	addi	a3,s1,4
    800217b4:	b0e68ae3          	beq	a3,a4,800212c8 <app_0_start+0x4f8>
    800217b8:	47d4                	lw	a3,12(a5)
    800217ba:	8c0699e3          	bnez	a3,8002108c <app_0_start+0x2bc>
    800217be:	00548693          	addi	a3,s1,5
    800217c2:	b0e683e3          	beq	a3,a4,800212c8 <app_0_start+0x4f8>
    800217c6:	4b98                	lw	a4,16(a5)
    800217c8:	8c0712e3          	bnez	a4,8002108c <app_0_start+0x2bc>
    800217cc:	00648713          	addi	a4,s1,6
    800217d0:	46a9                	li	a3,10
    800217d2:	aed70be3          	beq	a4,a3,800212c8 <app_0_start+0x4f8>
    800217d6:	4bd8                	lw	a4,20(a5)
    800217d8:	8a071ae3          	bnez	a4,8002108c <app_0_start+0x2bc>
    800217dc:	00748713          	addi	a4,s1,7
    800217e0:	aed704e3          	beq	a4,a3,800212c8 <app_0_start+0x4f8>
    800217e4:	4f9c                	lw	a5,24(a5)
    800217e6:	8a0793e3          	bnez	a5,8002108c <app_0_start+0x2bc>
    800217ea:	4785                	li	a5,1
    800217ec:	acf49ee3          	bne	s1,a5,800212c8 <app_0_start+0x4f8>
    800217f0:	525c                	lw	a5,36(a2)
    800217f2:	88079de3          	bnez	a5,8002108c <app_0_start+0x2bc>
    800217f6:	4a05                	li	s4,1
    800217f8:	b859                	j	8002108e <app_0_start+0x2be>
    800217fa:	80000537          	lui	a0,0x80000
    800217fe:	00001717          	auipc	a4,0x1
    80021802:	81b70713          	addi	a4,a4,-2021 # 80022019 <app_0_start+0x1249>
    80021806:	ffe54513          	xori	a0,a0,-2
    8002180a:	4485                	li	s1,1
    8002180c:	e4ba                	sd	a4,72(sp)
    8002180e:	bb25                	j	80021546 <app_0_start+0x776>
    80021810:	1101                	addi	sp,sp,-32
    80021812:	87aa                	mv	a5,a0
    80021814:	00f10593          	addi	a1,sp,15
    80021818:	4605                	li	a2,1
    8002181a:	4501                	li	a0,0
    8002181c:	ec06                	sd	ra,24(sp)
    8002181e:	00f107a3          	sb	a5,15(sp)
    80021822:	4e0000ef          	jal	ra,80021d02 <app_0_start+0xf32>
    80021826:	60e2                	ld	ra,24(sp)
    80021828:	2501                	sext.w	a0,a0
    8002182a:	6105                	addi	sp,sp,32
    8002182c:	8082                	ret
    8002182e:	1101                	addi	sp,sp,-32
    80021830:	e822                	sd	s0,16(sp)
    80021832:	ec06                	sd	ra,24(sp)
    80021834:	842a                	mv	s0,a0
    80021836:	29e000ef          	jal	ra,80021ad4 <app_0_start+0xd04>
    8002183a:	862a                	mv	a2,a0
    8002183c:	85a2                	mv	a1,s0
    8002183e:	4501                	li	a0,0
    80021840:	4c2000ef          	jal	ra,80021d02 <app_0_start+0xf32>
    80021844:	00055763          	bgez	a0,80021852 <app_0_start+0xa82>
    80021848:	60e2                	ld	ra,24(sp)
    8002184a:	6442                	ld	s0,16(sp)
    8002184c:	557d                	li	a0,-1
    8002184e:	6105                	addi	sp,sp,32
    80021850:	8082                	ret
    80021852:	00f10593          	addi	a1,sp,15
    80021856:	47a9                	li	a5,10
    80021858:	4605                	li	a2,1
    8002185a:	4501                	li	a0,0
    8002185c:	00f107a3          	sb	a5,15(sp)
    80021860:	4a2000ef          	jal	ra,80021d02 <app_0_start+0xf32>
    80021864:	60e2                	ld	ra,24(sp)
    80021866:	6442                	ld	s0,16(sp)
    80021868:	41f5551b          	sraiw	a0,a0,0x1f
    8002186c:	6105                	addi	sp,sp,32
    8002186e:	8082                	ret
    80021870:	7151                	addi	sp,sp,-240
    80021872:	f1a2                	sd	s0,224(sp)
    80021874:	8832                	mv	a6,a2
    80021876:	842a                	mv	s0,a0
    80021878:	0038                	addi	a4,sp,8
    8002187a:	1814                	addi	a3,sp,48
    8002187c:	860a                	mv	a2,sp
    8002187e:	4501                	li	a0,0
    80021880:	eda6                	sd	s1,216(sp)
    80021882:	f586                	sd	ra,232(sp)
    80021884:	84ae                	mv	s1,a1
    80021886:	e402                	sd	zero,8(sp)
    80021888:	e802                	sd	zero,16(sp)
    8002188a:	ec02                	sd	zero,24(sp)
    8002188c:	f002                	sd	zero,32(sp)
    8002188e:	f402                	sd	zero,40(sp)
    80021890:	e042                	sd	a6,0(sp)
    80021892:	e2aff0ef          	jal	ra,80020ebc <app_0_start+0xec>
    80021896:	00054e63          	bltz	a0,800218b2 <app_0_start+0xae2>
    8002189a:	0038                	addi	a4,sp,8
    8002189c:	1814                	addi	a3,sp,48
    8002189e:	860a                	mv	a2,sp
    800218a0:	85a6                	mv	a1,s1
    800218a2:	8522                	mv	a0,s0
    800218a4:	e18ff0ef          	jal	ra,80020ebc <app_0_start+0xec>
    800218a8:	70ae                	ld	ra,232(sp)
    800218aa:	740e                	ld	s0,224(sp)
    800218ac:	64ee                	ld	s1,216(sp)
    800218ae:	616d                	addi	sp,sp,240
    800218b0:	8082                	ret
    800218b2:	557d                	li	a0,-1
    800218b4:	bfd5                	j	800218a8 <app_0_start+0xad8>
    800218b6:	711d                	addi	sp,sp,-96
    800218b8:	02810313          	addi	t1,sp,40
    800218bc:	f42e                	sd	a1,40(sp)
    800218be:	f832                	sd	a2,48(sp)
    800218c0:	85aa                	mv	a1,a0
    800218c2:	861a                	mv	a2,t1
    800218c4:	4501                	li	a0,0
    800218c6:	ec06                	sd	ra,24(sp)
    800218c8:	fc36                	sd	a3,56(sp)
    800218ca:	e0ba                	sd	a4,64(sp)
    800218cc:	e4be                	sd	a5,72(sp)
    800218ce:	e8c2                	sd	a6,80(sp)
    800218d0:	ecc6                	sd	a7,88(sp)
    800218d2:	e41a                	sd	t1,8(sp)
    800218d4:	f9dff0ef          	jal	ra,80021870 <app_0_start+0xaa0>
    800218d8:	60e2                	ld	ra,24(sp)
    800218da:	6125                	addi	sp,sp,96
    800218dc:	8082                	ret
    800218de:	02000793          	li	a5,32
    800218e2:	00f50663          	beq	a0,a5,800218ee <app_0_start+0xb1e>
    800218e6:	355d                	addiw	a0,a0,-9
    800218e8:	00553513          	sltiu	a0,a0,5
    800218ec:	8082                	ret
    800218ee:	4505                	li	a0,1
    800218f0:	8082                	ret
    800218f2:	fd05051b          	addiw	a0,a0,-48
    800218f6:	00a53513          	sltiu	a0,a0,10
    800218fa:	8082                	ret
    800218fc:	02000613          	li	a2,32
    80021900:	4591                	li	a1,4
    80021902:	00054703          	lbu	a4,0(a0) # ffffffff80000000 <ebss+0xfffffffefff75000>
    80021906:	ff77069b          	addiw	a3,a4,-9
    8002190a:	04c70d63          	beq	a4,a2,80021964 <app_0_start+0xb94>
    8002190e:	0007079b          	sext.w	a5,a4
    80021912:	04d5f963          	bgeu	a1,a3,80021964 <app_0_start+0xb94>
    80021916:	02b00693          	li	a3,43
    8002191a:	04d70a63          	beq	a4,a3,8002196e <app_0_start+0xb9e>
    8002191e:	02d00693          	li	a3,45
    80021922:	06d70463          	beq	a4,a3,8002198a <app_0_start+0xbba>
    80021926:	fd07859b          	addiw	a1,a5,-48
    8002192a:	4625                	li	a2,9
    8002192c:	873e                	mv	a4,a5
    8002192e:	86aa                	mv	a3,a0
    80021930:	4e01                	li	t3,0
    80021932:	04b66a63          	bltu	a2,a1,80021986 <app_0_start+0xbb6>
    80021936:	4501                	li	a0,0
    80021938:	4825                	li	a6,9
    8002193a:	0016c603          	lbu	a2,1(a3) # ffffffffffff0001 <ebss+0xffffffff7ff65001>
    8002193e:	0025179b          	slliw	a5,a0,0x2
    80021942:	9d3d                	addw	a0,a0,a5
    80021944:	fd07031b          	addiw	t1,a4,-48
    80021948:	0015189b          	slliw	a7,a0,0x1
    8002194c:	fd06059b          	addiw	a1,a2,-48
    80021950:	0685                	addi	a3,a3,1
    80021952:	4068853b          	subw	a0,a7,t1
    80021956:	0006071b          	sext.w	a4,a2
    8002195a:	feb870e3          	bgeu	a6,a1,8002193a <app_0_start+0xb6a>
    8002195e:	000e0563          	beqz	t3,80021968 <app_0_start+0xb98>
    80021962:	8082                	ret
    80021964:	0505                	addi	a0,a0,1
    80021966:	bf71                	j	80021902 <app_0_start+0xb32>
    80021968:	4113053b          	subw	a0,t1,a7
    8002196c:	8082                	ret
    8002196e:	00154783          	lbu	a5,1(a0)
    80021972:	4625                	li	a2,9
    80021974:	00150693          	addi	a3,a0,1
    80021978:	fd07859b          	addiw	a1,a5,-48
    8002197c:	0007871b          	sext.w	a4,a5
    80021980:	4e01                	li	t3,0
    80021982:	fab67ae3          	bgeu	a2,a1,80021936 <app_0_start+0xb66>
    80021986:	4501                	li	a0,0
    80021988:	8082                	ret
    8002198a:	00154783          	lbu	a5,1(a0)
    8002198e:	4625                	li	a2,9
    80021990:	00150693          	addi	a3,a0,1
    80021994:	fd07859b          	addiw	a1,a5,-48
    80021998:	0007871b          	sext.w	a4,a5
    8002199c:	feb665e3          	bltu	a2,a1,80021986 <app_0_start+0xbb6>
    800219a0:	4e05                	li	t3,1
    800219a2:	bf51                	j	80021936 <app_0_start+0xb66>
    800219a4:	c679                	beqz	a2,80021a72 <app_0_start+0xca2>
    800219a6:	0ff5f793          	andi	a5,a1,255
    800219aa:	00f50023          	sb	a5,0(a0)
    800219ae:	00c50733          	add	a4,a0,a2
    800219b2:	fef70fa3          	sb	a5,-1(a4)
    800219b6:	4689                	li	a3,2
    800219b8:	0ac6fd63          	bgeu	a3,a2,80021a72 <app_0_start+0xca2>
    800219bc:	00f500a3          	sb	a5,1(a0)
    800219c0:	00f50123          	sb	a5,2(a0)
    800219c4:	fef70f23          	sb	a5,-2(a4)
    800219c8:	fef70ea3          	sb	a5,-3(a4)
    800219cc:	4699                	li	a3,6
    800219ce:	0ac6f263          	bgeu	a3,a2,80021a72 <app_0_start+0xca2>
    800219d2:	00f501a3          	sb	a5,3(a0)
    800219d6:	fef70e23          	sb	a5,-4(a4)
    800219da:	46a1                	li	a3,8
    800219dc:	08c6fb63          	bgeu	a3,a2,80021a72 <app_0_start+0xca2>
    800219e0:	0ff5f593          	andi	a1,a1,255
    800219e4:	0085979b          	slliw	a5,a1,0x8
    800219e8:	40a00733          	neg	a4,a0
    800219ec:	8b0d                	andi	a4,a4,3
    800219ee:	9dbd                	addw	a1,a1,a5
    800219f0:	8e19                	sub	a2,a2,a4
    800219f2:	0105979b          	slliw	a5,a1,0x10
    800219f6:	9dbd                	addw	a1,a1,a5
    800219f8:	972a                	add	a4,a4,a0
    800219fa:	9a71                	andi	a2,a2,-4
    800219fc:	c30c                	sw	a1,0(a4)
    800219fe:	00c707b3          	add	a5,a4,a2
    80021a02:	feb7ae23          	sw	a1,-4(a5) # fffc <_entry-0x80010004>
    80021a06:	06c6f663          	bgeu	a3,a2,80021a72 <app_0_start+0xca2>
    80021a0a:	c34c                	sw	a1,4(a4)
    80021a0c:	c70c                	sw	a1,8(a4)
    80021a0e:	feb7aa23          	sw	a1,-12(a5)
    80021a12:	feb7ac23          	sw	a1,-8(a5)
    80021a16:	46e1                	li	a3,24
    80021a18:	04c6fd63          	bgeu	a3,a2,80021a72 <app_0_start+0xca2>
    80021a1c:	00477813          	andi	a6,a4,4
    80021a20:	c74c                	sw	a1,12(a4)
    80021a22:	cb0c                	sw	a1,16(a4)
    80021a24:	cb4c                	sw	a1,20(a4)
    80021a26:	cf0c                	sw	a1,24(a4)
    80021a28:	0861                	addi	a6,a6,24
    80021a2a:	02059893          	slli	a7,a1,0x20
    80021a2e:	0208d893          	srli	a7,a7,0x20
    80021a32:	02059693          	slli	a3,a1,0x20
    80021a36:	feb7a223          	sw	a1,-28(a5)
    80021a3a:	feb7a423          	sw	a1,-24(a5)
    80021a3e:	feb7a623          	sw	a1,-20(a5)
    80021a42:	feb7a823          	sw	a1,-16(a5)
    80021a46:	41060633          	sub	a2,a2,a6
    80021a4a:	47fd                	li	a5,31
    80021a4c:	9742                	add	a4,a4,a6
    80021a4e:	0116e6b3          	or	a3,a3,a7
    80021a52:	02c7f063          	bgeu	a5,a2,80021a72 <app_0_start+0xca2>
    80021a56:	1601                	addi	a2,a2,-32
    80021a58:	fe067793          	andi	a5,a2,-32
    80021a5c:	02078793          	addi	a5,a5,32
    80021a60:	97ba                	add	a5,a5,a4
    80021a62:	e314                	sd	a3,0(a4)
    80021a64:	e714                	sd	a3,8(a4)
    80021a66:	eb14                	sd	a3,16(a4)
    80021a68:	ef14                	sd	a3,24(a4)
    80021a6a:	02070713          	addi	a4,a4,32
    80021a6e:	fef71ae3          	bne	a4,a5,80021a62 <app_0_start+0xc92>
    80021a72:	8082                	ret
    80021a74:	00054783          	lbu	a5,0(a0)
    80021a78:	0005c703          	lbu	a4,0(a1) # ffffffff80000000 <ebss+0xfffffffefff75000>
    80021a7c:	00e79863          	bne	a5,a4,80021a8c <app_0_start+0xcbc>
    80021a80:	0505                	addi	a0,a0,1
    80021a82:	0585                	addi	a1,a1,1
    80021a84:	fbe5                	bnez	a5,80021a74 <app_0_start+0xca4>
    80021a86:	4501                	li	a0,0
    80021a88:	9d19                	subw	a0,a0,a4
    80021a8a:	8082                	ret
    80021a8c:	0007851b          	sext.w	a0,a5
    80021a90:	bfe5                	j	80021a88 <app_0_start+0xcb8>
    80021a92:	ce05                	beqz	a2,80021aca <app_0_start+0xcfa>
    80021a94:	00054703          	lbu	a4,0(a0)
    80021a98:	0005c783          	lbu	a5,0(a1)
    80021a9c:	cb0d                	beqz	a4,80021ace <app_0_start+0xcfe>
    80021a9e:	167d                	addi	a2,a2,-1
    80021aa0:	00c506b3          	add	a3,a0,a2
    80021aa4:	a819                	j	80021aba <app_0_start+0xcea>
    80021aa6:	00a68e63          	beq	a3,a0,80021ac2 <app_0_start+0xcf2>
    80021aaa:	0505                	addi	a0,a0,1
    80021aac:	00e79b63          	bne	a5,a4,80021ac2 <app_0_start+0xcf2>
    80021ab0:	00054703          	lbu	a4,0(a0)
    80021ab4:	0005c783          	lbu	a5,0(a1)
    80021ab8:	cb19                	beqz	a4,80021ace <app_0_start+0xcfe>
    80021aba:	0005c783          	lbu	a5,0(a1)
    80021abe:	0585                	addi	a1,a1,1
    80021ac0:	f3fd                	bnez	a5,80021aa6 <app_0_start+0xcd6>
    80021ac2:	0007051b          	sext.w	a0,a4
    80021ac6:	9d1d                	subw	a0,a0,a5
    80021ac8:	8082                	ret
    80021aca:	4501                	li	a0,0
    80021acc:	8082                	ret
    80021ace:	4501                	li	a0,0
    80021ad0:	9d1d                	subw	a0,a0,a5
    80021ad2:	8082                	ret
    80021ad4:	00757793          	andi	a5,a0,7
    80021ad8:	cf89                	beqz	a5,80021af2 <app_0_start+0xd22>
    80021ada:	87aa                	mv	a5,a0
    80021adc:	a029                	j	80021ae6 <app_0_start+0xd16>
    80021ade:	0785                	addi	a5,a5,1
    80021ae0:	0077f713          	andi	a4,a5,7
    80021ae4:	cb01                	beqz	a4,80021af4 <app_0_start+0xd24>
    80021ae6:	0007c703          	lbu	a4,0(a5)
    80021aea:	fb75                	bnez	a4,80021ade <app_0_start+0xd0e>
    80021aec:	40a78533          	sub	a0,a5,a0
    80021af0:	8082                	ret
    80021af2:	87aa                	mv	a5,a0
    80021af4:	6394                	ld	a3,0(a5)
    80021af6:	00001597          	auipc	a1,0x1
    80021afa:	53a5b583          	ld	a1,1338(a1) # 80023030 <app_0_start+0x2260>
    80021afe:	00001617          	auipc	a2,0x1
    80021b02:	53a63603          	ld	a2,1338(a2) # 80023038 <app_0_start+0x2268>
    80021b06:	a019                	j	80021b0c <app_0_start+0xd3c>
    80021b08:	6794                	ld	a3,8(a5)
    80021b0a:	07a1                	addi	a5,a5,8
    80021b0c:	00b68733          	add	a4,a3,a1
    80021b10:	fff6c693          	not	a3,a3
    80021b14:	8f75                	and	a4,a4,a3
    80021b16:	8f71                	and	a4,a4,a2
    80021b18:	db65                	beqz	a4,80021b08 <app_0_start+0xd38>
    80021b1a:	0007c703          	lbu	a4,0(a5)
    80021b1e:	d779                	beqz	a4,80021aec <app_0_start+0xd1c>
    80021b20:	0017c703          	lbu	a4,1(a5)
    80021b24:	0785                	addi	a5,a5,1
    80021b26:	d379                	beqz	a4,80021aec <app_0_start+0xd1c>
    80021b28:	0017c703          	lbu	a4,1(a5)
    80021b2c:	0785                	addi	a5,a5,1
    80021b2e:	fb6d                	bnez	a4,80021b20 <app_0_start+0xd50>
    80021b30:	bf75                	j	80021aec <app_0_start+0xd1c>
    80021b32:	00757713          	andi	a4,a0,7
    80021b36:	87aa                	mv	a5,a0
    80021b38:	0ff5f593          	andi	a1,a1,255
    80021b3c:	cb19                	beqz	a4,80021b52 <app_0_start+0xd82>
    80021b3e:	ce25                	beqz	a2,80021bb6 <app_0_start+0xde6>
    80021b40:	0007c703          	lbu	a4,0(a5)
    80021b44:	04b70e63          	beq	a4,a1,80021ba0 <app_0_start+0xdd0>
    80021b48:	0785                	addi	a5,a5,1
    80021b4a:	0077f713          	andi	a4,a5,7
    80021b4e:	167d                	addi	a2,a2,-1
    80021b50:	f77d                	bnez	a4,80021b3e <app_0_start+0xd6e>
    80021b52:	4501                	li	a0,0
    80021b54:	c235                	beqz	a2,80021bb8 <app_0_start+0xde8>
    80021b56:	0007c703          	lbu	a4,0(a5)
    80021b5a:	04b70363          	beq	a4,a1,80021ba0 <app_0_start+0xdd0>
    80021b5e:	00001517          	auipc	a0,0x1
    80021b62:	4e253503          	ld	a0,1250(a0) # 80023040 <app_0_start+0x2270>
    80021b66:	471d                	li	a4,7
    80021b68:	02a58533          	mul	a0,a1,a0
    80021b6c:	02c77a63          	bgeu	a4,a2,80021ba0 <app_0_start+0xdd0>
    80021b70:	00001897          	auipc	a7,0x1
    80021b74:	4c08b883          	ld	a7,1216(a7) # 80023030 <app_0_start+0x2260>
    80021b78:	00001817          	auipc	a6,0x1
    80021b7c:	4c083803          	ld	a6,1216(a6) # 80023038 <app_0_start+0x2268>
    80021b80:	431d                	li	t1,7
    80021b82:	a029                	j	80021b8c <app_0_start+0xdbc>
    80021b84:	1661                	addi	a2,a2,-8
    80021b86:	07a1                	addi	a5,a5,8
    80021b88:	02c37963          	bgeu	t1,a2,80021bba <app_0_start+0xdea>
    80021b8c:	6398                	ld	a4,0(a5)
    80021b8e:	8f29                	xor	a4,a4,a0
    80021b90:	011706b3          	add	a3,a4,a7
    80021b94:	fff74713          	not	a4,a4
    80021b98:	8f75                	and	a4,a4,a3
    80021b9a:	01077733          	and	a4,a4,a6
    80021b9e:	d37d                	beqz	a4,80021b84 <app_0_start+0xdb4>
    80021ba0:	853e                	mv	a0,a5
    80021ba2:	97b2                	add	a5,a5,a2
    80021ba4:	a021                	j	80021bac <app_0_start+0xddc>
    80021ba6:	0505                	addi	a0,a0,1
    80021ba8:	00f50763          	beq	a0,a5,80021bb6 <app_0_start+0xde6>
    80021bac:	00054703          	lbu	a4,0(a0)
    80021bb0:	feb71be3          	bne	a4,a1,80021ba6 <app_0_start+0xdd6>
    80021bb4:	8082                	ret
    80021bb6:	4501                	li	a0,0
    80021bb8:	8082                	ret
    80021bba:	4501                	li	a0,0
    80021bbc:	f275                	bnez	a2,80021ba0 <app_0_start+0xdd0>
    80021bbe:	8082                	ret
    80021bc0:	1101                	addi	sp,sp,-32
    80021bc2:	e822                	sd	s0,16(sp)
    80021bc4:	862e                	mv	a2,a1
    80021bc6:	842e                	mv	s0,a1
    80021bc8:	4581                	li	a1,0
    80021bca:	e426                	sd	s1,8(sp)
    80021bcc:	ec06                	sd	ra,24(sp)
    80021bce:	84aa                	mv	s1,a0
    80021bd0:	f63ff0ef          	jal	ra,80021b32 <app_0_start+0xd62>
    80021bd4:	c519                	beqz	a0,80021be2 <app_0_start+0xe12>
    80021bd6:	60e2                	ld	ra,24(sp)
    80021bd8:	6442                	ld	s0,16(sp)
    80021bda:	8d05                	sub	a0,a0,s1
    80021bdc:	64a2                	ld	s1,8(sp)
    80021bde:	6105                	addi	sp,sp,32
    80021be0:	8082                	ret
    80021be2:	60e2                	ld	ra,24(sp)
    80021be4:	8522                	mv	a0,s0
    80021be6:	6442                	ld	s0,16(sp)
    80021be8:	64a2                	ld	s1,8(sp)
    80021bea:	6105                	addi	sp,sp,32
    80021bec:	8082                	ret
    80021bee:	00b547b3          	xor	a5,a0,a1
    80021bf2:	8b9d                	andi	a5,a5,7
    80021bf4:	eb95                	bnez	a5,80021c28 <app_0_start+0xe58>
    80021bf6:	0075f793          	andi	a5,a1,7
    80021bfa:	e7b1                	bnez	a5,80021c46 <app_0_start+0xe76>
    80021bfc:	6198                	ld	a4,0(a1)
    80021bfe:	00001617          	auipc	a2,0x1
    80021c02:	43263603          	ld	a2,1074(a2) # 80023030 <app_0_start+0x2260>
    80021c06:	00001817          	auipc	a6,0x1
    80021c0a:	43283803          	ld	a6,1074(a6) # 80023038 <app_0_start+0x2268>
    80021c0e:	a029                	j	80021c18 <app_0_start+0xe48>
    80021c10:	05a1                	addi	a1,a1,8
    80021c12:	e118                	sd	a4,0(a0)
    80021c14:	6198                	ld	a4,0(a1)
    80021c16:	0521                	addi	a0,a0,8
    80021c18:	00c707b3          	add	a5,a4,a2
    80021c1c:	fff74693          	not	a3,a4
    80021c20:	8ff5                	and	a5,a5,a3
    80021c22:	0107f7b3          	and	a5,a5,a6
    80021c26:	d7ed                	beqz	a5,80021c10 <app_0_start+0xe40>
    80021c28:	0005c783          	lbu	a5,0(a1)
    80021c2c:	00f50023          	sb	a5,0(a0)
    80021c30:	c785                	beqz	a5,80021c58 <app_0_start+0xe88>
    80021c32:	0015c783          	lbu	a5,1(a1)
    80021c36:	0505                	addi	a0,a0,1
    80021c38:	0585                	addi	a1,a1,1
    80021c3a:	00f50023          	sb	a5,0(a0)
    80021c3e:	fbf5                	bnez	a5,80021c32 <app_0_start+0xe62>
    80021c40:	8082                	ret
    80021c42:	0505                	addi	a0,a0,1
    80021c44:	df45                	beqz	a4,80021bfc <app_0_start+0xe2c>
    80021c46:	0005c783          	lbu	a5,0(a1)
    80021c4a:	0585                	addi	a1,a1,1
    80021c4c:	0075f713          	andi	a4,a1,7
    80021c50:	00f50023          	sb	a5,0(a0)
    80021c54:	f7fd                	bnez	a5,80021c42 <app_0_start+0xe72>
    80021c56:	8082                	ret
    80021c58:	8082                	ret
    80021c5a:	1141                	addi	sp,sp,-16
    80021c5c:	00b547b3          	xor	a5,a0,a1
    80021c60:	e022                	sd	s0,0(sp)
    80021c62:	e406                	sd	ra,8(sp)
    80021c64:	8b9d                	andi	a5,a5,7
    80021c66:	842a                	mv	s0,a0
    80021c68:	efb1                	bnez	a5,80021cc4 <app_0_start+0xef4>
    80021c6a:	0075f793          	andi	a5,a1,7
    80021c6e:	cf89                	beqz	a5,80021c88 <app_0_start+0xeb8>
    80021c70:	c625                	beqz	a2,80021cd8 <app_0_start+0xf08>
    80021c72:	0005c783          	lbu	a5,0(a1)
    80021c76:	0585                	addi	a1,a1,1
    80021c78:	0075f713          	andi	a4,a1,7
    80021c7c:	00f40023          	sb	a5,0(s0)
    80021c80:	cfa1                	beqz	a5,80021cd8 <app_0_start+0xf08>
    80021c82:	167d                	addi	a2,a2,-1
    80021c84:	0405                	addi	s0,s0,1
    80021c86:	f76d                	bnez	a4,80021c70 <app_0_start+0xea0>
    80021c88:	ca21                	beqz	a2,80021cd8 <app_0_start+0xf08>
    80021c8a:	0005c783          	lbu	a5,0(a1)
    80021c8e:	c7a9                	beqz	a5,80021cd8 <app_0_start+0xf08>
    80021c90:	479d                	li	a5,7
    80021c92:	02c7fa63          	bgeu	a5,a2,80021cc6 <app_0_start+0xef6>
    80021c96:	00001817          	auipc	a6,0x1
    80021c9a:	39a83803          	ld	a6,922(a6) # 80023030 <app_0_start+0x2260>
    80021c9e:	00001517          	auipc	a0,0x1
    80021ca2:	39a53503          	ld	a0,922(a0) # 80023038 <app_0_start+0x2268>
    80021ca6:	489d                	li	a7,7
    80021ca8:	6198                	ld	a4,0(a1)
    80021caa:	010707b3          	add	a5,a4,a6
    80021cae:	fff74693          	not	a3,a4
    80021cb2:	8ff5                	and	a5,a5,a3
    80021cb4:	8fe9                	and	a5,a5,a0
    80021cb6:	eb81                	bnez	a5,80021cc6 <app_0_start+0xef6>
    80021cb8:	e018                	sd	a4,0(s0)
    80021cba:	1661                	addi	a2,a2,-8
    80021cbc:	05a1                	addi	a1,a1,8
    80021cbe:	0421                	addi	s0,s0,8
    80021cc0:	fec8e4e3          	bltu	a7,a2,80021ca8 <app_0_start+0xed8>
    80021cc4:	ca11                	beqz	a2,80021cd8 <app_0_start+0xf08>
    80021cc6:	0005c783          	lbu	a5,0(a1)
    80021cca:	0585                	addi	a1,a1,1
    80021ccc:	00f40023          	sb	a5,0(s0)
    80021cd0:	c781                	beqz	a5,80021cd8 <app_0_start+0xf08>
    80021cd2:	167d                	addi	a2,a2,-1
    80021cd4:	0405                	addi	s0,s0,1
    80021cd6:	fa65                	bnez	a2,80021cc6 <app_0_start+0xef6>
    80021cd8:	8522                	mv	a0,s0
    80021cda:	4581                	li	a1,0
    80021cdc:	cc9ff0ef          	jal	ra,800219a4 <app_0_start+0xbd4>
    80021ce0:	60a2                	ld	ra,8(sp)
    80021ce2:	8522                	mv	a0,s0
    80021ce4:	6402                	ld	s0,0(sp)
    80021ce6:	0141                	addi	sp,sp,16
    80021ce8:	8082                	ret
    80021cea:	03800893          	li	a7,56
    80021cee:	00000073          	ecall
    80021cf2:	2501                	sext.w	a0,a0
    80021cf4:	8082                	ret
    80021cf6:	03900893          	li	a7,57
    80021cfa:	00000073          	ecall
    80021cfe:	2501                	sext.w	a0,a0
    80021d00:	8082                	ret
    80021d02:	04000893          	li	a7,64
    80021d06:	00000073          	ecall
    80021d0a:	8082                	ret
    80021d0c:	0ac00893          	li	a7,172
    80021d10:	00000073          	ecall
    80021d14:	2501                	sext.w	a0,a0
    80021d16:	8082                	ret
    80021d18:	07c00893          	li	a7,124
    80021d1c:	00000073          	ecall
    80021d20:	2501                	sext.w	a0,a0
    80021d22:	8082                	ret
    80021d24:	05d00893          	li	a7,93
    80021d28:	00000073          	ecall
    80021d2c:	8082                	ret
    80021d2e:	0000                	unimp
    80021d30:	6568                	ld	a0,200(a0)
    80021d32:	6c6c                	ld	a1,216(s0)
    80021d34:	7277206f          	j	80094c5a <ebss+0x9c5a>
    80021d38:	21646c6f          	jal	s8,80067f4e <ustack+0x2deb6>
    80021d3c:	0000                	unimp
    80021d3e:	0000                	unimp
    80021d40:	6568                	ld	a0,200(a0)
    80021d42:	6c6c                	ld	a1,216(s0)
    80021d44:	6f77206f          	j	80094c3a <ebss+0x9c3a>
    80021d48:	6c72                	ld	s8,280(sp)
    80021d4a:	2164                	fld	fs1,192(a0)
    80021d4c:	0000                	unimp
    80021d4e:	0000                	unimp
    80021d50:	f100                	sd	s0,32(a0)
    80021d52:	ffff                	0xffff
    80021d54:	f11a                	sd	t1,160(sp)
    80021d56:	ffff                	0xffff
    80021d58:	f126                	sd	s1,160(sp)
    80021d5a:	ffff                	0xffff
    80021d5c:	f10e                	sd	gp,160(sp)
    80021d5e:	ffff                	0xffff
    80021d60:	f10e                	sd	gp,160(sp)
    80021d62:	ffff                	0xffff
    80021d64:	f10e                	sd	gp,160(sp)
    80021d66:	ffff                	0xffff
    80021d68:	f15e                	sd	s7,160(sp)
    80021d6a:	ffff                	0xffff
    80021d6c:	f150                	sd	a2,160(a0)
    80021d6e:	ffff                	0xffff
    80021d70:	f142                	sd	a6,160(sp)
    80021d72:	ffff                	0xffff
    80021d74:	f134                	sd	a3,96(a0)
    80021d76:	ffff                	0xffff
    80021d78:	f10e                	sd	gp,160(sp)
    80021d7a:	ffff                	0xffff
    80021d7c:	f10e                	sd	gp,160(sp)
    80021d7e:	ffff                	0xffff
    80021d80:	f10e                	sd	gp,160(sp)
    80021d82:	ffff                	0xffff
    80021d84:	f10e                	sd	gp,160(sp)
    80021d86:	ffff                	0xffff
    80021d88:	f10e                	sd	gp,160(sp)
    80021d8a:	ffff                	0xffff
    80021d8c:	f100                	sd	s0,32(a0)
    80021d8e:	ffff                	0xffff
    80021d90:	f71c                	sd	a5,40(a4)
    80021d92:	ffff                	0xffff
    80021d94:	f55c                	sd	a5,168(a0)
    80021d96:	ffff                	0xffff
    80021d98:	f55c                	sd	a5,168(a0)
    80021d9a:	ffff                	0xffff
    80021d9c:	f55c                	sd	a5,168(a0)
    80021d9e:	ffff                	0xffff
    80021da0:	f55c                	sd	a5,168(a0)
    80021da2:	ffff                	0xffff
    80021da4:	f55c                	sd	a5,168(a0)
    80021da6:	ffff                	0xffff
    80021da8:	f55c                	sd	a5,168(a0)
    80021daa:	ffff                	0xffff
    80021dac:	f55c                	sd	a5,168(a0)
    80021dae:	ffff                	0xffff
    80021db0:	f55c                	sd	a5,168(a0)
    80021db2:	ffff                	0xffff
    80021db4:	f55c                	sd	a5,168(a0)
    80021db6:	ffff                	0xffff
    80021db8:	f55c                	sd	a5,168(a0)
    80021dba:	ffff                	0xffff
    80021dbc:	f7de                	sd	s7,488(sp)
    80021dbe:	ffff                	0xffff
    80021dc0:	f78c                	sd	a1,40(a5)
    80021dc2:	ffff                	0xffff
    80021dc4:	f55c                	sd	a5,168(a0)
    80021dc6:	ffff                	0xffff
    80021dc8:	f55c                	sd	a5,168(a0)
    80021dca:	ffff                	0xffff
    80021dcc:	f55c                	sd	a5,168(a0)
    80021dce:	ffff                	0xffff
    80021dd0:	f55c                	sd	a5,168(a0)
    80021dd2:	ffff                	0xffff
    80021dd4:	f78c                	sd	a1,40(a5)
    80021dd6:	ffff                	0xffff
    80021dd8:	f55c                	sd	a5,168(a0)
    80021dda:	ffff                	0xffff
    80021ddc:	f55c                	sd	a5,168(a0)
    80021dde:	ffff                	0xffff
    80021de0:	f55c                	sd	a5,168(a0)
    80021de2:	ffff                	0xffff
    80021de4:	f55c                	sd	a5,168(a0)
    80021de6:	ffff                	0xffff
    80021de8:	f434                	sd	a3,104(s0)
    80021dea:	ffff                	0xffff
    80021dec:	f804                	sd	s1,48(s0)
    80021dee:	ffff                	0xffff
    80021df0:	f85e                	sd	s7,48(sp)
    80021df2:	ffff                	0xffff
    80021df4:	f55c                	sd	a5,168(a0)
    80021df6:	ffff                	0xffff
    80021df8:	f55c                	sd	a5,168(a0)
    80021dfa:	ffff                	0xffff
    80021dfc:	f87a                	sd	t5,48(sp)
    80021dfe:	ffff                	0xffff
    80021e00:	f55c                	sd	a5,168(a0)
    80021e02:	ffff                	0xffff
    80021e04:	f8a2                	sd	s0,112(sp)
    80021e06:	ffff                	0xffff
    80021e08:	f55c                	sd	a5,168(a0)
    80021e0a:	ffff                	0xffff
    80021e0c:	f55c                	sd	a5,168(a0)
    80021e0e:	ffff                	0xffff
    80021e10:	f71c                	sd	a5,40(a4)
    80021e12:	ffff                	0xffff
    80021e14:	f4d0                	sd	a2,168(s1)
    80021e16:	ffff                	0xffff
    80021e18:	f4b8                	sd	a4,104(s1)
    80021e1a:	ffff                	0xffff
    80021e1c:	f4b8                	sd	a4,104(s1)
    80021e1e:	ffff                	0xffff
    80021e20:	f4c8                	sd	a0,168(s1)
    80021e22:	ffff                	0xffff
    80021e24:	f4c0                	sd	s0,168(s1)
    80021e26:	ffff                	0xffff
    80021e28:	f12c                	sd	a1,96(a0)
    80021e2a:	ffff                	0xffff
    80021e2c:	f4b8                	sd	a4,104(s1)
    80021e2e:	ffff                	0xffff
    80021e30:	f4b8                	sd	a4,104(s1)
    80021e32:	ffff                	0xffff
    80021e34:	0000                	unimp
    80021e36:	0000                	unimp
    80021e38:	0019                	c.nop	6
    80021e3a:	000a                	c.slli	zero,0x2
    80021e3c:	1919                	addi	s2,s2,-26
    80021e3e:	0019                	c.nop	6
    80021e40:	0000                	unimp
    80021e42:	0500                	addi	s0,sp,640
    80021e44:	0000                	unimp
    80021e46:	0000                	unimp
    80021e48:	0000                	unimp
    80021e4a:	0009                	c.nop	2
    80021e4c:	0000                	unimp
    80021e4e:	0b00                	addi	s0,sp,400
	...
    80021e58:	0019                	c.nop	6
    80021e5a:	0a11                	addi	s4,s4,4
    80021e5c:	1919                	addi	s2,s2,-26
    80021e5e:	0319                	addi	t1,t1,6
    80021e60:	070a                	slli	a4,a4,0x2
    80021e62:	0100                	addi	s0,sp,128
    80021e64:	180b091b          	addiw	s2,s6,384
    80021e68:	0000                	unimp
    80021e6a:	0609                	addi	a2,a2,2
    80021e6c:	0b00000b          	0xb00000b
    80021e70:	0600                	addi	s0,sp,768
    80021e72:	0019                	c.nop	6
    80021e74:	0000                	unimp
    80021e76:	1919                	addi	s2,s2,-26
    80021e78:	0019                	c.nop	6
	...
    80021e86:	0000                	unimp
    80021e88:	0e00                	addi	s0,sp,784
	...
    80021e92:	0019                	c.nop	6
    80021e94:	0d0a                	slli	s10,s10,0x2
    80021e96:	1919                	addi	s2,s2,-26
    80021e98:	0019                	c.nop	6
    80021e9a:	000d                	c.nop	3
    80021e9c:	0200                	addi	s0,sp,256
    80021e9e:	0900                	addi	s0,sp,144
    80021ea0:	000e                	c.slli	zero,0x3
    80021ea2:	0000                	unimp
    80021ea4:	0009                	c.nop	2
    80021ea6:	000e                	c.slli	zero,0x3
    80021ea8:	0e00                	addi	s0,sp,784
	...
    80021ec2:	0c00                	addi	s0,sp,528
	...
    80021ecc:	0000                	unimp
    80021ece:	1300                	addi	s0,sp,416
    80021ed0:	0000                	unimp
    80021ed2:	0000                	unimp
    80021ed4:	00000013          	nop
    80021ed8:	0900                	addi	s0,sp,144
    80021eda:	000c                	0xc
    80021edc:	0000                	unimp
    80021ede:	0000                	unimp
    80021ee0:	000c                	0xc
    80021ee2:	0c00                	addi	s0,sp,528
	...
    80021efc:	1000                	addi	s0,sp,32
	...
    80021f06:	0000                	unimp
    80021f08:	0f00                	addi	s0,sp,912
    80021f0a:	0000                	unimp
    80021f0c:	0400                	addi	s0,sp,512
    80021f0e:	0000000f          	fence	unknown,unknown
    80021f12:	0900                	addi	s0,sp,144
    80021f14:	0010                	0x10
    80021f16:	0000                	unimp
    80021f18:	0000                	unimp
    80021f1a:	0010                	0x10
    80021f1c:	1000                	addi	s0,sp,32
	...
    80021f36:	1200                	addi	s0,sp,288
	...
    80021f40:	0000                	unimp
    80021f42:	1100                	addi	s0,sp,160
    80021f44:	0000                	unimp
    80021f46:	0000                	unimp
    80021f48:	0011                	c.nop	4
    80021f4a:	0000                	unimp
    80021f4c:	0900                	addi	s0,sp,144
    80021f4e:	0012                	c.slli	zero,0x4
    80021f50:	0000                	unimp
    80021f52:	0000                	unimp
    80021f54:	0012                	c.slli	zero,0x4
    80021f56:	1200                	addi	s0,sp,288
    80021f58:	0000                	unimp
    80021f5a:	001a                	c.slli	zero,0x6
    80021f5c:	0000                	unimp
    80021f5e:	1a1a                	slli	s4,s4,0x26
    80021f60:	001a                	c.slli	zero,0x6
	...
    80021f7a:	001a                	c.slli	zero,0x6
    80021f7c:	0000                	unimp
    80021f7e:	1a1a                	slli	s4,s4,0x26
    80021f80:	001a                	c.slli	zero,0x6
    80021f82:	0000                	unimp
    80021f84:	0000                	unimp
    80021f86:	0900                	addi	s0,sp,144
	...
    80021fa8:	0000                	unimp
    80021faa:	1400                	addi	s0,sp,544
	...
    80021fb4:	0000                	unimp
    80021fb6:	1700                	addi	s0,sp,928
    80021fb8:	0000                	unimp
    80021fba:	0000                	unimp
    80021fbc:	00000017          	auipc	zero,0x0
    80021fc0:	0900                	addi	s0,sp,144
    80021fc2:	0014                	0x14
    80021fc4:	0000                	unimp
    80021fc6:	0000                	unimp
    80021fc8:	0014                	0x14
    80021fca:	1400                	addi	s0,sp,544
	...
    80021fe4:	1600                	addi	s0,sp,800
	...
    80021fee:	0000                	unimp
    80021ff0:	1500                	addi	s0,sp,672
    80021ff2:	0000                	unimp
    80021ff4:	0000                	unimp
    80021ff6:	0015                	c.nop	5
    80021ff8:	0000                	unimp
    80021ffa:	0900                	addi	s0,sp,144
    80021ffc:	0016                	c.slli	zero,0x5
    80021ffe:	0000                	unimp
    80022000:	0000                	unimp
    80022002:	0016                	c.slli	zero,0x5
    80022004:	1600                	addi	s0,sp,800
    80022006:	0000                	unimp
    80022008:	3130                	fld	fa2,96(a0)
    8002200a:	3332                	fld	ft6,296(sp)
    8002200c:	3534                	fld	fa3,104(a0)
    8002200e:	3736                	fld	fa4,360(sp)
    80022010:	3938                	fld	fa4,112(a0)
    80022012:	4241                	li	tp,16
    80022014:	46454443          	fmadd.q	fs0,fa0,ft4,fs0,rmm
    80022018:	2b2d                	addiw	s6,s6,11
    8002201a:	2020                	fld	fs0,64(s0)
    8002201c:	3020                	fld	fs0,96(s0)
    8002201e:	3058                	fld	fa4,160(s0)
    80022020:	0078                	addi	a4,sp,12
    80022022:	0000                	unimp
    80022024:	0000                	unimp
    80022026:	0000                	unimp
    80022028:	6e28                	ld	a0,88(a2)
    8002202a:	6c75                	lui	s8,0x1d
    8002202c:	296c                	fld	fa1,208(a0)
	...
    8002302e:	0000                	unimp
    80023030:	feff                	0xfeff
    80023032:	fefe                	sd	t6,376(sp)
    80023034:	fefe                	sd	t6,376(sp)
    80023036:	fefe                	sd	t6,376(sp)
    80023038:	8080                	0x8080
    8002303a:	8080                	0x8080
    8002303c:	8080                	0x8080
    8002303e:	8080                	0x8080
    80023040:	0101                	addi	sp,sp,0
    80023042:	0101                	addi	sp,sp,0
    80023044:	0101                	addi	sp,sp,0
    80023046:	0101                	addi	sp,sp,0

0000000080023048 <app_1_start>:
    80023048:	1141                	addi	sp,sp,-16
    8002304a:	00001517          	auipc	a0,0x1
    8002304e:	f6650513          	addi	a0,a0,-154 # 80023fb0 <app_1_start+0xf68>
    80023052:	e406                	sd	ra,8(sp)
    80023054:	257000ef          	jal	ra,80023aaa <app_1_start+0xa62>
    80023058:	00001517          	auipc	a0,0x1
    8002305c:	f5850513          	addi	a0,a0,-168 # 80023fb0 <app_1_start+0xf68>
    80023060:	24b000ef          	jal	ra,80023aaa <app_1_start+0xa62>
    80023064:	731000ef          	jal	ra,80023f94 <app_1_start+0xf4c>
    80023068:	00001517          	auipc	a0,0x1
    8002306c:	f4850513          	addi	a0,a0,-184 # 80023fb0 <app_1_start+0xf68>
    80023070:	23b000ef          	jal	ra,80023aaa <app_1_start+0xa62>
    80023074:	721000ef          	jal	ra,80023f94 <app_1_start+0xf4c>
    80023078:	00001517          	auipc	a0,0x1
    8002307c:	f3850513          	addi	a0,a0,-200 # 80023fb0 <app_1_start+0xf68>
    80023080:	22b000ef          	jal	ra,80023aaa <app_1_start+0xa62>
    80023084:	711000ef          	jal	ra,80023f94 <app_1_start+0xf4c>
    80023088:	60a2                	ld	ra,8(sp)
    8002308a:	4501                	li	a0,0
    8002308c:	0141                	addi	sp,sp,16
    8002308e:	8082                	ret
    80023090:	850a                	mv	a0,sp
    80023092:	0040006f          	j	80023096 <app_1_start+0x4e>
    80023096:	1141                	addi	sp,sp,-16
    80023098:	e406                	sd	ra,8(sp)
    8002309a:	fafff0ef          	jal	ra,80023048 <app_1_start>
    8002309e:	703000ef          	jal	ra,80023fa0 <app_1_start+0xf58>
    800230a2:	60a2                	ld	ra,8(sp)
    800230a4:	4501                	li	a0,0
    800230a6:	0141                	addi	sp,sp,16
    800230a8:	8082                	ret
    800230aa:	35dd                	addiw	a1,a1,-9
    800230ac:	0005871b          	sext.w	a4,a1
    800230b0:	47bd                	li	a5,15
    800230b2:	02e7e363          	bltu	a5,a4,800230d8 <app_1_start+0x90>
    800230b6:	1582                	slli	a1,a1,0x20
    800230b8:	9181                	srli	a1,a1,0x20
    800230ba:	00001717          	auipc	a4,0x1
    800230be:	efe70713          	addi	a4,a4,-258 # 80023fb8 <app_1_start+0xf70>
    800230c2:	058a                	slli	a1,a1,0x2
    800230c4:	95ba                	add	a1,a1,a4
    800230c6:	419c                	lw	a5,0(a1)
    800230c8:	97ba                	add	a5,a5,a4
    800230ca:	8782                	jr	a5
    800230cc:	621c                	ld	a5,0(a2)
    800230ce:	00878713          	addi	a4,a5,8
    800230d2:	e218                	sd	a4,0(a2)
    800230d4:	639c                	ld	a5,0(a5)
    800230d6:	e11c                	sd	a5,0(a0)
    800230d8:	8082                	ret
    800230da:	621c                	ld	a5,0(a2)
    800230dc:	6398                	ld	a4,0(a5)
    800230de:	07a1                	addi	a5,a5,8
    800230e0:	e21c                	sd	a5,0(a2)
    800230e2:	e118                	sd	a4,0(a0)
    800230e4:	8082                	ret
    800230e6:	621c                	ld	a5,0(a2)
    800230e8:	4398                	lw	a4,0(a5)
    800230ea:	07a1                	addi	a5,a5,8
    800230ec:	e21c                	sd	a5,0(a2)
    800230ee:	e118                	sd	a4,0(a0)
    800230f0:	8082                	ret
    800230f2:	621c                	ld	a5,0(a2)
    800230f4:	0007e703          	lwu	a4,0(a5)
    800230f8:	07a1                	addi	a5,a5,8
    800230fa:	e21c                	sd	a5,0(a2)
    800230fc:	e118                	sd	a4,0(a0)
    800230fe:	8082                	ret
    80023100:	621c                	ld	a5,0(a2)
    80023102:	0007c703          	lbu	a4,0(a5)
    80023106:	07a1                	addi	a5,a5,8
    80023108:	e21c                	sd	a5,0(a2)
    8002310a:	e118                	sd	a4,0(a0)
    8002310c:	8082                	ret
    8002310e:	621c                	ld	a5,0(a2)
    80023110:	00078703          	lb	a4,0(a5)
    80023114:	07a1                	addi	a5,a5,8
    80023116:	e21c                	sd	a5,0(a2)
    80023118:	e118                	sd	a4,0(a0)
    8002311a:	8082                	ret
    8002311c:	621c                	ld	a5,0(a2)
    8002311e:	0007d703          	lhu	a4,0(a5)
    80023122:	07a1                	addi	a5,a5,8
    80023124:	e21c                	sd	a5,0(a2)
    80023126:	e118                	sd	a4,0(a0)
    80023128:	8082                	ret
    8002312a:	621c                	ld	a5,0(a2)
    8002312c:	00079703          	lh	a4,0(a5)
    80023130:	07a1                	addi	a5,a5,8
    80023132:	e21c                	sd	a5,0(a2)
    80023134:	e118                	sd	a4,0(a0)
    80023136:	8082                	ret
    80023138:	df010113          	addi	sp,sp,-528
    8002313c:	fbca                	sd	s2,496(sp)
    8002313e:	20113423          	sd	ra,520(sp)
    80023142:	20813023          	sd	s0,512(sp)
    80023146:	ffa6                	sd	s1,504(sp)
    80023148:	f7ce                	sd	s3,488(sp)
    8002314a:	f3d2                	sd	s4,480(sp)
    8002314c:	efd6                	sd	s5,472(sp)
    8002314e:	ebda                	sd	s6,464(sp)
    80023150:	e7de                	sd	s7,456(sp)
    80023152:	e3e2                	sd	s8,448(sp)
    80023154:	ff66                	sd	s9,440(sp)
    80023156:	fb6a                	sd	s10,432(sp)
    80023158:	f76e                	sd	s11,424(sp)
    8002315a:	892e                	mv	s2,a1
    8002315c:	0005c583          	lbu	a1,0(a1)
    80023160:	ec32                	sd	a2,24(sp)
    80023162:	f836                	sd	a3,48(sp)
    80023164:	f03a                	sd	a4,32(sp)
    80023166:	e802                	sd	zero,16(sp)
    80023168:	7e058963          	beqz	a1,8002395a <app_1_start+0x912>
    8002316c:	0cccdc37          	lui	s8,0xcccd
    80023170:	80000bb7          	lui	s7,0x80000
    80023174:	6acd                	lui	s5,0x13
    80023176:	cccc0793          	addi	a5,s8,-820 # ccccccc <_entry-0x73353334>
    8002317a:	89aa                	mv	s3,a0
    8002317c:	4a01                	li	s4,0
    8002317e:	fffbcb93          	not	s7,s7
    80023182:	889a8a9b          	addiw	s5,s5,-1911
    80023186:	e03e                	sd	a5,0(sp)
    80023188:	00001b17          	auipc	s6,0x1
    8002318c:	f18b0b13          	addi	s6,s6,-232 # 800240a0 <app_1_start+0x1058>
    80023190:	87ca                	mv	a5,s2
    80023192:	02500713          	li	a4,37
    80023196:	12e58f63          	beq	a1,a4,800232d4 <app_1_start+0x28c>
    8002319a:	0017c583          	lbu	a1,1(a5)
    8002319e:	0785                	addi	a5,a5,1
    800231a0:	f9fd                	bnez	a1,80023196 <app_1_start+0x14e>
    800231a2:	412784b3          	sub	s1,a5,s2
    800231a6:	8c3e                	mv	s8,a5
    800231a8:	414b8cbb          	subw	s9,s7,s4
    800231ac:	149cce63          	blt	s9,s1,80023308 <app_1_start+0x2c0>
    800231b0:	2481                	sext.w	s1,s1
    800231b2:	00099b63          	bnez	s3,800231c8 <app_1_start+0x180>
    800231b6:	cc99                	beqz	s1,800231d4 <app_1_start+0x18c>
    800231b8:	01448a3b          	addw	s4,s1,s4
    800231bc:	000c4583          	lbu	a1,0(s8)
    800231c0:	34058863          	beqz	a1,80023510 <app_1_start+0x4c8>
    800231c4:	8962                	mv	s2,s8
    800231c6:	b7e9                	j	80023190 <app_1_start+0x148>
    800231c8:	8626                	mv	a2,s1
    800231ca:	85ca                	mv	a1,s2
    800231cc:	854e                	mv	a0,s3
    800231ce:	5b1000ef          	jal	ra,80023f7e <app_1_start+0xf36>
    800231d2:	f0fd                	bnez	s1,800231b8 <app_1_start+0x170>
    800231d4:	001c4503          	lbu	a0,1(s8)
    800231d8:	197000ef          	jal	ra,80023b6e <app_1_start+0xb26>
    800231dc:	14050d63          	beqz	a0,80023336 <app_1_start+0x2ee>
    800231e0:	002c4683          	lbu	a3,2(s8)
    800231e4:	02400793          	li	a5,36
    800231e8:	001c4603          	lbu	a2,1(s8)
    800231ec:	22f68e63          	beq	a3,a5,80023428 <app_1_start+0x3e0>
    800231f0:	57fd                	li	a5,-1
    800231f2:	0c05                	addi	s8,s8,1
    800231f4:	e43e                	sd	a5,8(sp)
    800231f6:	fe06081b          	addiw	a6,a2,-32
    800231fa:	46fd                	li	a3,31
    800231fc:	87c2                	mv	a5,a6
    800231fe:	4401                	li	s0,0
    80023200:	4505                	li	a0,1
    80023202:	45fd                	li	a1,31
    80023204:	0106ff63          	bgeu	a3,a6,80023222 <app_1_start+0x1da>
    80023208:	a00d                	j	8002322a <app_1_start+0x1e2>
    8002320a:	001c4603          	lbu	a2,1(s8)
    8002320e:	00f517bb          	sllw	a5,a0,a5
    80023212:	8c5d                	or	s0,s0,a5
    80023214:	fe06069b          	addiw	a3,a2,-32
    80023218:	87b6                	mv	a5,a3
    8002321a:	0c05                	addi	s8,s8,1
    8002321c:	2401                	sext.w	s0,s0
    8002321e:	00d5e663          	bltu	a1,a3,8002322a <app_1_start+0x1e2>
    80023222:	00fad6bb          	srlw	a3,s5,a5
    80023226:	8a85                	andi	a3,a3,1
    80023228:	f2ed                	bnez	a3,8002320a <app_1_start+0x1c2>
    8002322a:	02a00793          	li	a5,42
    8002322e:	4d81                	li	s11,0
    80023230:	22f60763          	beq	a2,a5,8002345e <app_1_start+0x416>
    80023234:	000c4503          	lbu	a0,0(s8)
    80023238:	137000ef          	jal	ra,80023b6e <app_1_start+0xb26>
    8002323c:	c91d                	beqz	a0,80023272 <app_1_start+0x22a>
    8002323e:	6782                	ld	a5,0(sp)
    80023240:	0fb7e863          	bltu	a5,s11,80023330 <app_1_start+0x2e8>
    80023244:	002d979b          	slliw	a5,s11,0x2
    80023248:	000c4683          	lbu	a3,0(s8)
    8002324c:	01b7883b          	addw	a6,a5,s11
    80023250:	0018179b          	slliw	a5,a6,0x1
    80023254:	fd06861b          	addiw	a2,a3,-48
    80023258:	40fb85bb          	subw	a1,s7,a5
    8002325c:	5dfd                	li	s11,-1
    8002325e:	00c5c463          	blt	a1,a2,80023266 <app_1_start+0x21e>
    80023262:	00f60dbb          	addw	s11,a2,a5
    80023266:	0c05                	addi	s8,s8,1
    80023268:	000c4503          	lbu	a0,0(s8)
    8002326c:	103000ef          	jal	ra,80023b6e <app_1_start+0xb26>
    80023270:	f579                	bnez	a0,8002323e <app_1_start+0x1f6>
    80023272:	080dcb63          	bltz	s11,80023308 <app_1_start+0x2c0>
    80023276:	000c4683          	lbu	a3,0(s8)
    8002327a:	02e00793          	li	a5,46
    8002327e:	0af69f63          	bne	a3,a5,8002333c <app_1_start+0x2f4>
    80023282:	001c4683          	lbu	a3,1(s8)
    80023286:	02a00793          	li	a5,42
    8002328a:	16f68363          	beq	a3,a5,800233f0 <app_1_start+0x3a8>
    8002328e:	001c4503          	lbu	a0,1(s8)
    80023292:	0c05                	addi	s8,s8,1
    80023294:	4d01                	li	s10,0
    80023296:	0d9000ef          	jal	ra,80023b6e <app_1_start+0xb26>
    8002329a:	c91d                	beqz	a0,800232d0 <app_1_start+0x288>
    8002329c:	6782                	ld	a5,0(sp)
    8002329e:	1ba7ed63          	bltu	a5,s10,80023458 <app_1_start+0x410>
    800232a2:	002d179b          	slliw	a5,s10,0x2
    800232a6:	000c4683          	lbu	a3,0(s8)
    800232aa:	01a78d3b          	addw	s10,a5,s10
    800232ae:	001d179b          	slliw	a5,s10,0x1
    800232b2:	fd06861b          	addiw	a2,a3,-48
    800232b6:	40fb85bb          	subw	a1,s7,a5
    800232ba:	5d7d                	li	s10,-1
    800232bc:	00c5c463          	blt	a1,a2,800232c4 <app_1_start+0x27c>
    800232c0:	00f60d3b          	addw	s10,a2,a5
    800232c4:	0c05                	addi	s8,s8,1
    800232c6:	000c4503          	lbu	a0,0(s8)
    800232ca:	0a5000ef          	jal	ra,80023b6e <app_1_start+0xb26>
    800232ce:	f579                	bnez	a0,8002329c <app_1_start+0x254>
    800232d0:	4885                	li	a7,1
    800232d2:	a0bd                	j	80023340 <app_1_start+0x2f8>
    800232d4:	0007c603          	lbu	a2,0(a5)
    800232d8:	8c3e                	mv	s8,a5
    800232da:	02500693          	li	a3,37
    800232de:	412784b3          	sub	s1,a5,s2
    800232e2:	00b60963          	beq	a2,a1,800232f4 <app_1_start+0x2ac>
    800232e6:	b5c9                	j	800231a8 <app_1_start+0x160>
    800232e8:	002c4603          	lbu	a2,2(s8)
    800232ec:	0785                	addi	a5,a5,1
    800232ee:	0c09                	addi	s8,s8,2
    800232f0:	00d61663          	bne	a2,a3,800232fc <app_1_start+0x2b4>
    800232f4:	001c4603          	lbu	a2,1(s8)
    800232f8:	fed608e3          	beq	a2,a3,800232e8 <app_1_start+0x2a0>
    800232fc:	412784b3          	sub	s1,a5,s2
    80023300:	414b8cbb          	subw	s9,s7,s4
    80023304:	ea9cd6e3          	bge	s9,s1,800231b0 <app_1_start+0x168>
    80023308:	5a7d                	li	s4,-1
    8002330a:	20813083          	ld	ra,520(sp)
    8002330e:	20013403          	ld	s0,512(sp)
    80023312:	74fe                	ld	s1,504(sp)
    80023314:	795e                	ld	s2,496(sp)
    80023316:	79be                	ld	s3,488(sp)
    80023318:	6afe                	ld	s5,472(sp)
    8002331a:	6b5e                	ld	s6,464(sp)
    8002331c:	6bbe                	ld	s7,456(sp)
    8002331e:	6c1e                	ld	s8,448(sp)
    80023320:	7cfa                	ld	s9,440(sp)
    80023322:	7d5a                	ld	s10,432(sp)
    80023324:	7dba                	ld	s11,424(sp)
    80023326:	8552                	mv	a0,s4
    80023328:	7a1e                	ld	s4,480(sp)
    8002332a:	21010113          	addi	sp,sp,528
    8002332e:	8082                	ret
    80023330:	5dfd                	li	s11,-1
    80023332:	0c05                	addi	s8,s8,1
    80023334:	bf15                	j	80023268 <app_1_start+0x220>
    80023336:	001c4603          	lbu	a2,1(s8)
    8002333a:	bd5d                	j	800231f0 <app_1_start+0x1a8>
    8002333c:	4881                	li	a7,0
    8002333e:	5d7d                	li	s10,-1
    80023340:	4781                	li	a5,0
    80023342:	03900513          	li	a0,57
    80023346:	03a00e13          	li	t3,58
    8002334a:	431d                	li	t1,7
    8002334c:	a015                	j	80023370 <app_1_start+0x328>
    8002334e:	02079693          	slli	a3,a5,0x20
    80023352:	9281                	srli	a3,a3,0x20
    80023354:	03c686b3          	mul	a3,a3,t3
    80023358:	0c05                	addi	s8,s8,1
    8002335a:	96da                	add	a3,a3,s6
    8002335c:	96b2                	add	a3,a3,a2
    8002335e:	0006c683          	lbu	a3,0(a3)
    80023362:	fff6861b          	addiw	a2,a3,-1
    80023366:	0006859b          	sext.w	a1,a3
    8002336a:	00c36a63          	bltu	t1,a2,8002337e <app_1_start+0x336>
    8002336e:	87ae                	mv	a5,a1
    80023370:	000c4683          	lbu	a3,0(s8)
    80023374:	fbf6861b          	addiw	a2,a3,-65
    80023378:	fcc57be3          	bgeu	a0,a2,8002334e <app_1_start+0x306>
    8002337c:	b771                	j	80023308 <app_1_start+0x2c0>
    8002337e:	d5c9                	beqz	a1,80023308 <app_1_start+0x2c0>
    80023380:	466d                	li	a2,27
    80023382:	6722                	ld	a4,8(sp)
    80023384:	0ac58b63          	beq	a1,a2,8002343a <app_1_start+0x3f2>
    80023388:	16074963          	bltz	a4,800234fa <app_1_start+0x4b2>
    8002338c:	75c2                	ld	a1,48(sp)
    8002338e:	00471613          	slli	a2,a4,0x4
    80023392:	962e                	add	a2,a2,a1
    80023394:	6208                	ld	a0,0(a2)
    80023396:	660c                	ld	a1,8(a2)
    80023398:	00271613          	slli	a2,a4,0x2
    8002339c:	7702                	ld	a4,32(sp)
    8002339e:	f0aa                	sd	a0,96(sp)
    800233a0:	f4ae                	sd	a1,104(sp)
    800233a2:	963a                	add	a2,a2,a4
    800233a4:	c214                	sw	a3,0(a2)
    800233a6:	e0098be3          	beqz	s3,800231bc <app_1_start+0x174>
    800233aa:	fffc4683          	lbu	a3,-1(s8)
    800233ae:	0006861b          	sext.w	a2,a3
    800233b2:	c789                	beqz	a5,800233bc <app_1_start+0x374>
    800233b4:	8abd                	andi	a3,a3,15
    800233b6:	458d                	li	a1,3
    800233b8:	12b68e63          	beq	a3,a1,800234f4 <app_1_start+0x4ac>
    800233bc:	03241713          	slli	a4,s0,0x32
    800233c0:	00075563          	bgez	a4,800233ca <app_1_start+0x382>
    800233c4:	76c1                	lui	a3,0xffff0
    800233c6:	16fd                	addi	a3,a3,-1
    800233c8:	8c75                	and	s0,s0,a3
    800233ca:	fa86069b          	addiw	a3,a2,-88
    800233ce:	0006851b          	sext.w	a0,a3
    800233d2:	02000593          	li	a1,32
    800233d6:	18a5e963          	bltu	a1,a0,80023568 <app_1_start+0x520>
    800233da:	1682                	slli	a3,a3,0x20
    800233dc:	9281                	srli	a3,a3,0x20
    800233de:	00001597          	auipc	a1,0x1
    800233e2:	c1a58593          	addi	a1,a1,-998 # 80023ff8 <app_1_start+0xfb0>
    800233e6:	068a                	slli	a3,a3,0x2
    800233e8:	96ae                	add	a3,a3,a1
    800233ea:	4294                	lw	a3,0(a3)
    800233ec:	96ae                	add	a3,a3,a1
    800233ee:	8682                	jr	a3
    800233f0:	002c4503          	lbu	a0,2(s8)
    800233f4:	77a000ef          	jal	ra,80023b6e <app_1_start+0xb26>
    800233f8:	c519                	beqz	a0,80023406 <app_1_start+0x3be>
    800233fa:	003c4683          	lbu	a3,3(s8)
    800233fe:	02400793          	li	a5,36
    80023402:	0cf68463          	beq	a3,a5,800234ca <app_1_start+0x482>
    80023406:	67c2                	ld	a5,16(sp)
    80023408:	f00790e3          	bnez	a5,80023308 <app_1_start+0x2c0>
    8002340c:	08098863          	beqz	s3,8002349c <app_1_start+0x454>
    80023410:	6762                	ld	a4,24(sp)
    80023412:	0c09                	addi	s8,s8,2
    80023414:	631c                	ld	a5,0(a4)
    80023416:	0007ad03          	lw	s10,0(a5)
    8002341a:	07a1                	addi	a5,a5,8
    8002341c:	e31c                	sd	a5,0(a4)
    8002341e:	fffd4893          	not	a7,s10
    80023422:	01f8d89b          	srliw	a7,a7,0x1f
    80023426:	bf29                	j	80023340 <app_1_start+0x2f8>
    80023428:	fd06079b          	addiw	a5,a2,-48
    8002342c:	e43e                	sd	a5,8(sp)
    8002342e:	4785                	li	a5,1
    80023430:	0c0d                	addi	s8,s8,3
    80023432:	e83e                	sd	a5,16(sp)
    80023434:	000c4603          	lbu	a2,0(s8)
    80023438:	bb7d                	j	800231f6 <app_1_start+0x1ae>
    8002343a:	f60746e3          	bltz	a4,800233a6 <app_1_start+0x35e>
    8002343e:	b5e9                	j	80023308 <app_1_start+0x2c0>
    80023440:	469d                	li	a3,7
    80023442:	d6f6ede3          	bltu	a3,a5,800231bc <app_1_start+0x174>
    80023446:	00001697          	auipc	a3,0x1
    8002344a:	c3668693          	addi	a3,a3,-970 # 8002407c <app_1_start+0x1034>
    8002344e:	078a                	slli	a5,a5,0x2
    80023450:	97b6                	add	a5,a5,a3
    80023452:	439c                	lw	a5,0(a5)
    80023454:	97b6                	add	a5,a5,a3
    80023456:	8782                	jr	a5
    80023458:	5d7d                	li	s10,-1
    8002345a:	0c05                	addi	s8,s8,1
    8002345c:	b5ad                	j	800232c6 <app_1_start+0x27e>
    8002345e:	001c4503          	lbu	a0,1(s8)
    80023462:	70c000ef          	jal	ra,80023b6e <app_1_start+0xb26>
    80023466:	c519                	beqz	a0,80023474 <app_1_start+0x42c>
    80023468:	002c4683          	lbu	a3,2(s8)
    8002346c:	02400793          	li	a5,36
    80023470:	02f68a63          	beq	a3,a5,800234a4 <app_1_start+0x45c>
    80023474:	67c2                	ld	a5,16(sp)
    80023476:	e80799e3          	bnez	a5,80023308 <app_1_start+0x2c0>
    8002347a:	0c05                	addi	s8,s8,1
    8002347c:	4d81                	li	s11,0
    8002347e:	de098ce3          	beqz	s3,80023276 <app_1_start+0x22e>
    80023482:	6762                	ld	a4,24(sp)
    80023484:	631c                	ld	a5,0(a4)
    80023486:	0007ad83          	lw	s11,0(a5)
    8002348a:	07a1                	addi	a5,a5,8
    8002348c:	e31c                	sd	a5,0(a4)
    8002348e:	de0dd4e3          	bgez	s11,80023276 <app_1_start+0x22e>
    80023492:	6789                	lui	a5,0x2
    80023494:	8c5d                	or	s0,s0,a5
    80023496:	41b00dbb          	negw	s11,s11
    8002349a:	bbf1                	j	80023276 <app_1_start+0x22e>
    8002349c:	4d01                	li	s10,0
    8002349e:	4885                	li	a7,1
    800234a0:	0c09                	addi	s8,s8,2
    800234a2:	bd79                	j	80023340 <app_1_start+0x2f8>
    800234a4:	001c4783          	lbu	a5,1(s8)
    800234a8:	7702                	ld	a4,32(sp)
    800234aa:	46a9                	li	a3,10
    800234ac:	078a                	slli	a5,a5,0x2
    800234ae:	97ba                	add	a5,a5,a4
    800234b0:	0c0d                	addi	s8,s8,3
    800234b2:	f4d7a023          	sw	a3,-192(a5) # 1f40 <_entry-0x8001e0c0>
    800234b6:	4705                	li	a4,1
    800234b8:	ffec4783          	lbu	a5,-2(s8)
    800234bc:	e83a                	sd	a4,16(sp)
    800234be:	7742                	ld	a4,48(sp)
    800234c0:	0792                	slli	a5,a5,0x4
    800234c2:	97ba                	add	a5,a5,a4
    800234c4:	d007ad83          	lw	s11,-768(a5)
    800234c8:	b7d9                	j	8002348e <app_1_start+0x446>
    800234ca:	002c4783          	lbu	a5,2(s8)
    800234ce:	7702                	ld	a4,32(sp)
    800234d0:	46a9                	li	a3,10
    800234d2:	078a                	slli	a5,a5,0x2
    800234d4:	97ba                	add	a5,a5,a4
    800234d6:	0c11                	addi	s8,s8,4
    800234d8:	f4d7a023          	sw	a3,-192(a5)
    800234dc:	ffec4783          	lbu	a5,-2(s8)
    800234e0:	7742                	ld	a4,48(sp)
    800234e2:	0792                	slli	a5,a5,0x4
    800234e4:	97ba                	add	a5,a5,a4
    800234e6:	d007ad03          	lw	s10,-768(a5)
    800234ea:	fffd4893          	not	a7,s10
    800234ee:	01f8d89b          	srliw	a7,a7,0x1f
    800234f2:	b5b9                	j	80023340 <app_1_start+0x2f8>
    800234f4:	0df67613          	andi	a2,a2,223
    800234f8:	b5d1                	j	800233bc <app_1_start+0x374>
    800234fa:	f43e                	sd	a5,40(sp)
    800234fc:	e446                	sd	a7,8(sp)
    800234fe:	44098e63          	beqz	s3,8002395a <app_1_start+0x912>
    80023502:	6662                	ld	a2,24(sp)
    80023504:	1088                	addi	a0,sp,96
    80023506:	ba5ff0ef          	jal	ra,800230aa <app_1_start+0x62>
    8002350a:	68a2                	ld	a7,8(sp)
    8002350c:	77a2                	ld	a5,40(sp)
    8002350e:	bd71                	j	800233aa <app_1_start+0x362>
    80023510:	de099de3          	bnez	s3,8002330a <app_1_start+0x2c2>
    80023514:	67c2                	ld	a5,16(sp)
    80023516:	44078263          	beqz	a5,8002395a <app_1_start+0x912>
    8002351a:	7782                	ld	a5,32(sp)
    8002351c:	4485                	li	s1,1
    8002351e:	49a9                	li	s3,10
    80023520:	00478913          	addi	s2,a5,4
    80023524:	77c2                	ld	a5,48(sp)
    80023526:	01078413          	addi	s0,a5,16
    8002352a:	00092583          	lw	a1,0(s2)
    8002352e:	4c058663          	beqz	a1,800239fa <app_1_start+0x9b2>
    80023532:	6662                	ld	a2,24(sp)
    80023534:	8522                	mv	a0,s0
    80023536:	0485                	addi	s1,s1,1
    80023538:	b73ff0ef          	jal	ra,800230aa <app_1_start+0x62>
    8002353c:	0911                	addi	s2,s2,4
    8002353e:	0441                	addi	s0,s0,16
    80023540:	ff3495e3          	bne	s1,s3,8002352a <app_1_start+0x4e2>
    80023544:	4a05                	li	s4,1
    80023546:	b3d1                	j	8002330a <app_1_start+0x2c2>
    80023548:	7786                	ld	a5,96(sp)
    8002354a:	0147b023          	sd	s4,0(a5)
    8002354e:	b1bd                	j	800231bc <app_1_start+0x174>
    80023550:	7786                	ld	a5,96(sp)
    80023552:	01478023          	sb	s4,0(a5)
    80023556:	b19d                	j	800231bc <app_1_start+0x174>
    80023558:	7786                	ld	a5,96(sp)
    8002355a:	01479023          	sh	s4,0(a5)
    8002355e:	b9b9                	j	800231bc <app_1_start+0x174>
    80023560:	7786                	ld	a5,96(sp)
    80023562:	0147a023          	sw	s4,0(a5)
    80023566:	b999                	j	800231bc <app_1_start+0x174>
    80023568:	09b10793          	addi	a5,sp,155
    8002356c:	412787b3          	sub	a5,a5,s2
    80023570:	f43e                	sd	a5,40(sp)
    80023572:	3cfd5963          	bge	s10,a5,80023944 <app_1_start+0x8fc>
    80023576:	5d22                	lw	s10,40(sp)
    80023578:	80000537          	lui	a0,0x80000
    8002357c:	00001797          	auipc	a5,0x1
    80023580:	d0478793          	addi	a5,a5,-764 # 80024280 <app_1_start+0x1238>
    80023584:	fff54513          	not	a0,a0
    80023588:	e4be                	sd	a5,72(sp)
    8002358a:	d7a54fe3          	blt	a0,s10,80023308 <app_1_start+0x2c0>
    8002358e:	01a487bb          	addw	a5,s1,s10
    80023592:	e0be                	sd	a5,64(sp)
    80023594:	873e                	mv	a4,a5
    80023596:	87ee                	mv	a5,s11
    80023598:	00edd363          	bge	s11,a4,8002359e <app_1_start+0x556>
    8002359c:	87ba                	mv	a5,a4
    8002359e:	0007871b          	sext.w	a4,a5
    800235a2:	e8ba                	sd	a4,80(sp)
    800235a4:	d6ecc2e3          	blt	s9,a4,80023308 <app_1_start+0x2c0>
    800235a8:	6cc9                	lui	s9,0x12
    800235aa:	019477b3          	and	a5,s0,s9
    800235ae:	32079363          	bnez	a5,800238d4 <app_1_start+0x88c>
    800235b2:	87ba                	mv	a5,a4
    800235b4:	6706                	ld	a4,64(sp)
    800235b6:	36f75663          	bge	a4,a5,80023922 <app_1_start+0x8da>
    800235ba:	40e7883b          	subw	a6,a5,a4
    800235be:	10000613          	li	a2,256
    800235c2:	87c2                	mv	a5,a6
    800235c4:	86c2                	mv	a3,a6
    800235c6:	01065463          	bge	a2,a6,800235ce <app_1_start+0x586>
    800235ca:	10000793          	li	a5,256
    800235ce:	0a010c93          	addi	s9,sp,160
    800235d2:	863e                	mv	a2,a5
    800235d4:	02000593          	li	a1,32
    800235d8:	8566                	mv	a0,s9
    800235da:	fc42                	sd	a6,56(sp)
    800235dc:	e436                	sd	a3,8(sp)
    800235de:	ecbe                	sd	a5,88(sp)
    800235e0:	640000ef          	jal	ra,80023c20 <app_1_start+0xbd8>
    800235e4:	7862                	ld	a6,56(sp)
    800235e6:	0ff00613          	li	a2,255
    800235ea:	66a2                	ld	a3,8(sp)
    800235ec:	8dc2                	mv	s11,a6
    800235ee:	39065e63          	bge	a2,a6,8002398a <app_1_start+0x942>
    800235f2:	87c2                	mv	a5,a6
    800235f4:	f007879b          	addiw	a5,a5,-256
    800235f8:	10000613          	li	a2,256
    800235fc:	85e6                	mv	a1,s9
    800235fe:	854e                	mv	a0,s3
    80023600:	e43e                	sd	a5,8(sp)
    80023602:	fc3e                	sd	a5,56(sp)
    80023604:	17b000ef          	jal	ra,80023f7e <app_1_start+0xf36>
    80023608:	67a2                	ld	a5,8(sp)
    8002360a:	0ff00713          	li	a4,255
    8002360e:	fef763e3          	bltu	a4,a5,800235f4 <app_1_start+0x5ac>
    80023612:	863e                	mv	a2,a5
    80023614:	85e6                	mv	a1,s9
    80023616:	854e                	mv	a0,s3
    80023618:	167000ef          	jal	ra,80023f7e <app_1_start+0xf36>
    8002361c:	65a6                	ld	a1,72(sp)
    8002361e:	8626                	mv	a2,s1
    80023620:	854e                	mv	a0,s3
    80023622:	15d000ef          	jal	ra,80023f7e <app_1_start+0xf36>
    80023626:	66c1                	lui	a3,0x10
    80023628:	8ea1                	xor	a3,a3,s0
    8002362a:	6649                	lui	a2,0x12
    8002362c:	8ef1                	and	a3,a3,a2
    8002362e:	ea8d                	bnez	a3,80023660 <app_1_start+0x618>
    80023630:	6666                	ld	a2,88(sp)
    80023632:	03000593          	li	a1,48
    80023636:	8566                	mv	a0,s9
    80023638:	5e8000ef          	jal	ra,80023c20 <app_1_start+0xbd8>
    8002363c:	0ff00493          	li	s1,255
    80023640:	10000613          	li	a2,256
    80023644:	85e6                	mv	a1,s9
    80023646:	854e                	mv	a0,s3
    80023648:	f00d8d9b          	addiw	s11,s11,-256
    8002364c:	133000ef          	jal	ra,80023f7e <app_1_start+0xf36>
    80023650:	86ee                	mv	a3,s11
    80023652:	ffb4e7e3          	bltu	s1,s11,80023640 <app_1_start+0x5f8>
    80023656:	8636                	mv	a2,a3
    80023658:	85e6                	mv	a1,s9
    8002365a:	854e                	mv	a0,s3
    8002365c:	123000ef          	jal	ra,80023f7e <app_1_start+0xf36>
    80023660:	57a2                	lw	a5,40(sp)
    80023662:	05a7d963          	bge	a5,s10,800236b4 <app_1_start+0x66c>
    80023666:	40fd0d3b          	subw	s10,s10,a5
    8002366a:	10000693          	li	a3,256
    8002366e:	866a                	mv	a2,s10
    80023670:	8dea                	mv	s11,s10
    80023672:	01a6d463          	bge	a3,s10,8002367a <app_1_start+0x632>
    80023676:	10000613          	li	a2,256
    8002367a:	0a010c93          	addi	s9,sp,160
    8002367e:	03000593          	li	a1,48
    80023682:	8566                	mv	a0,s9
    80023684:	59c000ef          	jal	ra,80023c20 <app_1_start+0xbd8>
    80023688:	0ff00693          	li	a3,255
    8002368c:	01a6df63          	bge	a3,s10,800236aa <app_1_start+0x662>
    80023690:	0ff00493          	li	s1,255
    80023694:	10000613          	li	a2,256
    80023698:	85e6                	mv	a1,s9
    8002369a:	854e                	mv	a0,s3
    8002369c:	f00d0d1b          	addiw	s10,s10,-256
    800236a0:	0df000ef          	jal	ra,80023f7e <app_1_start+0xf36>
    800236a4:	8dea                	mv	s11,s10
    800236a6:	ffa4e7e3          	bltu	s1,s10,80023694 <app_1_start+0x64c>
    800236aa:	866e                	mv	a2,s11
    800236ac:	85e6                	mv	a1,s9
    800236ae:	854e                	mv	a0,s3
    800236b0:	0cf000ef          	jal	ra,80023f7e <app_1_start+0xf36>
    800236b4:	7622                	ld	a2,40(sp)
    800236b6:	85ca                	mv	a1,s2
    800236b8:	854e                	mv	a0,s3
    800236ba:	0c5000ef          	jal	ra,80023f7e <app_1_start+0xf36>
    800236be:	6746                	ld	a4,80(sp)
    800236c0:	6789                	lui	a5,0x2
    800236c2:	8fa1                	xor	a5,a5,s0
    800236c4:	66c9                	lui	a3,0x12
    800236c6:	8ff5                	and	a5,a5,a3
    800236c8:	01470a3b          	addw	s4,a4,s4
    800236cc:	ae0798e3          	bnez	a5,800231bc <app_1_start+0x174>
    800236d0:	87ba                	mv	a5,a4
    800236d2:	6706                	ld	a4,64(sp)
    800236d4:	aef754e3          	bge	a4,a5,800231bc <app_1_start+0x174>
    800236d8:	40e784bb          	subw	s1,a5,a4
    800236dc:	10000793          	li	a5,256
    800236e0:	8626                	mv	a2,s1
    800236e2:	8926                	mv	s2,s1
    800236e4:	0097d463          	bge	a5,s1,800236ec <app_1_start+0x6a4>
    800236e8:	10000613          	li	a2,256
    800236ec:	0a010c93          	addi	s9,sp,160
    800236f0:	02000593          	li	a1,32
    800236f4:	8566                	mv	a0,s9
    800236f6:	52a000ef          	jal	ra,80023c20 <app_1_start+0xbd8>
    800236fa:	0ff00793          	li	a5,255
    800236fe:	0097df63          	bge	a5,s1,8002371c <app_1_start+0x6d4>
    80023702:	0ff00413          	li	s0,255
    80023706:	10000613          	li	a2,256
    8002370a:	85e6                	mv	a1,s9
    8002370c:	854e                	mv	a0,s3
    8002370e:	f004849b          	addiw	s1,s1,-256
    80023712:	06d000ef          	jal	ra,80023f7e <app_1_start+0xf36>
    80023716:	8926                	mv	s2,s1
    80023718:	fe9467e3          	bltu	s0,s1,80023706 <app_1_start+0x6be>
    8002371c:	864a                	mv	a2,s2
    8002371e:	85e6                	mv	a1,s9
    80023720:	854e                	mv	a0,s3
    80023722:	05d000ef          	jal	ra,80023f7e <app_1_start+0xf36>
    80023726:	bc59                	j	800231bc <app_1_start+0x174>
    80023728:	02067513          	andi	a0,a2,32
    8002372c:	2501                	sext.w	a0,a0
    8002372e:	7786                	ld	a5,96(sp)
    80023730:	1e078f63          	beqz	a5,8002392e <app_1_start+0x8e6>
    80023734:	09b10593          	addi	a1,sp,155
    80023738:	0185151b          	slliw	a0,a0,0x18
    8002373c:	4185551b          	sraiw	a0,a0,0x18
    80023740:	892e                	mv	s2,a1
    80023742:	00f7f693          	andi	a3,a5,15
    80023746:	96da                	add	a3,a3,s6
    80023748:	1d06c683          	lbu	a3,464(a3) # 121d0 <_entry-0x8000de30>
    8002374c:	197d                	addi	s2,s2,-1
    8002374e:	8391                	srli	a5,a5,0x4
    80023750:	8ec9                	or	a3,a3,a0
    80023752:	00d90023          	sb	a3,0(s2)
    80023756:	f7f5                	bnez	a5,80023742 <app_1_start+0x6fa>
    80023758:	00847793          	andi	a5,s0,8
    8002375c:	20079a63          	bnez	a5,80023970 <app_1_start+0x928>
    80023760:	80000537          	lui	a0,0x80000
    80023764:	00001797          	auipc	a5,0x1
    80023768:	b1c78793          	addi	a5,a5,-1252 # 80024280 <app_1_start+0x1238>
    8002376c:	fff54513          	not	a0,a0
    80023770:	e4be                	sd	a5,72(sp)
    80023772:	0c089e63          	bnez	a7,8002384e <app_1_start+0x806>
    80023776:	7786                	ld	a5,96(sp)
    80023778:	41258733          	sub	a4,a1,s2
    8002377c:	0017b793          	seqz	a5,a5
    80023780:	f43a                	sd	a4,40(sp)
    80023782:	97ba                	add	a5,a5,a4
    80023784:	01a7d363          	bge	a5,s10,8002378a <app_1_start+0x742>
    80023788:	87ea                	mv	a5,s10
    8002378a:	00078d1b          	sext.w	s10,a5
    8002378e:	77a2                	ld	a5,40(sp)
    80023790:	defd5de3          	bge	s10,a5,8002358a <app_1_start+0x542>
    80023794:	5d22                	lw	s10,40(sp)
    80023796:	bbd5                	j	8002358a <app_1_start+0x542>
    80023798:	7786                	ld	a5,96(sp)
    8002379a:	2207c363          	bltz	a5,800239c0 <app_1_start+0x978>
    8002379e:	03441713          	slli	a4,s0,0x34
    800237a2:	2c074a63          	bltz	a4,80023a76 <app_1_start+0xa2e>
    800237a6:	00147693          	andi	a3,s0,1
    800237aa:	80000537          	lui	a0,0x80000
    800237ae:	10068363          	beqz	a3,800238b4 <app_1_start+0x86c>
    800237b2:	00001717          	auipc	a4,0x1
    800237b6:	ad070713          	addi	a4,a4,-1328 # 80024282 <app_1_start+0x123a>
    800237ba:	ffe54513          	xori	a0,a0,-2
    800237be:	4485                	li	s1,1
    800237c0:	e4ba                	sd	a4,72(sp)
    800237c2:	16078b63          	beqz	a5,80023938 <app_1_start+0x8f0>
    800237c6:	09b10593          	addi	a1,sp,155
    800237ca:	892e                	mv	s2,a1
    800237cc:	4629                	li	a2,10
    800237ce:	4e25                	li	t3,9
    800237d0:	02c7f6b3          	remu	a3,a5,a2
    800237d4:	197d                	addi	s2,s2,-1
    800237d6:	833e                	mv	t1,a5
    800237d8:	0306869b          	addiw	a3,a3,48
    800237dc:	00d90023          	sb	a3,0(s2)
    800237e0:	02c7d7b3          	divu	a5,a5,a2
    800237e4:	fe6e66e3          	bltu	t3,t1,800237d0 <app_1_start+0x788>
    800237e8:	b769                	j	80023772 <app_1_start+0x72a>
    800237ea:	7786                	ld	a5,96(sp)
    800237ec:	4d05                	li	s10,1
    800237ee:	09a10913          	addi	s2,sp,154
    800237f2:	08f10d23          	sb	a5,154(sp)
    800237f6:	77c1                	lui	a5,0xffff0
    800237f8:	17fd                	addi	a5,a5,-1
    800237fa:	8c7d                	and	s0,s0,a5
    800237fc:	4785                	li	a5,1
    800237fe:	e0be                	sd	a5,64(sp)
    80023800:	f43e                	sd	a5,40(sp)
    80023802:	00001797          	auipc	a5,0x1
    80023806:	a7e78793          	addi	a5,a5,-1410 # 80024280 <app_1_start+0x1238>
    8002380a:	6706                	ld	a4,64(sp)
    8002380c:	e4be                	sd	a5,72(sp)
    8002380e:	b361                	j	80023596 <app_1_start+0x54e>
    80023810:	7786                	ld	a5,96(sp)
    80023812:	09b10593          	addi	a1,sp,155
    80023816:	892e                	mv	s2,a1
    80023818:	86be                	mv	a3,a5
    8002381a:	cb91                	beqz	a5,8002382e <app_1_start+0x7e6>
    8002381c:	0076f613          	andi	a2,a3,7
    80023820:	197d                	addi	s2,s2,-1
    80023822:	0306061b          	addiw	a2,a2,48
    80023826:	00c90023          	sb	a2,0(s2)
    8002382a:	828d                	srli	a3,a3,0x3
    8002382c:	fae5                	bnez	a3,8002381c <app_1_start+0x7d4>
    8002382e:	00847693          	andi	a3,s0,8
    80023832:	c699                	beqz	a3,80023840 <app_1_start+0x7f8>
    80023834:	412586b3          	sub	a3,a1,s2
    80023838:	01a6c463          	blt	a3,s10,80023840 <app_1_start+0x7f8>
    8002383c:	00168d1b          	addiw	s10,a3,1
    80023840:	10088f63          	beqz	a7,8002395e <app_1_start+0x916>
    80023844:	00001797          	auipc	a5,0x1
    80023848:	a3c78793          	addi	a5,a5,-1476 # 80024280 <app_1_start+0x1238>
    8002384c:	e4be                	sd	a5,72(sp)
    8002384e:	aa0d4de3          	bltz	s10,80023308 <app_1_start+0x2c0>
    80023852:	7786                	ld	a5,96(sp)
    80023854:	76c1                	lui	a3,0xffff0
    80023856:	16fd                	addi	a3,a3,-1
    80023858:	8c75                	and	s0,s0,a3
    8002385a:	ebb5                	bnez	a5,800238ce <app_1_start+0x886>
    8002385c:	060d1963          	bnez	s10,800238ce <app_1_start+0x886>
    80023860:	e0a6                	sd	s1,64(sp)
    80023862:	f402                	sd	zero,40(sp)
    80023864:	892e                	mv	s2,a1
    80023866:	8726                	mv	a4,s1
    80023868:	b33d                	j	80023596 <app_1_start+0x54e>
    8002386a:	46c1                	li	a3,16
    8002386c:	87ea                	mv	a5,s10
    8002386e:	00dd7363          	bgeu	s10,a3,80023874 <app_1_start+0x82c>
    80023872:	47c1                	li	a5,16
    80023874:	00078d1b          	sext.w	s10,a5
    80023878:	00846413          	ori	s0,s0,8
    8002387c:	02000513          	li	a0,32
    80023880:	07800613          	li	a2,120
    80023884:	b56d                	j	8002372e <app_1_start+0x6e6>
    80023886:	7906                	ld	s2,96(sp)
    80023888:	02090e63          	beqz	s2,800238c4 <app_1_start+0x87c>
    8002388c:	140d4863          	bltz	s10,800239dc <app_1_start+0x994>
    80023890:	85ea                	mv	a1,s10
    80023892:	854a                	mv	a0,s2
    80023894:	5a8000ef          	jal	ra,80023e3c <app_1_start+0xdf4>
    80023898:	8d2a                	mv	s10,a0
    8002389a:	00a90733          	add	a4,s2,a0
    8002389e:	77c1                	lui	a5,0xffff0
    800238a0:	17fd                	addi	a5,a5,-1
    800238a2:	8c7d                	and	s0,s0,a5
    800238a4:	412707b3          	sub	a5,a4,s2
    800238a8:	2d01                	sext.w	s10,s10
    800238aa:	f43e                	sd	a5,40(sp)
    800238ac:	b1d9                	j	80023572 <app_1_start+0x52a>
    800238ae:	7786                	ld	a5,96(sp)
    800238b0:	80000537          	lui	a0,0x80000
    800238b4:	00001717          	auipc	a4,0x1
    800238b8:	9cc70713          	addi	a4,a4,-1588 # 80024280 <app_1_start+0x1238>
    800238bc:	fff54513          	not	a0,a0
    800238c0:	e4ba                	sd	a4,72(sp)
    800238c2:	b701                	j	800237c2 <app_1_start+0x77a>
    800238c4:	00001917          	auipc	s2,0x1
    800238c8:	9cc90913          	addi	s2,s2,-1588 # 80024290 <app_1_start+0x1248>
    800238cc:	b7c1                	j	8002388c <app_1_start+0x844>
    800238ce:	409b853b          	subw	a0,s7,s1
    800238d2:	b55d                	j	80023778 <app_1_start+0x730>
    800238d4:	65a6                	ld	a1,72(sp)
    800238d6:	8626                	mv	a2,s1
    800238d8:	854e                	mv	a0,s3
    800238da:	6a4000ef          	jal	ra,80023f7e <app_1_start+0xf36>
    800238de:	67c1                	lui	a5,0x10
    800238e0:	8fa1                	xor	a5,a5,s0
    800238e2:	0197fcb3          	and	s9,a5,s9
    800238e6:	d60c9de3          	bnez	s9,80023660 <app_1_start+0x618>
    800238ea:	67c6                	ld	a5,80(sp)
    800238ec:	6706                	ld	a4,64(sp)
    800238ee:	d6f759e3          	bge	a4,a5,80023660 <app_1_start+0x618>
    800238f2:	40e786bb          	subw	a3,a5,a4
    800238f6:	10000593          	li	a1,256
    800238fa:	8636                	mv	a2,a3
    800238fc:	8db6                	mv	s11,a3
    800238fe:	00d5d463          	bge	a1,a3,80023906 <app_1_start+0x8be>
    80023902:	10000613          	li	a2,256
    80023906:	0a010c93          	addi	s9,sp,160
    8002390a:	03000593          	li	a1,48
    8002390e:	8566                	mv	a0,s9
    80023910:	e436                	sd	a3,8(sp)
    80023912:	30e000ef          	jal	ra,80023c20 <app_1_start+0xbd8>
    80023916:	66a2                	ld	a3,8(sp)
    80023918:	0ff00613          	li	a2,255
    8002391c:	d2d640e3          	blt	a2,a3,8002363c <app_1_start+0x5f4>
    80023920:	bb1d                	j	80023656 <app_1_start+0x60e>
    80023922:	65a6                	ld	a1,72(sp)
    80023924:	8626                	mv	a2,s1
    80023926:	854e                	mv	a0,s3
    80023928:	656000ef          	jal	ra,80023f7e <app_1_start+0xf36>
    8002392c:	bb15                	j	80023660 <app_1_start+0x618>
    8002392e:	00001797          	auipc	a5,0x1
    80023932:	95278793          	addi	a5,a5,-1710 # 80024280 <app_1_start+0x1238>
    80023936:	e4be                	sd	a5,72(sp)
    80023938:	00088c63          	beqz	a7,80023950 <app_1_start+0x908>
    8002393c:	09b10593          	addi	a1,sp,155
    80023940:	892e                	mv	s2,a1
    80023942:	b731                	j	8002384e <app_1_start+0x806>
    80023944:	00001797          	auipc	a5,0x1
    80023948:	93c78793          	addi	a5,a5,-1732 # 80024280 <app_1_start+0x1238>
    8002394c:	e4be                	sd	a5,72(sp)
    8002394e:	b181                	j	8002358e <app_1_start+0x546>
    80023950:	09b10593          	addi	a1,sp,155
    80023954:	4781                	li	a5,0
    80023956:	892e                	mv	s2,a1
    80023958:	b711                	j	8002385c <app_1_start+0x814>
    8002395a:	4a01                	li	s4,0
    8002395c:	b27d                	j	8002330a <app_1_start+0x2c2>
    8002395e:	00001717          	auipc	a4,0x1
    80023962:	92270713          	addi	a4,a4,-1758 # 80024280 <app_1_start+0x1238>
    80023966:	e4ba                	sd	a4,72(sp)
    80023968:	4481                	li	s1,0
    8002396a:	ee0789e3          	beqz	a5,8002385c <app_1_start+0x814>
    8002396e:	b785                	j	800238ce <app_1_start+0x886>
    80023970:	8211                	srli	a2,a2,0x4
    80023972:	00001797          	auipc	a5,0x1
    80023976:	90e78793          	addi	a5,a5,-1778 # 80024280 <app_1_start+0x1238>
    8002397a:	97b2                	add	a5,a5,a2
    8002397c:	80000537          	lui	a0,0x80000
    80023980:	e4be                	sd	a5,72(sp)
    80023982:	ffd54513          	xori	a0,a0,-3
    80023986:	4489                	li	s1,2
    80023988:	b3ed                	j	80023772 <app_1_start+0x72a>
    8002398a:	8642                	mv	a2,a6
    8002398c:	85e6                	mv	a1,s9
    8002398e:	854e                	mv	a0,s3
    80023990:	e436                	sd	a3,8(sp)
    80023992:	5ec000ef          	jal	ra,80023f7e <app_1_start+0xf36>
    80023996:	65a6                	ld	a1,72(sp)
    80023998:	8626                	mv	a2,s1
    8002399a:	854e                	mv	a0,s3
    8002399c:	5e2000ef          	jal	ra,80023f7e <app_1_start+0xf36>
    800239a0:	67c1                	lui	a5,0x10
    800239a2:	8fa1                	xor	a5,a5,s0
    800239a4:	6649                	lui	a2,0x12
    800239a6:	8ff1                	and	a5,a5,a2
    800239a8:	66a2                	ld	a3,8(sp)
    800239aa:	ca079be3          	bnez	a5,80023660 <app_1_start+0x618>
    800239ae:	6666                	ld	a2,88(sp)
    800239b0:	03000593          	li	a1,48
    800239b4:	8566                	mv	a0,s9
    800239b6:	e436                	sd	a3,8(sp)
    800239b8:	268000ef          	jal	ra,80023c20 <app_1_start+0xbd8>
    800239bc:	66a2                	ld	a3,8(sp)
    800239be:	b961                	j	80023656 <app_1_start+0x60e>
    800239c0:	40f007b3          	neg	a5,a5
    800239c4:	80000537          	lui	a0,0x80000
    800239c8:	00001717          	auipc	a4,0x1
    800239cc:	8b870713          	addi	a4,a4,-1864 # 80024280 <app_1_start+0x1238>
    800239d0:	f0be                	sd	a5,96(sp)
    800239d2:	ffe54513          	xori	a0,a0,-2
    800239d6:	4485                	li	s1,1
    800239d8:	e4ba                	sd	a4,72(sp)
    800239da:	b3f5                	j	800237c6 <app_1_start+0x77e>
    800239dc:	800005b7          	lui	a1,0x80000
    800239e0:	fff5c593          	not	a1,a1
    800239e4:	854a                	mv	a0,s2
    800239e6:	456000ef          	jal	ra,80023e3c <app_1_start+0xdf4>
    800239ea:	00a90733          	add	a4,s2,a0
    800239ee:	00074783          	lbu	a5,0(a4)
    800239f2:	8d2a                	mv	s10,a0
    800239f4:	ea0785e3          	beqz	a5,8002389e <app_1_start+0x856>
    800239f8:	ba01                	j	80023308 <app_1_start+0x2c0>
    800239fa:	00148793          	addi	a5,s1,1
    800239fe:	4729                	li	a4,10
    80023a00:	b4e782e3          	beq	a5,a4,80023544 <app_1_start+0x4fc>
    80023a04:	7602                	ld	a2,32(sp)
    80023a06:	078a                	slli	a5,a5,0x2
    80023a08:	97b2                	add	a5,a5,a2
    80023a0a:	4394                	lw	a3,0(a5)
    80023a0c:	8e069ee3          	bnez	a3,80023308 <app_1_start+0x2c0>
    80023a10:	00248693          	addi	a3,s1,2
    80023a14:	b2e688e3          	beq	a3,a4,80023544 <app_1_start+0x4fc>
    80023a18:	43d4                	lw	a3,4(a5)
    80023a1a:	8e0697e3          	bnez	a3,80023308 <app_1_start+0x2c0>
    80023a1e:	00348693          	addi	a3,s1,3
    80023a22:	b2e681e3          	beq	a3,a4,80023544 <app_1_start+0x4fc>
    80023a26:	4794                	lw	a3,8(a5)
    80023a28:	8e0690e3          	bnez	a3,80023308 <app_1_start+0x2c0>
    80023a2c:	00448693          	addi	a3,s1,4
    80023a30:	b0e68ae3          	beq	a3,a4,80023544 <app_1_start+0x4fc>
    80023a34:	47d4                	lw	a3,12(a5)
    80023a36:	8c0699e3          	bnez	a3,80023308 <app_1_start+0x2c0>
    80023a3a:	00548693          	addi	a3,s1,5
    80023a3e:	b0e683e3          	beq	a3,a4,80023544 <app_1_start+0x4fc>
    80023a42:	4b98                	lw	a4,16(a5)
    80023a44:	8c0712e3          	bnez	a4,80023308 <app_1_start+0x2c0>
    80023a48:	00648713          	addi	a4,s1,6
    80023a4c:	46a9                	li	a3,10
    80023a4e:	aed70be3          	beq	a4,a3,80023544 <app_1_start+0x4fc>
    80023a52:	4bd8                	lw	a4,20(a5)
    80023a54:	8a071ae3          	bnez	a4,80023308 <app_1_start+0x2c0>
    80023a58:	00748713          	addi	a4,s1,7
    80023a5c:	aed704e3          	beq	a4,a3,80023544 <app_1_start+0x4fc>
    80023a60:	4f9c                	lw	a5,24(a5)
    80023a62:	8a0793e3          	bnez	a5,80023308 <app_1_start+0x2c0>
    80023a66:	4785                	li	a5,1
    80023a68:	acf49ee3          	bne	s1,a5,80023544 <app_1_start+0x4fc>
    80023a6c:	525c                	lw	a5,36(a2)
    80023a6e:	88079de3          	bnez	a5,80023308 <app_1_start+0x2c0>
    80023a72:	4a05                	li	s4,1
    80023a74:	b859                	j	8002330a <app_1_start+0x2c2>
    80023a76:	80000537          	lui	a0,0x80000
    80023a7a:	00001717          	auipc	a4,0x1
    80023a7e:	80770713          	addi	a4,a4,-2041 # 80024281 <app_1_start+0x1239>
    80023a82:	ffe54513          	xori	a0,a0,-2
    80023a86:	4485                	li	s1,1
    80023a88:	e4ba                	sd	a4,72(sp)
    80023a8a:	bb25                	j	800237c2 <app_1_start+0x77a>
    80023a8c:	1101                	addi	sp,sp,-32
    80023a8e:	87aa                	mv	a5,a0
    80023a90:	00f10593          	addi	a1,sp,15
    80023a94:	4605                	li	a2,1
    80023a96:	4501                	li	a0,0
    80023a98:	ec06                	sd	ra,24(sp)
    80023a9a:	00f107a3          	sb	a5,15(sp)
    80023a9e:	4e0000ef          	jal	ra,80023f7e <app_1_start+0xf36>
    80023aa2:	60e2                	ld	ra,24(sp)
    80023aa4:	2501                	sext.w	a0,a0
    80023aa6:	6105                	addi	sp,sp,32
    80023aa8:	8082                	ret
    80023aaa:	1101                	addi	sp,sp,-32
    80023aac:	e822                	sd	s0,16(sp)
    80023aae:	ec06                	sd	ra,24(sp)
    80023ab0:	842a                	mv	s0,a0
    80023ab2:	29e000ef          	jal	ra,80023d50 <app_1_start+0xd08>
    80023ab6:	862a                	mv	a2,a0
    80023ab8:	85a2                	mv	a1,s0
    80023aba:	4501                	li	a0,0
    80023abc:	4c2000ef          	jal	ra,80023f7e <app_1_start+0xf36>
    80023ac0:	00055763          	bgez	a0,80023ace <app_1_start+0xa86>
    80023ac4:	60e2                	ld	ra,24(sp)
    80023ac6:	6442                	ld	s0,16(sp)
    80023ac8:	557d                	li	a0,-1
    80023aca:	6105                	addi	sp,sp,32
    80023acc:	8082                	ret
    80023ace:	00f10593          	addi	a1,sp,15
    80023ad2:	47a9                	li	a5,10
    80023ad4:	4605                	li	a2,1
    80023ad6:	4501                	li	a0,0
    80023ad8:	00f107a3          	sb	a5,15(sp)
    80023adc:	4a2000ef          	jal	ra,80023f7e <app_1_start+0xf36>
    80023ae0:	60e2                	ld	ra,24(sp)
    80023ae2:	6442                	ld	s0,16(sp)
    80023ae4:	41f5551b          	sraiw	a0,a0,0x1f
    80023ae8:	6105                	addi	sp,sp,32
    80023aea:	8082                	ret
    80023aec:	7151                	addi	sp,sp,-240
    80023aee:	f1a2                	sd	s0,224(sp)
    80023af0:	8832                	mv	a6,a2
    80023af2:	842a                	mv	s0,a0
    80023af4:	0038                	addi	a4,sp,8
    80023af6:	1814                	addi	a3,sp,48
    80023af8:	860a                	mv	a2,sp
    80023afa:	4501                	li	a0,0
    80023afc:	eda6                	sd	s1,216(sp)
    80023afe:	f586                	sd	ra,232(sp)
    80023b00:	84ae                	mv	s1,a1
    80023b02:	e402                	sd	zero,8(sp)
    80023b04:	e802                	sd	zero,16(sp)
    80023b06:	ec02                	sd	zero,24(sp)
    80023b08:	f002                	sd	zero,32(sp)
    80023b0a:	f402                	sd	zero,40(sp)
    80023b0c:	e042                	sd	a6,0(sp)
    80023b0e:	e2aff0ef          	jal	ra,80023138 <app_1_start+0xf0>
    80023b12:	00054e63          	bltz	a0,80023b2e <app_1_start+0xae6>
    80023b16:	0038                	addi	a4,sp,8
    80023b18:	1814                	addi	a3,sp,48
    80023b1a:	860a                	mv	a2,sp
    80023b1c:	85a6                	mv	a1,s1
    80023b1e:	8522                	mv	a0,s0
    80023b20:	e18ff0ef          	jal	ra,80023138 <app_1_start+0xf0>
    80023b24:	70ae                	ld	ra,232(sp)
    80023b26:	740e                	ld	s0,224(sp)
    80023b28:	64ee                	ld	s1,216(sp)
    80023b2a:	616d                	addi	sp,sp,240
    80023b2c:	8082                	ret
    80023b2e:	557d                	li	a0,-1
    80023b30:	bfd5                	j	80023b24 <app_1_start+0xadc>
    80023b32:	711d                	addi	sp,sp,-96
    80023b34:	02810313          	addi	t1,sp,40
    80023b38:	f42e                	sd	a1,40(sp)
    80023b3a:	f832                	sd	a2,48(sp)
    80023b3c:	85aa                	mv	a1,a0
    80023b3e:	861a                	mv	a2,t1
    80023b40:	4501                	li	a0,0
    80023b42:	ec06                	sd	ra,24(sp)
    80023b44:	fc36                	sd	a3,56(sp)
    80023b46:	e0ba                	sd	a4,64(sp)
    80023b48:	e4be                	sd	a5,72(sp)
    80023b4a:	e8c2                	sd	a6,80(sp)
    80023b4c:	ecc6                	sd	a7,88(sp)
    80023b4e:	e41a                	sd	t1,8(sp)
    80023b50:	f9dff0ef          	jal	ra,80023aec <app_1_start+0xaa4>
    80023b54:	60e2                	ld	ra,24(sp)
    80023b56:	6125                	addi	sp,sp,96
    80023b58:	8082                	ret
    80023b5a:	02000793          	li	a5,32
    80023b5e:	00f50663          	beq	a0,a5,80023b6a <app_1_start+0xb22>
    80023b62:	355d                	addiw	a0,a0,-9
    80023b64:	00553513          	sltiu	a0,a0,5
    80023b68:	8082                	ret
    80023b6a:	4505                	li	a0,1
    80023b6c:	8082                	ret
    80023b6e:	fd05051b          	addiw	a0,a0,-48
    80023b72:	00a53513          	sltiu	a0,a0,10
    80023b76:	8082                	ret
    80023b78:	02000613          	li	a2,32
    80023b7c:	4591                	li	a1,4
    80023b7e:	00054703          	lbu	a4,0(a0) # ffffffff80000000 <ebss+0xfffffffefff75000>
    80023b82:	ff77069b          	addiw	a3,a4,-9
    80023b86:	04c70d63          	beq	a4,a2,80023be0 <app_1_start+0xb98>
    80023b8a:	0007079b          	sext.w	a5,a4
    80023b8e:	04d5f963          	bgeu	a1,a3,80023be0 <app_1_start+0xb98>
    80023b92:	02b00693          	li	a3,43
    80023b96:	04d70a63          	beq	a4,a3,80023bea <app_1_start+0xba2>
    80023b9a:	02d00693          	li	a3,45
    80023b9e:	06d70463          	beq	a4,a3,80023c06 <app_1_start+0xbbe>
    80023ba2:	fd07859b          	addiw	a1,a5,-48
    80023ba6:	4625                	li	a2,9
    80023ba8:	873e                	mv	a4,a5
    80023baa:	86aa                	mv	a3,a0
    80023bac:	4e01                	li	t3,0
    80023bae:	04b66a63          	bltu	a2,a1,80023c02 <app_1_start+0xbba>
    80023bb2:	4501                	li	a0,0
    80023bb4:	4825                	li	a6,9
    80023bb6:	0016c603          	lbu	a2,1(a3) # ffffffffffff0001 <ebss+0xffffffff7ff65001>
    80023bba:	0025179b          	slliw	a5,a0,0x2
    80023bbe:	9d3d                	addw	a0,a0,a5
    80023bc0:	fd07031b          	addiw	t1,a4,-48
    80023bc4:	0015189b          	slliw	a7,a0,0x1
    80023bc8:	fd06059b          	addiw	a1,a2,-48
    80023bcc:	0685                	addi	a3,a3,1
    80023bce:	4068853b          	subw	a0,a7,t1
    80023bd2:	0006071b          	sext.w	a4,a2
    80023bd6:	feb870e3          	bgeu	a6,a1,80023bb6 <app_1_start+0xb6e>
    80023bda:	000e0563          	beqz	t3,80023be4 <app_1_start+0xb9c>
    80023bde:	8082                	ret
    80023be0:	0505                	addi	a0,a0,1
    80023be2:	bf71                	j	80023b7e <app_1_start+0xb36>
    80023be4:	4113053b          	subw	a0,t1,a7
    80023be8:	8082                	ret
    80023bea:	00154783          	lbu	a5,1(a0)
    80023bee:	4625                	li	a2,9
    80023bf0:	00150693          	addi	a3,a0,1
    80023bf4:	fd07859b          	addiw	a1,a5,-48
    80023bf8:	0007871b          	sext.w	a4,a5
    80023bfc:	4e01                	li	t3,0
    80023bfe:	fab67ae3          	bgeu	a2,a1,80023bb2 <app_1_start+0xb6a>
    80023c02:	4501                	li	a0,0
    80023c04:	8082                	ret
    80023c06:	00154783          	lbu	a5,1(a0)
    80023c0a:	4625                	li	a2,9
    80023c0c:	00150693          	addi	a3,a0,1
    80023c10:	fd07859b          	addiw	a1,a5,-48
    80023c14:	0007871b          	sext.w	a4,a5
    80023c18:	feb665e3          	bltu	a2,a1,80023c02 <app_1_start+0xbba>
    80023c1c:	4e05                	li	t3,1
    80023c1e:	bf51                	j	80023bb2 <app_1_start+0xb6a>
    80023c20:	c679                	beqz	a2,80023cee <app_1_start+0xca6>
    80023c22:	0ff5f793          	andi	a5,a1,255
    80023c26:	00f50023          	sb	a5,0(a0)
    80023c2a:	00c50733          	add	a4,a0,a2
    80023c2e:	fef70fa3          	sb	a5,-1(a4)
    80023c32:	4689                	li	a3,2
    80023c34:	0ac6fd63          	bgeu	a3,a2,80023cee <app_1_start+0xca6>
    80023c38:	00f500a3          	sb	a5,1(a0)
    80023c3c:	00f50123          	sb	a5,2(a0)
    80023c40:	fef70f23          	sb	a5,-2(a4)
    80023c44:	fef70ea3          	sb	a5,-3(a4)
    80023c48:	4699                	li	a3,6
    80023c4a:	0ac6f263          	bgeu	a3,a2,80023cee <app_1_start+0xca6>
    80023c4e:	00f501a3          	sb	a5,3(a0)
    80023c52:	fef70e23          	sb	a5,-4(a4)
    80023c56:	46a1                	li	a3,8
    80023c58:	08c6fb63          	bgeu	a3,a2,80023cee <app_1_start+0xca6>
    80023c5c:	0ff5f593          	andi	a1,a1,255
    80023c60:	0085979b          	slliw	a5,a1,0x8
    80023c64:	40a00733          	neg	a4,a0
    80023c68:	8b0d                	andi	a4,a4,3
    80023c6a:	9dbd                	addw	a1,a1,a5
    80023c6c:	8e19                	sub	a2,a2,a4
    80023c6e:	0105979b          	slliw	a5,a1,0x10
    80023c72:	9dbd                	addw	a1,a1,a5
    80023c74:	972a                	add	a4,a4,a0
    80023c76:	9a71                	andi	a2,a2,-4
    80023c78:	c30c                	sw	a1,0(a4)
    80023c7a:	00c707b3          	add	a5,a4,a2
    80023c7e:	feb7ae23          	sw	a1,-4(a5) # fffc <_entry-0x80010004>
    80023c82:	06c6f663          	bgeu	a3,a2,80023cee <app_1_start+0xca6>
    80023c86:	c34c                	sw	a1,4(a4)
    80023c88:	c70c                	sw	a1,8(a4)
    80023c8a:	feb7aa23          	sw	a1,-12(a5)
    80023c8e:	feb7ac23          	sw	a1,-8(a5)
    80023c92:	46e1                	li	a3,24
    80023c94:	04c6fd63          	bgeu	a3,a2,80023cee <app_1_start+0xca6>
    80023c98:	00477813          	andi	a6,a4,4
    80023c9c:	c74c                	sw	a1,12(a4)
    80023c9e:	cb0c                	sw	a1,16(a4)
    80023ca0:	cb4c                	sw	a1,20(a4)
    80023ca2:	cf0c                	sw	a1,24(a4)
    80023ca4:	0861                	addi	a6,a6,24
    80023ca6:	02059893          	slli	a7,a1,0x20
    80023caa:	0208d893          	srli	a7,a7,0x20
    80023cae:	02059693          	slli	a3,a1,0x20
    80023cb2:	feb7a223          	sw	a1,-28(a5)
    80023cb6:	feb7a423          	sw	a1,-24(a5)
    80023cba:	feb7a623          	sw	a1,-20(a5)
    80023cbe:	feb7a823          	sw	a1,-16(a5)
    80023cc2:	41060633          	sub	a2,a2,a6
    80023cc6:	47fd                	li	a5,31
    80023cc8:	9742                	add	a4,a4,a6
    80023cca:	0116e6b3          	or	a3,a3,a7
    80023cce:	02c7f063          	bgeu	a5,a2,80023cee <app_1_start+0xca6>
    80023cd2:	1601                	addi	a2,a2,-32
    80023cd4:	fe067793          	andi	a5,a2,-32
    80023cd8:	02078793          	addi	a5,a5,32
    80023cdc:	97ba                	add	a5,a5,a4
    80023cde:	e314                	sd	a3,0(a4)
    80023ce0:	e714                	sd	a3,8(a4)
    80023ce2:	eb14                	sd	a3,16(a4)
    80023ce4:	ef14                	sd	a3,24(a4)
    80023ce6:	02070713          	addi	a4,a4,32
    80023cea:	fef71ae3          	bne	a4,a5,80023cde <app_1_start+0xc96>
    80023cee:	8082                	ret
    80023cf0:	00054783          	lbu	a5,0(a0)
    80023cf4:	0005c703          	lbu	a4,0(a1) # ffffffff80000000 <ebss+0xfffffffefff75000>
    80023cf8:	00e79863          	bne	a5,a4,80023d08 <app_1_start+0xcc0>
    80023cfc:	0505                	addi	a0,a0,1
    80023cfe:	0585                	addi	a1,a1,1
    80023d00:	fbe5                	bnez	a5,80023cf0 <app_1_start+0xca8>
    80023d02:	4501                	li	a0,0
    80023d04:	9d19                	subw	a0,a0,a4
    80023d06:	8082                	ret
    80023d08:	0007851b          	sext.w	a0,a5
    80023d0c:	bfe5                	j	80023d04 <app_1_start+0xcbc>
    80023d0e:	ce05                	beqz	a2,80023d46 <app_1_start+0xcfe>
    80023d10:	00054703          	lbu	a4,0(a0)
    80023d14:	0005c783          	lbu	a5,0(a1)
    80023d18:	cb0d                	beqz	a4,80023d4a <app_1_start+0xd02>
    80023d1a:	167d                	addi	a2,a2,-1
    80023d1c:	00c506b3          	add	a3,a0,a2
    80023d20:	a819                	j	80023d36 <app_1_start+0xcee>
    80023d22:	00a68e63          	beq	a3,a0,80023d3e <app_1_start+0xcf6>
    80023d26:	0505                	addi	a0,a0,1
    80023d28:	00e79b63          	bne	a5,a4,80023d3e <app_1_start+0xcf6>
    80023d2c:	00054703          	lbu	a4,0(a0)
    80023d30:	0005c783          	lbu	a5,0(a1)
    80023d34:	cb19                	beqz	a4,80023d4a <app_1_start+0xd02>
    80023d36:	0005c783          	lbu	a5,0(a1)
    80023d3a:	0585                	addi	a1,a1,1
    80023d3c:	f3fd                	bnez	a5,80023d22 <app_1_start+0xcda>
    80023d3e:	0007051b          	sext.w	a0,a4
    80023d42:	9d1d                	subw	a0,a0,a5
    80023d44:	8082                	ret
    80023d46:	4501                	li	a0,0
    80023d48:	8082                	ret
    80023d4a:	4501                	li	a0,0
    80023d4c:	9d1d                	subw	a0,a0,a5
    80023d4e:	8082                	ret
    80023d50:	00757793          	andi	a5,a0,7
    80023d54:	cf89                	beqz	a5,80023d6e <app_1_start+0xd26>
    80023d56:	87aa                	mv	a5,a0
    80023d58:	a029                	j	80023d62 <app_1_start+0xd1a>
    80023d5a:	0785                	addi	a5,a5,1
    80023d5c:	0077f713          	andi	a4,a5,7
    80023d60:	cb01                	beqz	a4,80023d70 <app_1_start+0xd28>
    80023d62:	0007c703          	lbu	a4,0(a5)
    80023d66:	fb75                	bnez	a4,80023d5a <app_1_start+0xd12>
    80023d68:	40a78533          	sub	a0,a5,a0
    80023d6c:	8082                	ret
    80023d6e:	87aa                	mv	a5,a0
    80023d70:	6394                	ld	a3,0(a5)
    80023d72:	00001597          	auipc	a1,0x1
    80023d76:	5265b583          	ld	a1,1318(a1) # 80025298 <app_1_start+0x2250>
    80023d7a:	00001617          	auipc	a2,0x1
    80023d7e:	52663603          	ld	a2,1318(a2) # 800252a0 <app_1_start+0x2258>
    80023d82:	a019                	j	80023d88 <app_1_start+0xd40>
    80023d84:	6794                	ld	a3,8(a5)
    80023d86:	07a1                	addi	a5,a5,8
    80023d88:	00b68733          	add	a4,a3,a1
    80023d8c:	fff6c693          	not	a3,a3
    80023d90:	8f75                	and	a4,a4,a3
    80023d92:	8f71                	and	a4,a4,a2
    80023d94:	db65                	beqz	a4,80023d84 <app_1_start+0xd3c>
    80023d96:	0007c703          	lbu	a4,0(a5)
    80023d9a:	d779                	beqz	a4,80023d68 <app_1_start+0xd20>
    80023d9c:	0017c703          	lbu	a4,1(a5)
    80023da0:	0785                	addi	a5,a5,1
    80023da2:	d379                	beqz	a4,80023d68 <app_1_start+0xd20>
    80023da4:	0017c703          	lbu	a4,1(a5)
    80023da8:	0785                	addi	a5,a5,1
    80023daa:	fb6d                	bnez	a4,80023d9c <app_1_start+0xd54>
    80023dac:	bf75                	j	80023d68 <app_1_start+0xd20>
    80023dae:	00757713          	andi	a4,a0,7
    80023db2:	87aa                	mv	a5,a0
    80023db4:	0ff5f593          	andi	a1,a1,255
    80023db8:	cb19                	beqz	a4,80023dce <app_1_start+0xd86>
    80023dba:	ce25                	beqz	a2,80023e32 <app_1_start+0xdea>
    80023dbc:	0007c703          	lbu	a4,0(a5)
    80023dc0:	04b70e63          	beq	a4,a1,80023e1c <app_1_start+0xdd4>
    80023dc4:	0785                	addi	a5,a5,1
    80023dc6:	0077f713          	andi	a4,a5,7
    80023dca:	167d                	addi	a2,a2,-1
    80023dcc:	f77d                	bnez	a4,80023dba <app_1_start+0xd72>
    80023dce:	4501                	li	a0,0
    80023dd0:	c235                	beqz	a2,80023e34 <app_1_start+0xdec>
    80023dd2:	0007c703          	lbu	a4,0(a5)
    80023dd6:	04b70363          	beq	a4,a1,80023e1c <app_1_start+0xdd4>
    80023dda:	00001517          	auipc	a0,0x1
    80023dde:	4ce53503          	ld	a0,1230(a0) # 800252a8 <app_1_start+0x2260>
    80023de2:	471d                	li	a4,7
    80023de4:	02a58533          	mul	a0,a1,a0
    80023de8:	02c77a63          	bgeu	a4,a2,80023e1c <app_1_start+0xdd4>
    80023dec:	00001897          	auipc	a7,0x1
    80023df0:	4ac8b883          	ld	a7,1196(a7) # 80025298 <app_1_start+0x2250>
    80023df4:	00001817          	auipc	a6,0x1
    80023df8:	4ac83803          	ld	a6,1196(a6) # 800252a0 <app_1_start+0x2258>
    80023dfc:	431d                	li	t1,7
    80023dfe:	a029                	j	80023e08 <app_1_start+0xdc0>
    80023e00:	1661                	addi	a2,a2,-8
    80023e02:	07a1                	addi	a5,a5,8
    80023e04:	02c37963          	bgeu	t1,a2,80023e36 <app_1_start+0xdee>
    80023e08:	6398                	ld	a4,0(a5)
    80023e0a:	8f29                	xor	a4,a4,a0
    80023e0c:	011706b3          	add	a3,a4,a7
    80023e10:	fff74713          	not	a4,a4
    80023e14:	8f75                	and	a4,a4,a3
    80023e16:	01077733          	and	a4,a4,a6
    80023e1a:	d37d                	beqz	a4,80023e00 <app_1_start+0xdb8>
    80023e1c:	853e                	mv	a0,a5
    80023e1e:	97b2                	add	a5,a5,a2
    80023e20:	a021                	j	80023e28 <app_1_start+0xde0>
    80023e22:	0505                	addi	a0,a0,1
    80023e24:	00f50763          	beq	a0,a5,80023e32 <app_1_start+0xdea>
    80023e28:	00054703          	lbu	a4,0(a0)
    80023e2c:	feb71be3          	bne	a4,a1,80023e22 <app_1_start+0xdda>
    80023e30:	8082                	ret
    80023e32:	4501                	li	a0,0
    80023e34:	8082                	ret
    80023e36:	4501                	li	a0,0
    80023e38:	f275                	bnez	a2,80023e1c <app_1_start+0xdd4>
    80023e3a:	8082                	ret
    80023e3c:	1101                	addi	sp,sp,-32
    80023e3e:	e822                	sd	s0,16(sp)
    80023e40:	862e                	mv	a2,a1
    80023e42:	842e                	mv	s0,a1
    80023e44:	4581                	li	a1,0
    80023e46:	e426                	sd	s1,8(sp)
    80023e48:	ec06                	sd	ra,24(sp)
    80023e4a:	84aa                	mv	s1,a0
    80023e4c:	f63ff0ef          	jal	ra,80023dae <app_1_start+0xd66>
    80023e50:	c519                	beqz	a0,80023e5e <app_1_start+0xe16>
    80023e52:	60e2                	ld	ra,24(sp)
    80023e54:	6442                	ld	s0,16(sp)
    80023e56:	8d05                	sub	a0,a0,s1
    80023e58:	64a2                	ld	s1,8(sp)
    80023e5a:	6105                	addi	sp,sp,32
    80023e5c:	8082                	ret
    80023e5e:	60e2                	ld	ra,24(sp)
    80023e60:	8522                	mv	a0,s0
    80023e62:	6442                	ld	s0,16(sp)
    80023e64:	64a2                	ld	s1,8(sp)
    80023e66:	6105                	addi	sp,sp,32
    80023e68:	8082                	ret
    80023e6a:	00b547b3          	xor	a5,a0,a1
    80023e6e:	8b9d                	andi	a5,a5,7
    80023e70:	eb95                	bnez	a5,80023ea4 <app_1_start+0xe5c>
    80023e72:	0075f793          	andi	a5,a1,7
    80023e76:	e7b1                	bnez	a5,80023ec2 <app_1_start+0xe7a>
    80023e78:	6198                	ld	a4,0(a1)
    80023e7a:	00001617          	auipc	a2,0x1
    80023e7e:	41e63603          	ld	a2,1054(a2) # 80025298 <app_1_start+0x2250>
    80023e82:	00001817          	auipc	a6,0x1
    80023e86:	41e83803          	ld	a6,1054(a6) # 800252a0 <app_1_start+0x2258>
    80023e8a:	a029                	j	80023e94 <app_1_start+0xe4c>
    80023e8c:	05a1                	addi	a1,a1,8
    80023e8e:	e118                	sd	a4,0(a0)
    80023e90:	6198                	ld	a4,0(a1)
    80023e92:	0521                	addi	a0,a0,8
    80023e94:	00c707b3          	add	a5,a4,a2
    80023e98:	fff74693          	not	a3,a4
    80023e9c:	8ff5                	and	a5,a5,a3
    80023e9e:	0107f7b3          	and	a5,a5,a6
    80023ea2:	d7ed                	beqz	a5,80023e8c <app_1_start+0xe44>
    80023ea4:	0005c783          	lbu	a5,0(a1)
    80023ea8:	00f50023          	sb	a5,0(a0)
    80023eac:	c785                	beqz	a5,80023ed4 <app_1_start+0xe8c>
    80023eae:	0015c783          	lbu	a5,1(a1)
    80023eb2:	0505                	addi	a0,a0,1
    80023eb4:	0585                	addi	a1,a1,1
    80023eb6:	00f50023          	sb	a5,0(a0)
    80023eba:	fbf5                	bnez	a5,80023eae <app_1_start+0xe66>
    80023ebc:	8082                	ret
    80023ebe:	0505                	addi	a0,a0,1
    80023ec0:	df45                	beqz	a4,80023e78 <app_1_start+0xe30>
    80023ec2:	0005c783          	lbu	a5,0(a1)
    80023ec6:	0585                	addi	a1,a1,1
    80023ec8:	0075f713          	andi	a4,a1,7
    80023ecc:	00f50023          	sb	a5,0(a0)
    80023ed0:	f7fd                	bnez	a5,80023ebe <app_1_start+0xe76>
    80023ed2:	8082                	ret
    80023ed4:	8082                	ret
    80023ed6:	1141                	addi	sp,sp,-16
    80023ed8:	00b547b3          	xor	a5,a0,a1
    80023edc:	e022                	sd	s0,0(sp)
    80023ede:	e406                	sd	ra,8(sp)
    80023ee0:	8b9d                	andi	a5,a5,7
    80023ee2:	842a                	mv	s0,a0
    80023ee4:	efb1                	bnez	a5,80023f40 <app_1_start+0xef8>
    80023ee6:	0075f793          	andi	a5,a1,7
    80023eea:	cf89                	beqz	a5,80023f04 <app_1_start+0xebc>
    80023eec:	c625                	beqz	a2,80023f54 <app_1_start+0xf0c>
    80023eee:	0005c783          	lbu	a5,0(a1)
    80023ef2:	0585                	addi	a1,a1,1
    80023ef4:	0075f713          	andi	a4,a1,7
    80023ef8:	00f40023          	sb	a5,0(s0)
    80023efc:	cfa1                	beqz	a5,80023f54 <app_1_start+0xf0c>
    80023efe:	167d                	addi	a2,a2,-1
    80023f00:	0405                	addi	s0,s0,1
    80023f02:	f76d                	bnez	a4,80023eec <app_1_start+0xea4>
    80023f04:	ca21                	beqz	a2,80023f54 <app_1_start+0xf0c>
    80023f06:	0005c783          	lbu	a5,0(a1)
    80023f0a:	c7a9                	beqz	a5,80023f54 <app_1_start+0xf0c>
    80023f0c:	479d                	li	a5,7
    80023f0e:	02c7fa63          	bgeu	a5,a2,80023f42 <app_1_start+0xefa>
    80023f12:	00001817          	auipc	a6,0x1
    80023f16:	38683803          	ld	a6,902(a6) # 80025298 <app_1_start+0x2250>
    80023f1a:	00001517          	auipc	a0,0x1
    80023f1e:	38653503          	ld	a0,902(a0) # 800252a0 <app_1_start+0x2258>
    80023f22:	489d                	li	a7,7
    80023f24:	6198                	ld	a4,0(a1)
    80023f26:	010707b3          	add	a5,a4,a6
    80023f2a:	fff74693          	not	a3,a4
    80023f2e:	8ff5                	and	a5,a5,a3
    80023f30:	8fe9                	and	a5,a5,a0
    80023f32:	eb81                	bnez	a5,80023f42 <app_1_start+0xefa>
    80023f34:	e018                	sd	a4,0(s0)
    80023f36:	1661                	addi	a2,a2,-8
    80023f38:	05a1                	addi	a1,a1,8
    80023f3a:	0421                	addi	s0,s0,8
    80023f3c:	fec8e4e3          	bltu	a7,a2,80023f24 <app_1_start+0xedc>
    80023f40:	ca11                	beqz	a2,80023f54 <app_1_start+0xf0c>
    80023f42:	0005c783          	lbu	a5,0(a1)
    80023f46:	0585                	addi	a1,a1,1
    80023f48:	00f40023          	sb	a5,0(s0)
    80023f4c:	c781                	beqz	a5,80023f54 <app_1_start+0xf0c>
    80023f4e:	167d                	addi	a2,a2,-1
    80023f50:	0405                	addi	s0,s0,1
    80023f52:	fa65                	bnez	a2,80023f42 <app_1_start+0xefa>
    80023f54:	8522                	mv	a0,s0
    80023f56:	4581                	li	a1,0
    80023f58:	cc9ff0ef          	jal	ra,80023c20 <app_1_start+0xbd8>
    80023f5c:	60a2                	ld	ra,8(sp)
    80023f5e:	8522                	mv	a0,s0
    80023f60:	6402                	ld	s0,0(sp)
    80023f62:	0141                	addi	sp,sp,16
    80023f64:	8082                	ret
    80023f66:	03800893          	li	a7,56
    80023f6a:	00000073          	ecall
    80023f6e:	2501                	sext.w	a0,a0
    80023f70:	8082                	ret
    80023f72:	03900893          	li	a7,57
    80023f76:	00000073          	ecall
    80023f7a:	2501                	sext.w	a0,a0
    80023f7c:	8082                	ret
    80023f7e:	04000893          	li	a7,64
    80023f82:	00000073          	ecall
    80023f86:	8082                	ret
    80023f88:	0ac00893          	li	a7,172
    80023f8c:	00000073          	ecall
    80023f90:	2501                	sext.w	a0,a0
    80023f92:	8082                	ret
    80023f94:	07c00893          	li	a7,124
    80023f98:	00000073          	ecall
    80023f9c:	2501                	sext.w	a0,a0
    80023f9e:	8082                	ret
    80023fa0:	05d00893          	li	a7,93
    80023fa4:	00000073          	ecall
    80023fa8:	8082                	ret
    80023faa:	0000                	unimp
    80023fac:	0000                	unimp
    80023fae:	0000                	unimp
    80023fb0:	6f70                	ld	a2,216(a4)
    80023fb2:	21726577          	0x21726577
    80023fb6:	0000                	unimp
    80023fb8:	f114                	sd	a3,32(a0)
    80023fba:	ffff                	0xffff
    80023fbc:	f12e                	sd	a1,160(sp)
    80023fbe:	ffff                	0xffff
    80023fc0:	f13a                	sd	a4,160(sp)
    80023fc2:	ffff                	0xffff
    80023fc4:	f122                	sd	s0,160(sp)
    80023fc6:	ffff                	0xffff
    80023fc8:	f122                	sd	s0,160(sp)
    80023fca:	ffff                	0xffff
    80023fcc:	f122                	sd	s0,160(sp)
    80023fce:	ffff                	0xffff
    80023fd0:	f172                	sd	t3,160(sp)
    80023fd2:	ffff                	0xffff
    80023fd4:	f164                	sd	s1,224(a0)
    80023fd6:	ffff                	0xffff
    80023fd8:	f156                	sd	s5,160(sp)
    80023fda:	ffff                	0xffff
    80023fdc:	f148                	sd	a0,160(a0)
    80023fde:	ffff                	0xffff
    80023fe0:	f122                	sd	s0,160(sp)
    80023fe2:	ffff                	0xffff
    80023fe4:	f122                	sd	s0,160(sp)
    80023fe6:	ffff                	0xffff
    80023fe8:	f122                	sd	s0,160(sp)
    80023fea:	ffff                	0xffff
    80023fec:	f122                	sd	s0,160(sp)
    80023fee:	ffff                	0xffff
    80023ff0:	f122                	sd	s0,160(sp)
    80023ff2:	ffff                	0xffff
    80023ff4:	f114                	sd	a3,32(a0)
    80023ff6:	ffff                	0xffff
    80023ff8:	f730                	sd	a2,104(a4)
    80023ffa:	ffff                	0xffff
    80023ffc:	f570                	sd	a2,232(a0)
    80023ffe:	ffff                	0xffff
    80024000:	f570                	sd	a2,232(a0)
    80024002:	ffff                	0xffff
    80024004:	f570                	sd	a2,232(a0)
    80024006:	ffff                	0xffff
    80024008:	f570                	sd	a2,232(a0)
    8002400a:	ffff                	0xffff
    8002400c:	f570                	sd	a2,232(a0)
    8002400e:	ffff                	0xffff
    80024010:	f570                	sd	a2,232(a0)
    80024012:	ffff                	0xffff
    80024014:	f570                	sd	a2,232(a0)
    80024016:	ffff                	0xffff
    80024018:	f570                	sd	a2,232(a0)
    8002401a:	ffff                	0xffff
    8002401c:	f570                	sd	a2,232(a0)
    8002401e:	ffff                	0xffff
    80024020:	f570                	sd	a2,232(a0)
    80024022:	ffff                	0xffff
    80024024:	f7f2                	sd	t3,488(sp)
    80024026:	ffff                	0xffff
    80024028:	f7a0                	sd	s0,104(a5)
    8002402a:	ffff                	0xffff
    8002402c:	f570                	sd	a2,232(a0)
    8002402e:	ffff                	0xffff
    80024030:	f570                	sd	a2,232(a0)
    80024032:	ffff                	0xffff
    80024034:	f570                	sd	a2,232(a0)
    80024036:	ffff                	0xffff
    80024038:	f570                	sd	a2,232(a0)
    8002403a:	ffff                	0xffff
    8002403c:	f7a0                	sd	s0,104(a5)
    8002403e:	ffff                	0xffff
    80024040:	f570                	sd	a2,232(a0)
    80024042:	ffff                	0xffff
    80024044:	f570                	sd	a2,232(a0)
    80024046:	ffff                	0xffff
    80024048:	f570                	sd	a2,232(a0)
    8002404a:	ffff                	0xffff
    8002404c:	f570                	sd	a2,232(a0)
    8002404e:	ffff                	0xffff
    80024050:	f448                	sd	a0,168(s0)
    80024052:	ffff                	0xffff
    80024054:	f818                	sd	a4,48(s0)
    80024056:	ffff                	0xffff
    80024058:	f872                	sd	t3,48(sp)
    8002405a:	ffff                	0xffff
    8002405c:	f570                	sd	a2,232(a0)
    8002405e:	ffff                	0xffff
    80024060:	f570                	sd	a2,232(a0)
    80024062:	ffff                	0xffff
    80024064:	f88e                	sd	gp,112(sp)
    80024066:	ffff                	0xffff
    80024068:	f570                	sd	a2,232(a0)
    8002406a:	ffff                	0xffff
    8002406c:	f8b6                	sd	a3,112(sp)
    8002406e:	ffff                	0xffff
    80024070:	f570                	sd	a2,232(a0)
    80024072:	ffff                	0xffff
    80024074:	f570                	sd	a2,232(a0)
    80024076:	ffff                	0xffff
    80024078:	f730                	sd	a2,104(a4)
    8002407a:	ffff                	0xffff
    8002407c:	f4e4                	sd	s1,232(s1)
    8002407e:	ffff                	0xffff
    80024080:	f4cc                	sd	a1,168(s1)
    80024082:	ffff                	0xffff
    80024084:	f4cc                	sd	a1,168(s1)
    80024086:	ffff                	0xffff
    80024088:	f4dc                	sd	a5,168(s1)
    8002408a:	ffff                	0xffff
    8002408c:	f4d4                	sd	a3,168(s1)
    8002408e:	ffff                	0xffff
    80024090:	f140                	sd	s0,160(a0)
    80024092:	ffff                	0xffff
    80024094:	f4cc                	sd	a1,168(s1)
    80024096:	ffff                	0xffff
    80024098:	f4cc                	sd	a1,168(s1)
    8002409a:	ffff                	0xffff
    8002409c:	0000                	unimp
    8002409e:	0000                	unimp
    800240a0:	0019                	c.nop	6
    800240a2:	000a                	c.slli	zero,0x2
    800240a4:	1919                	addi	s2,s2,-26
    800240a6:	0019                	c.nop	6
    800240a8:	0000                	unimp
    800240aa:	0500                	addi	s0,sp,640
    800240ac:	0000                	unimp
    800240ae:	0000                	unimp
    800240b0:	0000                	unimp
    800240b2:	0009                	c.nop	2
    800240b4:	0000                	unimp
    800240b6:	0b00                	addi	s0,sp,400
	...
    800240c0:	0019                	c.nop	6
    800240c2:	0a11                	addi	s4,s4,4
    800240c4:	1919                	addi	s2,s2,-26
    800240c6:	0319                	addi	t1,t1,6
    800240c8:	070a                	slli	a4,a4,0x2
    800240ca:	0100                	addi	s0,sp,128
    800240cc:	180b091b          	addiw	s2,s6,384
    800240d0:	0000                	unimp
    800240d2:	0609                	addi	a2,a2,2
    800240d4:	0b00000b          	0xb00000b
    800240d8:	0600                	addi	s0,sp,768
    800240da:	0019                	c.nop	6
    800240dc:	0000                	unimp
    800240de:	1919                	addi	s2,s2,-26
    800240e0:	0019                	c.nop	6
	...
    800240ee:	0000                	unimp
    800240f0:	0e00                	addi	s0,sp,784
	...
    800240fa:	0019                	c.nop	6
    800240fc:	0d0a                	slli	s10,s10,0x2
    800240fe:	1919                	addi	s2,s2,-26
    80024100:	0019                	c.nop	6
    80024102:	000d                	c.nop	3
    80024104:	0200                	addi	s0,sp,256
    80024106:	0900                	addi	s0,sp,144
    80024108:	000e                	c.slli	zero,0x3
    8002410a:	0000                	unimp
    8002410c:	0009                	c.nop	2
    8002410e:	000e                	c.slli	zero,0x3
    80024110:	0e00                	addi	s0,sp,784
	...
    8002412a:	0c00                	addi	s0,sp,528
	...
    80024134:	0000                	unimp
    80024136:	1300                	addi	s0,sp,416
    80024138:	0000                	unimp
    8002413a:	0000                	unimp
    8002413c:	00000013          	nop
    80024140:	0900                	addi	s0,sp,144
    80024142:	000c                	0xc
    80024144:	0000                	unimp
    80024146:	0000                	unimp
    80024148:	000c                	0xc
    8002414a:	0c00                	addi	s0,sp,528
	...
    80024164:	1000                	addi	s0,sp,32
	...
    8002416e:	0000                	unimp
    80024170:	0f00                	addi	s0,sp,912
    80024172:	0000                	unimp
    80024174:	0400                	addi	s0,sp,512
    80024176:	0000000f          	fence	unknown,unknown
    8002417a:	0900                	addi	s0,sp,144
    8002417c:	0010                	0x10
    8002417e:	0000                	unimp
    80024180:	0000                	unimp
    80024182:	0010                	0x10
    80024184:	1000                	addi	s0,sp,32
	...
    8002419e:	1200                	addi	s0,sp,288
	...
    800241a8:	0000                	unimp
    800241aa:	1100                	addi	s0,sp,160
    800241ac:	0000                	unimp
    800241ae:	0000                	unimp
    800241b0:	0011                	c.nop	4
    800241b2:	0000                	unimp
    800241b4:	0900                	addi	s0,sp,144
    800241b6:	0012                	c.slli	zero,0x4
    800241b8:	0000                	unimp
    800241ba:	0000                	unimp
    800241bc:	0012                	c.slli	zero,0x4
    800241be:	1200                	addi	s0,sp,288
    800241c0:	0000                	unimp
    800241c2:	001a                	c.slli	zero,0x6
    800241c4:	0000                	unimp
    800241c6:	1a1a                	slli	s4,s4,0x26
    800241c8:	001a                	c.slli	zero,0x6
	...
    800241e2:	001a                	c.slli	zero,0x6
    800241e4:	0000                	unimp
    800241e6:	1a1a                	slli	s4,s4,0x26
    800241e8:	001a                	c.slli	zero,0x6
    800241ea:	0000                	unimp
    800241ec:	0000                	unimp
    800241ee:	0900                	addi	s0,sp,144
	...
    80024210:	0000                	unimp
    80024212:	1400                	addi	s0,sp,544
	...
    8002421c:	0000                	unimp
    8002421e:	1700                	addi	s0,sp,928
    80024220:	0000                	unimp
    80024222:	0000                	unimp
    80024224:	00000017          	auipc	zero,0x0
    80024228:	0900                	addi	s0,sp,144
    8002422a:	0014                	0x14
    8002422c:	0000                	unimp
    8002422e:	0000                	unimp
    80024230:	0014                	0x14
    80024232:	1400                	addi	s0,sp,544
	...
    8002424c:	1600                	addi	s0,sp,800
	...
    80024256:	0000                	unimp
    80024258:	1500                	addi	s0,sp,672
    8002425a:	0000                	unimp
    8002425c:	0000                	unimp
    8002425e:	0015                	c.nop	5
    80024260:	0000                	unimp
    80024262:	0900                	addi	s0,sp,144
    80024264:	0016                	c.slli	zero,0x5
    80024266:	0000                	unimp
    80024268:	0000                	unimp
    8002426a:	0016                	c.slli	zero,0x5
    8002426c:	1600                	addi	s0,sp,800
    8002426e:	0000                	unimp
    80024270:	3130                	fld	fa2,96(a0)
    80024272:	3332                	fld	ft6,296(sp)
    80024274:	3534                	fld	fa3,104(a0)
    80024276:	3736                	fld	fa4,360(sp)
    80024278:	3938                	fld	fa4,112(a0)
    8002427a:	4241                	li	tp,16
    8002427c:	46454443          	fmadd.q	fs0,fa0,ft4,fs0,rmm
    80024280:	2b2d                	addiw	s6,s6,11
    80024282:	2020                	fld	fs0,64(s0)
    80024284:	3020                	fld	fs0,96(s0)
    80024286:	3058                	fld	fa4,160(s0)
    80024288:	0078                	addi	a4,sp,12
    8002428a:	0000                	unimp
    8002428c:	0000                	unimp
    8002428e:	0000                	unimp
    80024290:	6e28                	ld	a0,88(a2)
    80024292:	6c75                	lui	s8,0x1d
    80024294:	296c                	fld	fa1,208(a0)
	...
    80025296:	0000                	unimp
    80025298:	feff                	0xfeff
    8002529a:	fefe                	sd	t6,376(sp)
    8002529c:	fefe                	sd	t6,376(sp)
    8002529e:	fefe                	sd	t6,376(sp)
    800252a0:	8080                	0x8080
    800252a2:	8080                	0x8080
    800252a4:	8080                	0x8080
    800252a6:	8080                	0x8080
    800252a8:	0101                	addi	sp,sp,0
    800252aa:	0101                	addi	sp,sp,0
    800252ac:	0101                	addi	sp,sp,0
    800252ae:	0101                	addi	sp,sp,0

00000000800252b0 <app_1_end>:
	...
