#include <stdio.h>

#include "../../chip/picorv/platform.h"

void tekno_spi_control(spi_ctrl data){
	// SPI0_REG(SPI_CTRL) = data.bits; //for teknofest
	spi_host_control pico_spi_control;
	spi_host_configopts pico_spi_configopts;
	
	pico_spi_control.fields.spien  = data.fields.spi_en ;
	pico_spi_control.fields.sw_rst = data.fields.spi_rst;
	pico_spi_control.fields.rx_watermark = 0x7f;
	pico_spi_control.fields.tx_watermark = 0x7f;
	
	pico_spi_configopts.fields.fullcyc = 0x1;
	pico_spi_configopts.fields.cpol = data.fields.cpol;
	pico_spi_configopts.fields.cpha = data.fields.cpha;
	pico_spi_configopts.fields.clkdiv = data.fields.sck_div;
	
	SPI0_REG(SPI_HOST_CONFIGOPTS) = pico_spi_configopts.bits;	
	SPI0_REG(SPI_HOST_CONTROL) = pico_spi_control.bits;
}

void tekno_spi_status(int *mosi_full, int *miso_full, int *mosi_empty, int *miso_empty){ 
	int spi_status;
    // spi_status = SPI0_REG(SPI_STATUS); /for teknofest
    spi_status = SPI0_REG(SPI_HOST_STATUS);
    
    *mosi_full = spi_status & (1 << 29);
    *miso_full = spi_status & (1 << 25);
	*mosi_empty = spi_status & (1 << 28);
    *miso_empty = spi_status & (1 << 24);
}

uint32_t tekno_spi_rdata(){
	uint32_t data;
	// data = SPI0_REG(SPI_RDATA); //for teknofest
	data = SPI0_REG(SPI_HOST_RXDATA);
	return data;
}

void tekno_spi_wdata(uint32_t data){
	// SPI0_REG(SPI_TDATA) = data; //for teknofest
	SPI0_REG(SPI_HOST_TXDATA) = data;
}

int spi_miso_empty(){
	spi_host_status spi_stat;
	spi_stat.bits  = SPI0_REG(SPI_HOST_STATUS);
	return spi_stat.fields.rxempty;
}
