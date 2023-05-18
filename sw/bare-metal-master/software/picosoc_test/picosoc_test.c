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
#include "i2c.c"

// a pointer to this is a null pointer, but the compiler does not
// know that because "sram" is a linker symbol from sections.lds.
// extern uint32_t sram;

#define CPU_CLK 50000000
#define BAUD_RATE 115200

int main()
{
	// Initializing uart
	UART0_REG(UART_CLKDIV) = CPU_CLK/BAUD_RATE;	// was 104, should be 868 now.

picosoc_printf("\n"
"--------------------------------------------------------------------------------\n"
"<<<<<<<<<<<<<<<<<<<<< WELCOME TO THE PICOSOC TEST SYSTEM >>>>>>>>>>>>>>>>>>>>>>>\n"
"--------------------------------------------------------------------------------\n"); 

char buffer[100];
int length = 0;
		

 for (;;) {
    picosoc_printf("\n[tutel@tubitak.gov.tr ~]$ ");
    length = zscan(buffer, 100, 1);
		
    if (!length) // nothing to be done
		continue;
	
    // decode input and execute command
    if (!strcmp(buffer, "help")) {
					picosoc_printf( 
						"\n"
						"Available commands:\n"
						"  help         : show this text\n"
						"  info         : info info\n"
						"  i2c          : info info\n\n"
						);
    }
    else if (!strcmp(buffer, "info")) {
		picosoc_printf("info\n");
	}	
    else if (!strcmp(buffer, "i2c")) {
		
	I2C0_REG(I2C_CTRL) 	  = 0x1;
	// I2C0_REG(I2C_TIMING0) = 0x00320024;
	// I2C0_REG(I2C_TIMING1) = 0x000c0002;
	// I2C0_REG(I2C_TIMING2) = 0x001a001a;
	// I2C0_REG(I2C_TIMING3) = 0x001a0000;
	// I2C0_REG(I2C_TIMING4) = 0x00100032;
	
	I2C0_REG(I2C_TIMING0) = 0x0082003c;
	I2C0_REG(I2C_TIMING1) = 0x001e001e;
	I2C0_REG(I2C_TIMING2) = 0x003c003c;
	I2C0_REG(I2C_TIMING3) = 0x000a0000;
	I2C0_REG(I2C_TIMING4) = 0x003c003c;
	
	// I2C0_REG(I2C_TIMING0) = 0x01040078;
	// I2C0_REG(I2C_TIMING1) = 0x003c003c;
	// I2C0_REG(I2C_TIMING2) = 0x00780078;
	// I2C0_REG(I2C_TIMING3) = 0x00140000;
	// I2C0_REG(I2C_TIMING4) = 0x00780078;
	
	
	I2C0_REG(I2C_FDATA)  	= 0x1190;
	I2C0_REG(I2C_FDATA)  	= 0x1002;
	I2C0_REG(I2C_FDATA)  	= 0x1602;
	
	i2c();
    }
    else {
	  picosoc_printf("\nInvalid command. Type 'help' to see all commands.\n");
    }
}
	return 0;
}
