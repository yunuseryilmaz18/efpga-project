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

int main()
{
	// Initializing uart
	UART0_REG(UART_CLKDIV) = CPU_CLK/BAUD_RATE;	// was 104, should be 868 now.
	EFPGA_REG(0) = 1 << (32-7);
	EFPGA_REG(4) = 1 << (32-16);
	
picosoc_printf("\n"
"--------------------------------------------------------------------------------\n"
"<<<<<<<<<<<<<<< WELCOME TO THE TEKNOFEST 2022 CHIP COMPETITION >>>>>>>>>>>>>>>>>\n"
"--------------------------------------------------------------------------------\n"
"\n"
"                         ▄ ▄                                                    \n"
"        ▄▄▄▄▄▄▄▄▄▄▄  ▄   ▀ ▀   ▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄                   \n"
"       ▐░░░░░░░░░░░▌▐░▌       ▐░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌                  \n"
"        ▀▀▀▀█░█▀▀▀▀ ▐░▌       ▐░▌ ▀▀▀▀█░█▀▀▀▀ ▐░█▀▀▀▀▀▀▀▀▀ ▐░▌                  \n"
"            ▐░▌     ▐░▌       ▐░▌     ▐░▌     ▐░▌          ▐░▌                  \n"
"            ▐░▌     ▐░▌       ▐░▌     ▐░▌     ▐░█▄▄▄▄▄▄▄▄▄ ▐░▌                  \n"
"            ▐░▌     ▐░▌       ▐░▌     ▐░▌     ▐░░░░░░░░░░░▌▐░▌                  \n"
"            ▐░▌     ▐░▌       ▐░▌     ▐░▌     ▐░█▀▀▀▀▀▀▀▀▀ ▐░▌                  \n"
"            ▐░▌     ▐░▌       ▐░▌     ▐░▌     ▐░▌          ▐░▌                  \n"
"            ▐░▌     ▐░█▄▄▄▄▄▄▄█░▌     ▐░▌     ▐░█▄▄▄▄▄▄▄▄▄ ▐░█▄▄▄▄▄▄▄▄▄         \n"
"            ▐░▌     ▐░░░░░░░░░░░▌     ▐░▌     ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌        \n"
"             ▀       ▀▀▀▀▀▀▀▀▀▀▀       ▀       ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀         \n"
"\n"); 

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
						"  tekno        : info info\n\n"
						);
    }
    else if (!strcmp(buffer, "info")) {
		picosoc_printf("info\n");
	}	
    else if (!strcmp(buffer, "tekno")) {
	uint32_t prev_time;
	uint32_t current_time;
	uint32_t munite;
	uint32_t second;
	uint32_t millisecond;
	uint32_t microsecond;
	uint32_t spi_stat;
	uint32_t spi_read_data;
	uint32_t a_data;
	uint32_t b_data;
	uint32_t result_add;
	uint32_t result_sub;
	uint32_t result_mul;
	uint32_t result_div;
	uint32_t result_mod;
	
	
	prev_time = read_time(); 
	
	picosoc_printf("\n"
	"-------------------------------------------------------------------------------------\n"
	"<<<<<<<<<<<<<< TEKNOFEST 2022 CHIP DESIGN COMPETITION SOFTWARE EXAMPLE >>>>>>>>>>>>>>\n"
	"-------------------------------------------------------------------------------------\n"); 
	
	picosoc_printf("\nSome Calculations:\n");
	picosoc_printf("\n	     op            =     add        sub        mul        div        mod");
	for (int i = 0; i <20; i++){
		a_data = 0x13579bdf + 0x11223344*i;
		b_data = 0x02468ace + 0x55667788*i;
		result_add = a_data + b_data;
		result_sub = a_data - b_data;
		result_mul = a_data * b_data;
		result_div = a_data / b_data;
		result_mod = a_data % b_data;
		picosoc_printf("\n> 0x%x op 0x%x = 0x%x 0x%x 0x%x 0x%x 0x%x", a_data, b_data, result_add, result_sub, result_mul, result_div, result_mod);
	}
	
	spi_ctrl spi_control;
	spi_control.fields.spi_en  = 0x1;
	spi_control.fields.spi_rst = 0x0;
	spi_control.fields.cpol    = 0x0;
	spi_control.fields.cpha    = 0x0;
	spi_control.fields.sck_div = 0x16;
	
	tekno_spi_control(spi_control);	
	
	picosoc_printf("\n\n\nSPI Module Started.\n");

	SPI0_REG(SPI_HOST_TXDATA)  = 0x00000003;
	SPI0_REG(SPI_HOST_COMMAND) = 0x00002200;   // 1  byte mosi, 03 	
	SPI0_REG(SPI_HOST_TXDATA)  = 0x00000000;
	SPI0_REG(SPI_HOST_COMMAND) = 0x00002202;   // 3  byte mosi, 000000	
	SPI0_REG(SPI_HOST_COMMAND) = 0x00001007;   // 8  byte miso and cs low
	
	picosoc_printf("\nSPI NOR FLASH Read Cmd    : 0x03\n");
	picosoc_printf("\nSPI NOR FLASH Read Addr   : 0x000000\n");
	
	while(spi_miso_empty());
	spi_read_data = SPI0_REG(SPI_HOST_RXDATA);;
	picosoc_printf("\nSPI NOR FLASH Read Data[0]: 0x%x\n", spi_read_data);

	while(spi_miso_empty());
	spi_read_data = SPI0_REG(SPI_HOST_RXDATA);;  
	picosoc_printf("\nSPI NOR FLASH Read Data[1]: 0x%x\n", spi_read_data);



	picosoc_printf("\n\nSoftware example complete.\n");	   
			 
    current_time = read_time(); 
	munite = (current_time-prev_time)/(CPU_CLK*60);
	second = (current_time-prev_time)/CPU_CLK%60;
	millisecond = (1000*(current_time-prev_time)/CPU_CLK)%1000;
	microsecond = (1000000*(current_time-prev_time)/CPU_CLK)%1000000;
    picosoc_printf("\nExecution time = %d m %d s %d ms %d us\n", munite, second, millisecond, microsecond);
	
	picosoc_printf("\n"
	"-------------------------------------------------------------------------------------\n"
	"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< TUTEL >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>\n"
	"-------------------------------------------------------------------------------------\n");
   }
    else {
	  picosoc_printf("\nInvalid command. Type 'help' to see all commands.\n");
    }
}
	return 0;
}
