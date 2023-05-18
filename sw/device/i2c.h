
#ifndef _I2C_H
#define _I2C_H

// Register offsets //
#define I2C_INTR_STATE    		(0x00)
#define I2C_INTR_ENABLE   		(0x04)
#define I2C_INTR_TEST   		(0x08)
#define I2C_ALERT_TEST    		(0x0c)
#define I2C_CTRL	    		(0x10)
#define I2C_STATUS	    		(0x14)
#define I2C_RDATA	    		(0x18)
#define I2C_FDATA	    		(0x1c)
#define I2C_FIFO_CTRL    		(0x20)
#define I2C_FIFO_STATUS    		(0x24)
#define I2C_FIFO_OVRD    		(0x28)
#define I2C_FIFO_VAL    		(0x2c)
#define I2C_TIMING0	    		(0x30)
#define I2C_TIMING1	    		(0x34)
#define I2C_TIMING2	    		(0x38)
#define I2C_TIMING3	    		(0x3c)
#define I2C_TIMING4	    		(0x40)
#define I2C_TIMEOUT_CTRL   		(0x44)
#define I2C_TARGET_ID   		(0x48)
#define I2C_ACQDATA		   		(0x4c)
#define I2C_TXDATA		   		(0x50)
#define I2C_STRETCH_CTRL   		(0x54)
#define I2C_HOST_TIMEOUT_CTRL	(0x58)

#endif
