`timescale 1ns / 1ps

import picorv32_pkg::*;
module picosoc
   (
	input  clk_in1,
	input  rst_ni,

	output uart_tx_o,
	input  uart_rx_i,
	
	input  sram_rx_i,
	output sram_prog_led_o,
	  
    output cio_sck_o ,
    output cio_csb_o ,
    output cio_mosi_o,
    input  cio_miso_i,
 
    inout  cio_scl,
    inout  cio_sda,
    
    output cio_pwm0_o,
    output cio_pwm1_o
);

wire clk_i;

parameter BOOT_FILE = "/home/yunus.eryilmaz/sim_workspace/picosoc/sw/outputs/hex/picosoc_test.hex";

assign clk_i = clk_in1;
/*  clk_wiz_0 u_clk_wiz
   (
    // Clock out ports
    .clk_out1(clk_i),     // output clk_out1
   // Clock in ports
    .clk_in1(clk_in1));      // input clk_in1
*/
wire sram_prog_rst_n;
wire rst_n;
assign rst_n = sram_prog_rst_n & rst_ni;

reg [31:0] irq;
wire irq_stall = 0;
wire irq_uart = 0;

wire irq_5 = 0;
wire irq_6 = 0;
wire irq_7 = 0;

wire [3:0] cio_sd_o;  
wire [3:0] cio_sd_i; 

wire cio_scl_i   ;
wire cio_scl_o   ;
wire cio_scl_en_o;
wire cio_sda_i   ;  
wire cio_sda_o   ; 
wire cio_sda_en_o;  

wb_h2d_t wb_h2d;    
wb_d2h_t wb_d2h;       
         
wb_h2d_t wb_uart_h2d;
wb_d2h_t wb_uart_d2h;                 
wb_h2d_t wb_spi_h2d ;
wb_d2h_t wb_spi_d2h ;    
wb_h2d_t wb_pwm_h2d ;
wb_d2h_t wb_pwm_d2h ;            
wb_h2d_t wb_sram_h2d;
wb_d2h_t wb_sram_d2h;
wb_h2d_t wb_timer_h2d;
wb_d2h_t wb_timer_d2h;
wb_h2d_t wb_i2c_h2d;
wb_d2h_t wb_i2c_d2h;
wb_h2d_t wb_efpga_h2d;
wb_d2h_t wb_efpga_d2h;

	always @* begin
		irq = 0;
		irq[3] = irq_stall;
		irq[4] = irq_uart;
		irq[5] = irq_5;
		irq[6] = irq_6;
		irq[7] = irq_7;
	end

picorv32_wb cpu (
    .wb_clk_i (clk_i),
    .wb_rst_ni(rst_n),
    
    .wbm_adr_o(wb_h2d.a_adr),
    .wbm_dat_o(wb_h2d.a_dat),
    .wbm_dat_i(wb_d2h.d_dat),
    .wbm_we_o (wb_h2d.a_we ),
    .wbm_sel_o(wb_h2d.a_sel),
    .wbm_stb_o(wb_h2d.a_stb),
    .wbm_ack_i(wb_d2h.d_ack),
    .wbm_cyc_o(wb_h2d.a_cyc),
    
    .irq      (irq)
);

uart u_uart (
    .clk         (clk_i),
    .resetn      (rst_n),
    
    .ser_tx      (uart_tx_o),
    .ser_rx      (uart_rx_i),
    
    .wb_uart_i(wb_uart_h2d),
    .wb_uart_o(wb_uart_d2h)
); 

spi_host u_spi(
    .clk_i (clk_i),
    .rst_ni(rst_n),
    
    .wb_i(wb_spi_h2d),  
    .wb_o(wb_spi_d2h),   
    
    .cio_sck_o,
    .cio_sck_en_o(),
    .cio_csb_o,
    .cio_csb_en_o(),
    .cio_sd_o,
    .cio_sd_en_o(),
    .cio_sd_i,
    
    .intr_error_o(),
    .intr_spi_event_o()
);

assign cio_mosi_o = cio_sd_o[0];
assign cio_sd_i[1] = cio_miso_i;

pwm u_pwm(
  .clk_i (clk_i),
  .rst_ni(rst_n),
  // Bus Interface
  .wb_i(wb_pwm_h2d),  
  .wb_o(wb_pwm_d2h),  
  // Generic IO
  .pwm0_o(cio_pwm0_o),
  .pwm1_o(cio_pwm1_o)
);

sram #(
    .RAM_DEPTH(RAM_DEPTH),
    .INIT_FILE (BOOT_FILE)
) u_sram (
    .clk_i (clk_i),
    .rst_ni(rst_n),
    
    .wb_sram_i(wb_sram_h2d),
    .wb_sram_o(wb_sram_d2h),
    
    .ram_prog_rx_i(sram_rx_i),
    .system_reset_o(sram_prog_rst_n),
    .prog_mode_led_o(sram_prog_led_o)
 );

timer u_timer(
    .clk_i (clk_i),
    .rst_ni(rst_n),

    .wb_timer_i(wb_timer_h2d),
    .wb_timer_o(wb_timer_d2h)
);

efpga u_efpga(
    .clk_i (clk_i),
    .rst_ni(rst_n),

    .wb_efpga_i(wb_efpga_h2d),
    .wb_efpga_o(wb_efpga_d2h)
);

i2c u_i2c(
    .clk_i (clk_i),
    .rst_ni(rst_n),

  // Bus Interface
    .wb_i(wb_i2c_h2d),
    .wb_o(wb_i2c_d2h),

  // Generic IO
    .cio_scl_i,
    .cio_scl_o,
    .cio_scl_en_o,
    .cio_sda_i,
    .cio_sda_o,
    .cio_sda_en_o,

  // Interrupts
    .intr_fmt_watermark_o   (),
    .intr_rx_watermark_o    (),
    .intr_fmt_overflow_o    (),
    .intr_rx_overflow_o     (),
    .intr_nak_o             (),
    .intr_scl_interference_o(),
    .intr_sda_interference_o(),
    .intr_stretch_timeout_o (),
    .intr_sda_unstable_o    (),
    .intr_trans_complete_o  (),
    .intr_tx_empty_o        (),
    .intr_tx_nonempty_o     (),
    .intr_tx_overflow_o     (),
    .intr_acq_overflow_o    (),
    .intr_ack_stop_o        (),
    .intr_host_timeout_o    ()
);

assign cio_scl = cio_scl_en_o ? cio_scl_o : 1'bz;
assign cio_scl_i = cio_scl;

assign cio_sda = cio_sda_en_o ? cio_sda_o : 1'bz;
assign cio_sda_i = cio_sda;

xbar_wb u_xbar_wb(
    .wb_i(wb_h2d),
    .wb_o(wb_d2h),
    .wb_uart_o(wb_uart_h2d),
    .wb_uart_i(wb_uart_d2h),
    .wb_spi_o(wb_spi_h2d),
    .wb_spi_i(wb_spi_d2h),
    .wb_pwm_o(wb_pwm_h2d),
    .wb_pwm_i(wb_pwm_d2h),
    .wb_sram_o(wb_sram_h2d),
    .wb_sram_i(wb_sram_d2h),
    .wb_timer_o(wb_timer_h2d),
    .wb_timer_i(wb_timer_d2h),
    .wb_i2c_o(wb_i2c_h2d),
    .wb_i2c_i(wb_i2c_d2h),
    .wb_efpga_o(wb_efpga_h2d),
    .wb_efpga_i(wb_efpga_d2h)
);

endmodule
