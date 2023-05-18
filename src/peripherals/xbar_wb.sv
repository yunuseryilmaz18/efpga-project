`timescale 1ns / 1ps

import picorv32_pkg::*;
module xbar_wb(
    input  wb_h2d_t wb_i,
    output wb_d2h_t wb_o,
    
    output wb_h2d_t wb_uart_o, 
    input  wb_d2h_t wb_uart_i,
    
    output wb_h2d_t wb_spi_o,
    input  wb_d2h_t wb_spi_i,
    
    output wb_h2d_t wb_pwm_o,
    input  wb_d2h_t wb_pwm_i,   
    
    output wb_h2d_t wb_sram_o,
    input  wb_d2h_t wb_sram_i,
    
    output wb_h2d_t wb_timer_o,
    input  wb_d2h_t wb_timer_i,
    
    output wb_h2d_t wb_i2c_o,
    input  wb_d2h_t wb_i2c_i,

    output wb_h2d_t wb_efpga_o,
    input  wb_d2h_t wb_efpga_i
    ); 
  
  logic [3:0] dev_sel_s1n;
 
  assign dev_sel_s1n = ((wb_i.a_adr & ~(UART_MASK_ADDR )) == UART_BASE_ADDR ) ? 4'd0 :
                       ((wb_i.a_adr & ~(SPI_MASK_ADDR  )) == SPI_BASE_ADDR  ) ? 4'd1 :
                       ((wb_i.a_adr & ~(PWM_MASK_ADDR  )) == PWM_BASE_ADDR  ) ? 4'd2 :
                       ((wb_i.a_adr & ~(SRAM_MASK_ADDR )) == SRAM_BASE_ADDR ) ? 4'd3 : 
                       ((wb_i.a_adr & ~(TIMER_MASK_ADDR)) == TIMER_BASE_ADDR) ? 4'd4 : 
                       ((wb_i.a_adr & ~(I2C_MASK_ADDR  )) == I2C_BASE_ADDR  ) ? 4'd5 : 
                       ((wb_i.a_adr & ~(EFPGA_MASK_ADDR)) == EFPGA_BASE_ADDR) ? 4'd6 :
                       4'd7;

  assign wb_o = (dev_sel_s1n == 4'h0) ? wb_uart_i  :
                (dev_sel_s1n == 4'h1) ? wb_spi_i   :
                (dev_sel_s1n == 4'h2) ? wb_pwm_i   :
                (dev_sel_s1n == 4'h3) ? wb_sram_i  : 
                (dev_sel_s1n == 4'h4) ? wb_timer_i : 
                (dev_sel_s1n == 4'h5) ? wb_i2c_i   : 
                (dev_sel_s1n == 4'h6) ? wb_efpga_i :
                 0;
                 
assign wb_uart_o  = (dev_sel_s1n == 4'h0) ? wb_i : 0;
assign wb_spi_o   = (dev_sel_s1n == 4'h1) ? wb_i : 0;
assign wb_pwm_o   = (dev_sel_s1n == 4'h2) ? wb_i : 0;
assign wb_sram_o  = (dev_sel_s1n == 4'h3) ? wb_i : 0;
assign wb_timer_o = (dev_sel_s1n == 4'h4) ? wb_i : 0;
assign wb_i2c_o   = (dev_sel_s1n == 4'h5) ? wb_i : 0;
assign wb_efpga_o = (dev_sel_s1n == 4'h6) ? wb_i : 0;

endmodule
