/*
 *  Teknofest - A simple example software using your cores.
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

#define CPU_CLK 100000000        // 100 Mhz
#define UART_BAUD_RATE 115200

//////////////////////////////////////////////////////////
/////////////////////// MAIN CODE ////////////////////////
//////////////////////////////////////////////////////////

int main()
{
	// Initializing uart
	uart_ctrl uart_control_s;
	uart_control_s.fields.tx_en = 0x1; 
	uart_control_s.fields.tx_en = 0x1; 
	uart_control_s.fields.baud_div = CPU_CLK/BAUD_RATE; 
	
	UART_REG(UART_CTRL) = uart_control_s;

tekno_printf("\n"
"--------------------------------------------------------------------------------\n"
"<<<<<<<<<<<<<<< WELCOME TO THE TEKNOFEST 2022 SOFTWARE EXAMPLE >>>>>>>>>>>>>>>>>\n"
"--------------------------------------------------------------------------------\n\n"); 





	return 0;
}
