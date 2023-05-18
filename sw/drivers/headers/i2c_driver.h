/// Register offsets ///

typedef union
{
	struct {
		unsigned int enablehost   : 1 ;
		unsigned int enabletarget : 1 ;
		unsigned int llpbk  	  : 1 ;
		unsigned int null	  	  : 29;
	} fields;
	uint32_t bits;
}i2c_ctrl;



/// Functions ///
