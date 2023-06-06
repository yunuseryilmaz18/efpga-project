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

wire read_en, write_en;

assign read_en  = wb_efpga_i.a_stb & wb_efpga_i.a_cyc & !wb_efpga_i.a_we;
assign write_en = wb_efpga_i.a_stb & wb_efpga_i.a_cyc & wb_efpga_i.a_we;

reg [31:0] io_select0; //0-31  input/output select, 1: output
reg [31:0] io_select1; //31-63 input/output select, 0: input
wire [31:0] csr;

reg [31:0] gpio_in0, gpio_in1;
reg [31:0] gpio_out0, gpio_out1;

wire [0:63] IO_PAD;
wire config_done;

genvar i;
generate
    for (i = 0; i < 32; i++) begin
        assign IO_PAD[i] = ((config_done & ~io_select0[i]) ? gpio_in0[i] : 1'bz);
        assign IO_PAD[i+32] = ((config_done & ~io_select1[i]) ? gpio_in1[i] : 1'bz);
    end
endgenerate
//assign IO_PAD[39] = config_done ? gpio_in1[7]  : 1'bz;
//assign IO_PAD[48] = config_done ? gpio_in1[16] : 1'bz;

generate
    for (i = 0; i < 32; i++) begin
        assign gpio_out0[i] = ((config_done) ? IO_PAD[i] : 1'bz);
        assign gpio_out1[i] = ((config_done) ? IO_PAD[i+32] : 1'bz);
    end
endgenerate

//assign gpio_out0[31:0] = (config_done ? IO_PAD[0:31] : 1'bz);
//assign gpio_out1[31:0] = (config_done ? IO_PAD[32:63] : 1'bz);

assign csr = {{31{1'b0}}, config_done};

wire prog_rst	;
wire fpga_rst	;
wire prog		;
wire config_clk;

// CLOCK GATING PURPOSES
reg config_done_d;
reg fpga_rst_d;
reg prog_rst_d;
// CLOCK GATING PURPOSES

assign operating_clk = clk_i & ~fpga_rst_d & config_done_d;
assign config_clk = clk_i & fpga_rst_d & ~prog_rst_d;

always @(negedge clk_i) begin
	config_done_d 	<= config_done	;
	fpga_rst_d 		<= fpga_rst		;
	prog_rst_d 		<= prog_rst		;
end

fpga_top FPGA
(
	.pReset					(prog_rst	),
	.prog_clk				(config_clk	),
	.set					(1'b0		),
	.reset					(fpga_rst	),
	.clk					(operating_clk	),
	.gfpga_pad_GPIO_PAD	    (IO_PAD		),
	.ccff_head				(prog		),
	.ccff_tail				()
);

fpga_config
configurator
(
	.clk			(clk_i				),
	.rst			(rst_ni	),
	.fpga_rst	(fpga_rst		),
	.prog_rst	(prog_rst		),
	.prog			(prog				),
	.config_done(config_done	)
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
//        csr <= 0;
        io_select0 <= 32'hFFFFFFFF;
        io_select1 <= 32'hFFFFFFFF;
    end else if (read_en) begin
        wb_efpga_o.d_ack <= 1'b1;
        case(wb_efpga_i.a_adr[7:0])
            32'h0: wb_efpga_o.d_dat <= gpio_out0;
            32'h4: wb_efpga_o.d_dat <= gpio_out1;
            32'h8: wb_efpga_o.d_dat <= csr;
            32'hC: wb_efpga_o.d_dat <= io_select0;
            32'h10: wb_efpga_o.d_dat <= io_select1;
        endcase
        
    end else if (write_en) begin
        wb_efpga_o.d_ack <= 1'b1;
        case(wb_efpga_i.a_adr[7:0])
            32'h00000000: gpio_in0 <= wb_efpga_i.a_dat;
            32'h00000004: gpio_in1 <= wb_efpga_i.a_dat;
            //32'h00000008: csr <= wb_efpga_i.a_dat;
            
            32'hC:  io_select0 <= wb_efpga_i.a_dat;
            32'h10: io_select1 <= wb_efpga_i.a_dat;
        endcase
        
    end else  begin
        wb_efpga_o.d_dat <= 0;
        wb_efpga_o.d_ack <= 0;
    end
end


endmodule
