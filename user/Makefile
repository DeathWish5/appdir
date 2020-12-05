.DEFAULT_GOAL := all

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

elf:
	@mkdir -p build
	@cd build && cmake $(cmake_build_args) .. && make -j

bin: elf
	@mkdir -p $(out_dir)
	@$(foreach elf, $(wildcard build/$(ARCH)/*), $(OBJCOPY) $(elf) -S -O binary $(patsubst build/$(ARCH)/%, $(out_dir)/%.bin, $(elf));)

all: elf

clean:
	@rm -rf build target

.PHONY: build clean c