// See LICENSE for license details.

// Some things missing from the official encoding.h
#define MCAUSE_INT         0x80000000
#define MCAUSE_CAUSE       0x7FFFFFFF

#define MEM_TOTAL          0x00004000

//**** DEVICES ****\\

#include "sifive/const.h"
#include "../../../device/uart.h"
#include "../../../device/spi.h"
#include "../../../device/pwm.h"
#include "../../../device/i2c.h"
#include "../../../device/efpga.h"

//**** DRIVERS ****\\

#include "../../../drivers/headers/uart_driver.h"
#include "../../../drivers/headers/spi_driver.h"
#include "../../../drivers/headers/pwm_driver.h"
#include "../../../drivers/headers/timer.h"
#include "../../../drivers/headers/i2c_driver.h"
#include "../../../drivers/headers/efpga_driver.h"

/****************************************************************************
 * Platform definitions
 *****************************************************************************/

// Memory map
#define UART0_CTRL_ADDR _AC(0x20000000,UL)
#define SPI0_CTRL_ADDR _AC(0x20010000,UL)
#define PWM0_CTRL_ADDR _AC(0x20020000,UL)
#define I2C0_CTRL_ADDR _AC(0x20040000,UL)
#define EFPGA_BASE_ADDR _AC(0x42000000,UL)

// Helper functions
#define _REG32(p, i) (*(volatile uint32_t *) ((p) + (i)))
#define _REG32P(p, i) ((volatile uint32_t *) ((p) + (i)))

#define UART0_REG(offset) _REG32(UART0_CTRL_ADDR, offset)
#define SPI0_REG(offset) _REG32(SPI0_CTRL_ADDR, offset)
#define PWM0_REG(offset) _REG32(PWM0_CTRL_ADDR, offset)
#define I2C0_REG(offset) _REG32(I2C0_CTRL_ADDR, offset)
#define EFPGA_REG(offset) _REG32(EFPGA_BASE_ADDR, offset)

