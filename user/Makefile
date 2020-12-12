.DEFAULT_GOAL := bin

ARCH ?= riscv64
MODE ?= release
out_dir := target
cmake_build_args := -DARCH=$(ARCH)
ifeq ($(MODE), release)
cmake_build_args += -DCMAKE_BUILD_TYPE=Release
else ifeq ($(MODE), debug)
cmake_build_args += -DCMAKE_BUILD_TYPE=Debug
endif

OBJCOPY := $(ARCH)-linux-musl-objcopy
OBJDUMP := $(ARCH)-linux-musl-objdump
CP := cp

elf:
	@mkdir -p build
	@cd build && cmake $(cmake_build_args) .. && make -j
	@mkdir -p asm
	@$(foreach elf, $(wildcard build/$(ARCH)/*), $(OBJDUMP) $(elf) -S -d > $(patsubst build/$(ARCH)/%, asm/%.asm, $(elf));)

bin: elf
	@mkdir -p $(out_dir)
	@$(foreach elf, $(wildcard build/$(ARCH)/*), $(OBJCOPY) $(elf) --strip-all -O binary $(patsubst build/$(ARCH)/%, $(out_dir)/%.bin, $(elf));)

clean:
	@rm -rf build target asm