/*
 *  PicoSoC - A simple example SoC using PicoRV32
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
import picorv32_pkg::*;
module efpga (
	input clk_i,
	input rst_ni,

    input  wb_h2d_t wb_efpga_i,
    output wb_d2h_t wb_efpga_o
);

assign read_en  = wb_efpga_i.a_stb & wb_efpga_i.a_cyc & !wb_efpga_i.a_we;
assign write_en = wb_efpga_i.a_stb & wb_efpga_i.a_cyc & wb_efpga_i.a_we;

wire [0:63] fpga_gpio;
reg [0:31] gpio_in0, gpio_in1;
reg [0:31] gpio_out0, gpio_out1;

assign fpga_gpio[39] = gpio_in1[7];
assign fpga_gpio[48] = gpio_in1[16];
assign gpio_out1[0] = fpga_gpio[34]; 

reg [31:0] io_select0; //0-31  input/output select, 0: output
reg [31:0] io_select1; //31-63 input/output select, 1: input

/*
fpga_config configurator
(
	.clk		(clk_i)   ,
	.rst		(rst_ni) ,
	.fpga_rst	(fpga_rst),
	.prog_rst	(prog_rst),
	.prog		(prog),
	.config_done (config_done)
);*/

fpga_top FPGA (
	.pReset					(1'b0	  ),
	.prog_clk				(1'b0	  ),
	.set					(1'b0     ),
	.reset					(rst_ni	  ),
	.clk					(clk_i    ),
	.gfpga_pad_GPIO_PAD	    (fpga_gpio),
	.ccff_head				(1'b0     ),
	.ccff_tail				()
);

// input_a = 39 (39-32 = 7)
// input_b = 48 (48-32 = 16)
// output_c = 34 (34-32 = 2)

always @(posedge clk_i) begin
    if (!rst_ni) begin
        wb_efpga_o.d_dat <= 0;
        wb_efpga_o.d_ack <= 0;    
        gpio_in0 <= 0;
        gpio_in1 <= 0;
    end else if (read_en && wb_efpga_i.a_adr[3:0] == 4'h0) begin
        wb_efpga_o.d_dat <= gpio_out0;
        wb_efpga_o.d_ack <= 1'b1;
    end else if (read_en && wb_efpga_i.a_adr[3:0] == 4'h4) begin
        wb_efpga_o.d_dat <= gpio_out1;
        wb_efpga_o.d_ack <= 1'b1;
    end else if (write_en && wb_efpga_i.a_adr[3:0] == 4'h0) begin
        gpio_in0 <= wb_efpga_i.a_dat;
        //fpga_gpio_q[0:31] <= wb_efpga_i.a_dat;
        wb_efpga_o.d_ack <= 1'b1;
    end else if (write_en && wb_efpga_i.a_adr[3:0] == 4'h4) begin
        gpio_in1 <= wb_efpga_i.a_dat;
        //fpga_gpio_q[32:63] <= wb_efpga_i.a_dat;
        wb_efpga_o.d_ack <= 1'b1;
    end else  begin
        wb_efpga_o.d_dat <= 0;
        wb_efpga_o.d_ack <= 0;
    end
end


endmodule
