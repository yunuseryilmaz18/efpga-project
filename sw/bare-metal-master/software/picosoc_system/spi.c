#include <stdio.h>
#include <math.h>
#include <string.h>
#include <stdarg.h>
#include <stdbool.h>

void spi(){
char buffer[100];
int length = 0;
int spi_loop = 1;
	while(spi_loop){
		picosoc_printf("\n[tutel@tubitak.gov.tr spi]$ ");
		
		length = zscan(buffer, 100, 1);
		
		if (!length) // nothing to be done
		continue;
			if (!strcmp(buffer, "help")) {
				picosoc_printf( 
							"\n"
							"Available commands:\n"
								" help     			- show this text\n"
								" reg_write    		- Writes to the selected register.\n"
								" reg_read  		- Reads the selected register.\n"
								" exit   			- Returns to the upper menu.\n\n"
							);
			}
			else if (!strcmp(buffer, "reg_write")) {
				char regw_addr_buffer[3];
				char regw_data_buffer[9];
				uint32_t readw_addr;
				uint32_t readw_data;
				
				picosoc_printf("\nRegister Addr: 0x");
				zscan(regw_addr_buffer, 3, 1);
				
				readw_addr = hexstr_to_uint(regw_addr_buffer, strlen(regw_addr_buffer));
				
				picosoc_printf("\nRegister Data: 0x");
				zscan(regw_data_buffer, 9, 1);
				 
				readw_data = hexstr_to_uint(regw_data_buffer, strlen(regw_data_buffer));
				
				SPI0_REG(readw_addr) = readw_data;
				
				picosoc_printf("\nData write successful.\n");
			}	
			else if (!strcmp(buffer, "reg_read")) {
				char regr_addr_buffer[3];
				uint32_t readr_addr;
				uint32_t readr_data;
				
				picosoc_printf("\nRegister Addr: ");
				zscan(regr_addr_buffer, 3, 1);
				
				readr_addr = hexstr_to_uint(regr_addr_buffer, strlen(regr_addr_buffer));
				
				readr_data = SPI0_REG(readr_addr);
				
				picosoc_printf("\n0x%x",readr_data);
				
				picosoc_printf("\nData read successful.\n");
			}	
			else if (!strcmp(buffer, "exit")) {
				spi_loop = 0;
			}
			else {
			picosoc_printf("\nInvalid command. Type 'help' to see all commands.\n");
			}		
		}
}
