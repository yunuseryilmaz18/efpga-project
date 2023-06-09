/*
 *  PicoSoC - A simple example SoC using PicoRV32
 *
 *  Copyright (C) 2017  Claire Xenia Wolf <claire@yosyshq.com>
 *
 *  Permission to use, copy, modify, and/or distribute this software for any
 *  purpose with or without fee is hereby granted, provided that the above
 *  copyright notice and this permission notice appear in all copies.
 *
 *  THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 *  WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 *  MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 *  ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 *  WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 *  ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 *  OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *
 */

#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include "../../chip/picorv/platform.h"

// a pointer to this is a null pointer, but the compiler does not
// know that because "sram" is a linker symbol from sections.lds.
// extern uint32_t sram;

#define CPU_CLK 50000000
#define BAUD_RATE 115200

//AES: 05628080_00000A08_08000412_00000000_20424003_00895418_28000000_0000D010_04304914_02080830_13040000_08081818_00220000_B246C000
//562808000000A0808000412000000002042400300895418280000000000D010043049140208083013040000_88081818_00220000_B246C000
// IO_Select: 85E69FB0_EA5DEAFF_5FFFC7FF_9F00007B_B35EE2FB_FFBBF7FD_2B400000_014BDC37_EF3D5B15_43DBCC7A_97040000_FBEF5CDF_116A808D_BED6DA00

int main()
{
	//while(read_efpga_csr() != 1);
	EFPGA_REG(EFPGA_IOSEL0)  = 0xBED6DA00;
	EFPGA_REG(EFPGA_IOSEL1)  = 0x116A808D;
	EFPGA_REG(EFPGA_IOSEL2)  = 0xFBEF5CDF;
	EFPGA_REG(EFPGA_IOSEL3)  = 0x97040000;
	EFPGA_REG(EFPGA_IOSEL4)  = 0x43DBCC7A;
	EFPGA_REG(EFPGA_IOSEL5)  = 0xEF3D5B15;
	EFPGA_REG(EFPGA_IOSEL6)  = 0x014BDC37;
	EFPGA_REG(EFPGA_IOSEL7)  = 0x2B400000;
	EFPGA_REG(EFPGA_IOSEL8)  = 0xFFBBF7FD;
	EFPGA_REG(EFPGA_IOSEL9)  = 0xB35EE2FB;
	EFPGA_REG(EFPGA_IOSEL10) = 0x9F00007B;
	EFPGA_REG(EFPGA_IOSEL11) = 0x5FFFC7FF;
	EFPGA_REG(EFPGA_IOSEL12) = 0xEA5DEAFF;
	EFPGA_REG(EFPGA_IOSEL13) = 0x85E69FB0;
	EFPGA_REG(EFPGA_GPIO0) = 0xB246C000;
	EFPGA_REG(EFPGA_GPIO1) = 0x00220000;
	EFPGA_REG(EFPGA_GPIO2) = 0x08081818;
	EFPGA_REG(EFPGA_GPIO3) = 0x13040000;
	EFPGA_REG(EFPGA_GPIO4) = 0x02080830;
	EFPGA_REG(EFPGA_GPIO5) = 0x04304914;
	EFPGA_REG(EFPGA_GPIO6) = 0x0000D010;
	EFPGA_REG(EFPGA_GPIO7) = 0x28000000;
	EFPGA_REG(EFPGA_GPIO8) = 0x00895418;
	EFPGA_REG(EFPGA_GPIO9) = 0x20424003;
	EFPGA_REG(EFPGA_GPIO10) = 0x00000000;
	EFPGA_REG(EFPGA_GPIO11) = 0x08000412;
	EFPGA_REG(EFPGA_GPIO12) = 0x00000A08;
	EFPGA_REG(EFPGA_GPIO13) = 0x05628080;
	EFPGA_REG(EFPGA_GPIO2) = 0x88081818;
	EFPGA_REG(EFPGA_GPIO2) = 0x08081818;
	// Initializing uart
	UART0_REG(UART_CLKDIV) = CPU_CLK/BAUD_RATE;	// was 104, should be 868 now.
	// EFPGA_REG(4) = 0x201 << (63-39);

	return 0;
}
