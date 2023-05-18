/// Register offsets ///

typedef union
{
	struct {
		unsigned int rx_watermark : 8 ;
		unsigned int tx_watermark : 8 ;
		unsigned int reserved  	  : 14;
		unsigned int sw_rst	  	  : 1 ;
		unsigned int spien	  	  : 1 ;
	} fields;
	uint32_t bits;
}spi_host_control;

typedef union
{
	struct {
		unsigned int txqd	   : 8 ;
		unsigned int rxqd	   : 8 ;
		unsigned int cmdqd	   : 4;
		unsigned int rmwm	   : 1 ;
		unsigned int reserved  : 1 ;
		unsigned int byteorder : 1 ;
		unsigned int rxstall   : 1 ;
		unsigned int rxempty   : 1 ;
		unsigned int rxfull    : 1 ;
		unsigned int txwm 	   : 1 ;
		unsigned int txstall   : 1 ;
		unsigned int txempty   : 1 ;
		unsigned int txfull	   : 1 ;
		unsigned int active	   : 1 ;
		unsigned int ready	   : 1 ;
	} fields;
	uint32_t bits;
}spi_host_status;

typedef union
{
	struct {
		unsigned int clkdiv   : 16;
		unsigned int csnidle  : 4 ;
		unsigned int csntrail : 4 ;
		unsigned int csnlead  : 4 ;
		unsigned int reserved : 1 ;
		unsigned int fullcyc  : 1 ;
		unsigned int cpha	  : 1 ;
		unsigned int cpol	  : 1 ;
	} fields;
	uint32_t bits;
}spi_host_configopts;


typedef union
{
	struct {
		unsigned int length    : 9;
		unsigned int cs_active : 1;
		unsigned int direction : 1;
		unsigned int null	   : 21;
	} fields;
	uint32_t bits;
}spi_cmd;

/// Register offsets FOR Teknofest ///

typedef union
{
	struct {
		unsigned int spi_en  : 1;
		unsigned int spi_rst : 1;
		unsigned int cpha    : 1;
		unsigned int cpol	 : 1;
		unsigned int null	 : 12;
		unsigned int sck_div : 16;
	} fields;
	uint32_t bits;
}spi_ctrl;

typedef union
{
	struct {
		unsigned int mosi_full  : 1;
		unsigned int miso_full  : 1;
		unsigned int mosi_empty : 1;
		unsigned int miso_empty	: 1;
		unsigned int null	    : 28;
	} fields;
	uint32_t bits;
}spi_status;

/// Functions ///

void tekno_spi_control(spi_ctrl data);
void tekno_spi_status(int *mosi_full, int *miso_full, int *mosi_empty, int *miso_empty);
uint32_t tekno_spi_rdata();
void tekno_spi_wdata(uint32_t data);
void tekno_spi_cmd(spi_cmd data);