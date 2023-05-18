# See LICENSE for license details.

ifndef _SIFIVE_MK_COMMON
_SIFIVE_MK_COMMON := # defined

.PHONY: all
all: $(TARGET)

COMMON_DIR = $(BSP_BASE)/../common
# include $(COMMON_DIR)/libwrap/libwrap.mk

ENV_DIR = $(BSP_BASE)
ASM_SRCS += $(ENV_DIR)/start.S
C_SRCS += $(ENV_DIR)/../../drivers/src/uart_driver.c
C_SRCS += $(ENV_DIR)/../../drivers/src/spi_driver.c
C_SRCS += $(ENV_DIR)/../../drivers/src/timer.c

# BOARD dependend code

PLATFORM_DIR = $(ENV_DIR)/$(BOARD)
C_SRCS += $(PLATFORM_DIR)/init.c
C_SRCS += $(PLATFORM_DIR)/chipfunctions.c
LINKER_SCRIPT := $(PLATFORM_DIR)/linker.lds

INCLUDES += -I$(COMMON_DIR)/include
INCLUDES += -I$(COMMON_DIR)/drivers/
INCLUDES += -I$(ENV_DIR)
INCLUDES += -I$(PLATFORM_DIR)

TOOL_DIR = $(RISCV)/bin

LDFLAGS += -T $(LINKER_SCRIPT) -nostartfiles
LDFLAGS += -L$(ENV_DIR) --specs=nano.specs
LDFLAGS += -static -lm -fno-builtin-printf

ASM_OBJS := $(ASM_SRCS:.S=.o)
C_OBJS := $(C_SRCS:.c=.o) 

LINK_OBJS += $(ASM_OBJS) $(C_OBJS) 
LINK_DEPS += $(LINKER_SCRIPT)

CLEAN_OBJS += $(TARGET) $(LINK_OBJS)

CFLAGS += -g
CFLAGS += -march=$(RISCV_ARCH)
CFLAGS += -mabi=$(RISCV_ABI)
CFLAGS += -mcmodel=medany 


# Rownum := $(shell wc -l < $$(PROGRAM_ELF)_forL2Cache.hex)

$(TARGET): $(LINK_OBJS) $(LINK_DEPS)
	$(CC) $(CFLAGS) $(INCLUDES) $(LINK_OBJS) -o $(PROGRAM_ELF).elf $(LDFLAGS) $(XCFLAGS) 
	# for flash
	#$(RISCV_OBJCOPY) -O binary  $(PROGRAM_ELF).elf $(PROGRAM_ELF).bin  --strip-debug 
#	xxd -pl -c 256 $(PROGRAM_ELF).bin > $(PROGRAM_ELF)_forflash.hex
	$(RISCV_OBJDUMP) -D --disassembler-options=no-aliases,numeric -m   riscv:rv64 $(PROGRAM_ELF).elf > $(PROGRAM_ELF).asm;
	#for demo
	$(RISCV_OBJCOPY) -O binary -j .text*  $(PROGRAM_ELF).elf $(PROGRAM_ELF)_instruction.bin
	# group as little endian as 4 bytes
	od -t x4 -An -w4 -v $(PROGRAM_ELF)_instruction.bin > $(PROGRAM_ELF).hex
	# group as little endian as 4 bytes
#	dd if=/dev/zero of=$(PROGRAM_ELF).bin bs=1 count=1 seek=49996
	# group as little endian as 8 bytes
#	od -t x4 -An -w4 -v $(PROGRAM_ELF).bin > $(PROGRAM_ELF)_forROM.hex
	# group as little endian as 8 bytes
#	od -t x8 -An -w8 -v $(PROGRAM_ELF).bin > $(PROGRAM_ELF)_forDRAM.hex
	# we need 16 byte little endian, but od does not have that option. so we further modify with sed
	# sed -e '/^$$/d' -e 'N;s/\(.*\)\n\(.*\)/\2\1/' $(PROGRAM_ELF)_forL2Cache_Temp.hex > $(PROGRAM_ELF)_forL2Cache_temp2.hex
	# /^$/d - delete all the blank lines
	# N - put the next line into the pattern space
	# s - substitute
	# \(.*\)\n\(.*\) - matching the first line, followed by newline and the second line
	# \2\1 - append the first line to the end of second line by using back reference
	#cat $(PROGRAM_ELF)_forL2Cache_temp2.hex | tr -d ' \t'	> $(PROGRAM_ELF)_forL2Cache.hex
	#sed -i 's#^#000#' $(PROGRAM_ELF)_forL2Cache.hex
	# remove whitespace
	# add 000 to every line 
	# move to outputs dir.
	mv $(PROGRAM_ELF).hex $(ENV_DIR)/../../outputs/hex
	mv $(PROGRAM_ELF)_instruction.bin $(ENV_DIR)/../../outputs/bin
	#mv $(PROGRAM_ELF).bin $(ENV_DIR)/../../outputs/bin
	mv $(PROGRAM_ELF).asm $(ENV_DIR)/../../outputs/asm

	
$(ASM_OBJS): %.o: %.S $(HEADERS)
	$(CC) $(CFLAGS) $(INCLUDES) -c -o $@ $<

$(C_OBJS): %.o: %.c $(HEADERS)
	$(CC) $(CFLAGS) $(INCLUDES) -include sys/cdefs.h -c -o $@ $<

.PHONY: clean
clean:
	rm -f $(CLEAN_OBJS) 
	rm -f *.bin *.hex *.asm *.elf libwrap.a


endif # _SIFIVE_MK_COMMON
