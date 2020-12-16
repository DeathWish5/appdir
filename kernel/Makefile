K=.

SRCS = $(wildcard $K/*.S $K/*.c)
OBJS = $(addsuffix .o, $(basename $(SRCS)))  $K/link_app.o

PY = python3

# Try to infer the correct TOOLPREFIX if not set
TOOLPREFIX = riscv64-unknown-elf-
CC = $(TOOLPREFIX)gcc
GDB = $(TOOLPREFIX)gdb
AS = $(TOOLPREFIX)gas
LD = $(TOOLPREFIX)ld
OBJCOPY = $(TOOLPREFIX)objcopy
OBJDUMP = $(TOOLPREFIX)objdump

CFLAGS = -Wall -Werror -O -fno-omit-frame-pointer -ggdb
CFLAGS += -MD
CFLAGS += -mcmodel=medany
CFLAGS += -ffreestanding -fno-common -nostdlib -mno-relax
CFLAGS += -I.
CFLAGS += $(shell $(CC) -fno-stack-protector -E -x c /dev/null >/dev/null 2>&1 && echo -fno-stack-protector)

# Disable PIE when possible (for Ubuntu 16.10 toolchain)
ifneq ($(shell $(CC) -dumpspecs 2>/dev/null | grep -e '[^f]no-pie'),)
CFLAGS += -fno-pie -no-pie
endif
ifneq ($(shell $(CC) -dumpspecs 2>/dev/null | grep -e '[^f]nopie'),)
CFLAGS += -fno-pie -nopie
endif

LDFLAGS = -z max-page-size=4096

link_app.o: link_app.S
link_app.S: pack.py
	@$(PY) pack.py
kernel_app.ld: kernelld.py
	@$(PY) kernelld.py

$K/kernel: $(OBJS) kernel_app.ld link_app.S
	$(LD) $(LDFLAGS) -T $K/kernel_app.ld -o $K/kernel $(OBJS)
	$(OBJDUMP) -d $K/kernel > $K/kernel.asm
	$(OBJDUMP) -t $K/kernel | sed '1,/SYMBOL TABLE/d; s/ .* / /; /^$$/d' > $K/kernel.sym

clean: 
	@rm -f *.o *.d *.sym *.asm $K/kernel $K/link_app.S $K/kernel_app.ld

ifndef CPUS
CPUS := 1
endif

# BOARD
BOARD		?= qemu
SBI			?= rustsbi
BOOTLOADER	:= ../bootloader/$(SBI)-$(BOARD).bin

QEMU = qemu-system-riscv64
QEMUOPTS = \
	-nographic \
	-smp $(CPUS) \
	-machine virt \
	-bios $(BOOTLOADER) \
	-device loader,addr=0x80020000,file=$K/kernel

run: $K/kernel
	$(QEMU) $(QEMUOPTS)

# try to generate a unique GDB port
GDBPORT = $(shell expr `id -u` % 5000 + 25000)
# QEMU's gdb stub command line changed in 0.11
QEMUGDB = $(shell if $(QEMU) -help | grep -q '^-gdb'; \
	then echo "-gdb tcp::$(GDBPORT)"; \
	else echo "-s -p $(GDBPORT)"; fi)

.gdbinit: .gdbinit.impl-riscv
	sed "s/:1234/:$(GDBPORT)/" < $^ > $@

qemu-gdb: $K/kernel .gdbinit fs.img
	@echo "*** Now run 'gdb' in another window." 1>&2
	$(QEMU) $(QEMUOPTS) -S $(QEMUGDB)

debug: $K/kernel .gdbinit
	$(QEMU) $(QEMUOPTS) -S $(QEMUGDB) &
	sleep 1
	$(GDB)