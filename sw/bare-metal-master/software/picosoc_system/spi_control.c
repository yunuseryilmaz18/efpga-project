#include <stdio.h>
#include <math.h>
#include <string.h>
#include <stdarg.h>
#include <stdbool.h>

void spi_control(){
char buffer[100];
int length = 0;
int spi_loop = 1;
uint32_t read_data;
	while(spi_loop){
		tekno_printf("\n[tutel@tubitak.gov.tr spi_control]$ ");
		
		length = zscan(buffer, 100, 1);
		
		if (!length) // nothing to be done
		continue;
			if (!strcmp(buffer, "help")) {
				tekno_printf( 
							"\n"
							"Available commands:\n"
								" help\t\t- show this text\n"
								" init\t\t- Init SPI.\n"
								" write\t\t- Writes the selected register.\n"
								" status\t\t- Status the selected register.\n"
								" read\t\t- Reads the selected register.\n"
								" int\t\t- Interrupt.\n"
								" exit\t\t- Returns to the upper menu.\n\n"
							);
			}
			else if (!strcmp(buffer, "init")) {
				SPI0_REG(0x18) = 0x20000013; read_data = SPI0_REG(0x18); tekno_printf("\n0x%x",read_data);
				SPI0_REG(0x2c) = 0x0000001f; read_data = SPI0_REG(0x2c); tekno_printf("\n0x%x",read_data);
				SPI0_REG(0x34) = 0x0000003f; read_data = SPI0_REG(0x34); tekno_printf("\n0x%x",read_data);
				SPI0_REG(0x04) = 0x00000003; read_data = SPI0_REG(0x04); tekno_printf("\n0x%x",read_data);
				SPI0_REG(0x10) = 0x80000f7f; read_data = SPI0_REG(0x10); tekno_printf("\n0x%x",read_data);
				 
				tekno_printf("\nData write successful.\n"); 
			}	
			else if (!strcmp(buffer, "write")) {
				SPI0_REG(0x28) = 0x03000000;
				SPI0_REG(0x20) = 0x00002203;
				SPI0_REG(0x20) = 0x00001007;
			}	
			else if (!strcmp(buffer, "status")) {
				read_data = SPI0_REG(0x14); tekno_printf("\n0x%x",read_data);
			}	
			else if (!strcmp(buffer, "read")) {
				read_data = SPI0_REG(0x24); tekno_printf("\n0x%x",read_data);
			}
			else if (!strcmp(buffer, "int")) {
				read_data = SPI0_REG(0x00); tekno_printf("\n0x%x",read_data);
			}
			else if (!strcmp(buffer, "exit")) {
				spi_loop = 0;
			}
			else {
			tekno_printf("\nInvalid command. Type 'help' to see all commands.\n");
			}		
		}
}
