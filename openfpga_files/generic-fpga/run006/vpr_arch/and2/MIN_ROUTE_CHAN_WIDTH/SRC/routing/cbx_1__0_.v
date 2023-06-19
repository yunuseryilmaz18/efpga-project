//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for Unique Connection Blocks[1][0]
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Mon Jun 19 11:38:39 2023
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

//----- Default net type -----
`default_nettype wire

// ----- Verilog module for cbx_1__0_ -----
module cbx_1__0_(pReset,
                 prog_clk,
                 chanx_left_in,
                 chanx_right_in,
                 ccff_head,
                 chanx_left_out,
                 chanx_right_out,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_I_2_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_I_6_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_I_10_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_I_14_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_I_18_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_I_22_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_I_26_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_outpad_0_,
                 bottom_grid_top_width_0_height_0_subtile_1__pin_outpad_0_,
                 bottom_grid_top_width_0_height_0_subtile_2__pin_outpad_0_,
                 bottom_grid_top_width_0_height_0_subtile_3__pin_outpad_0_,
                 bottom_grid_top_width_0_height_0_subtile_4__pin_outpad_0_,
                 bottom_grid_top_width_0_height_0_subtile_5__pin_outpad_0_,
                 bottom_grid_top_width_0_height_0_subtile_6__pin_outpad_0_,
                 bottom_grid_top_width_0_height_0_subtile_7__pin_outpad_0_,
                 ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] pReset;
//----- GLOBAL PORTS -----
input [0:0] prog_clk;
//----- INPUT PORTS -----
input [0:4] chanx_left_in;
//----- INPUT PORTS -----
input [0:4] chanx_right_in;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:4] chanx_left_out;
//----- OUTPUT PORTS -----
output [0:4] chanx_right_out;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_I_2_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_I_6_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_I_10_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_I_14_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_I_18_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_I_22_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_I_26_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_outpad_0_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_1__pin_outpad_0_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_2__pin_outpad_0_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_3__pin_outpad_0_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_4__pin_outpad_0_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_5__pin_outpad_0_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_6__pin_outpad_0_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_7__pin_outpad_0_;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:1] mux_2level_tapbuf_size2_0_sram;
wire [0:1] mux_2level_tapbuf_size2_0_sram_inv;
wire [0:1] mux_2level_tapbuf_size2_10_sram;
wire [0:1] mux_2level_tapbuf_size2_10_sram_inv;
wire [0:1] mux_2level_tapbuf_size2_11_sram;
wire [0:1] mux_2level_tapbuf_size2_11_sram_inv;
wire [0:1] mux_2level_tapbuf_size2_12_sram;
wire [0:1] mux_2level_tapbuf_size2_12_sram_inv;
wire [0:1] mux_2level_tapbuf_size2_13_sram;
wire [0:1] mux_2level_tapbuf_size2_13_sram_inv;
wire [0:1] mux_2level_tapbuf_size2_14_sram;
wire [0:1] mux_2level_tapbuf_size2_14_sram_inv;
wire [0:1] mux_2level_tapbuf_size2_1_sram;
wire [0:1] mux_2level_tapbuf_size2_1_sram_inv;
wire [0:1] mux_2level_tapbuf_size2_2_sram;
wire [0:1] mux_2level_tapbuf_size2_2_sram_inv;
wire [0:1] mux_2level_tapbuf_size2_3_sram;
wire [0:1] mux_2level_tapbuf_size2_3_sram_inv;
wire [0:1] mux_2level_tapbuf_size2_4_sram;
wire [0:1] mux_2level_tapbuf_size2_4_sram_inv;
wire [0:1] mux_2level_tapbuf_size2_5_sram;
wire [0:1] mux_2level_tapbuf_size2_5_sram_inv;
wire [0:1] mux_2level_tapbuf_size2_6_sram;
wire [0:1] mux_2level_tapbuf_size2_6_sram_inv;
wire [0:1] mux_2level_tapbuf_size2_7_sram;
wire [0:1] mux_2level_tapbuf_size2_7_sram_inv;
wire [0:1] mux_2level_tapbuf_size2_8_sram;
wire [0:1] mux_2level_tapbuf_size2_8_sram_inv;
wire [0:1] mux_2level_tapbuf_size2_9_sram;
wire [0:1] mux_2level_tapbuf_size2_9_sram_inv;

// ----- BEGIN Local short connections -----
// ----- Local connection due to Wire 0 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[0] = chanx_left_in[0];
// ----- Local connection due to Wire 1 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[1] = chanx_left_in[1];
// ----- Local connection due to Wire 2 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[2] = chanx_left_in[2];
// ----- Local connection due to Wire 3 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[3] = chanx_left_in[3];
// ----- Local connection due to Wire 4 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[4] = chanx_left_in[4];
// ----- Local connection due to Wire 5 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[0] = chanx_right_in[0];
// ----- Local connection due to Wire 6 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[1] = chanx_right_in[1];
// ----- Local connection due to Wire 7 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[2] = chanx_right_in[2];
// ----- Local connection due to Wire 8 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[3] = chanx_right_in[3];
// ----- Local connection due to Wire 9 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[4] = chanx_right_in[4];
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	mux_2level_tapbuf_size2 mux_bottom_ipin_0 (
		.in({chanx_left_in[0], chanx_right_in[0]}),
		.sram(mux_2level_tapbuf_size2_0_sram[0:1]),
		.sram_inv(mux_2level_tapbuf_size2_0_sram_inv[0:1]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_I_2_));

	mux_2level_tapbuf_size2 mux_bottom_ipin_1 (
		.in({chanx_left_in[1], chanx_right_in[1]}),
		.sram(mux_2level_tapbuf_size2_1_sram[0:1]),
		.sram_inv(mux_2level_tapbuf_size2_1_sram_inv[0:1]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_I_6_));

	mux_2level_tapbuf_size2 mux_bottom_ipin_2 (
		.in({chanx_left_in[2], chanx_right_in[2]}),
		.sram(mux_2level_tapbuf_size2_2_sram[0:1]),
		.sram_inv(mux_2level_tapbuf_size2_2_sram_inv[0:1]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_I_10_));

	mux_2level_tapbuf_size2 mux_bottom_ipin_3 (
		.in({chanx_left_in[3], chanx_right_in[3]}),
		.sram(mux_2level_tapbuf_size2_3_sram[0:1]),
		.sram_inv(mux_2level_tapbuf_size2_3_sram_inv[0:1]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_I_14_));

	mux_2level_tapbuf_size2 mux_bottom_ipin_4 (
		.in({chanx_left_in[4], chanx_right_in[4]}),
		.sram(mux_2level_tapbuf_size2_4_sram[0:1]),
		.sram_inv(mux_2level_tapbuf_size2_4_sram_inv[0:1]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_I_18_));

	mux_2level_tapbuf_size2 mux_bottom_ipin_5 (
		.in({chanx_left_in[0], chanx_right_in[0]}),
		.sram(mux_2level_tapbuf_size2_5_sram[0:1]),
		.sram_inv(mux_2level_tapbuf_size2_5_sram_inv[0:1]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_I_22_));

	mux_2level_tapbuf_size2 mux_bottom_ipin_6 (
		.in({chanx_left_in[1], chanx_right_in[1]}),
		.sram(mux_2level_tapbuf_size2_6_sram[0:1]),
		.sram_inv(mux_2level_tapbuf_size2_6_sram_inv[0:1]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_I_26_));

	mux_2level_tapbuf_size2 mux_top_ipin_0 (
		.in({chanx_left_in[2], chanx_right_in[2]}),
		.sram(mux_2level_tapbuf_size2_7_sram[0:1]),
		.sram_inv(mux_2level_tapbuf_size2_7_sram_inv[0:1]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_outpad_0_));

	mux_2level_tapbuf_size2 mux_top_ipin_1 (
		.in({chanx_left_in[3], chanx_right_in[3]}),
		.sram(mux_2level_tapbuf_size2_8_sram[0:1]),
		.sram_inv(mux_2level_tapbuf_size2_8_sram_inv[0:1]),
		.out(bottom_grid_top_width_0_height_0_subtile_1__pin_outpad_0_));

	mux_2level_tapbuf_size2 mux_top_ipin_2 (
		.in({chanx_left_in[4], chanx_right_in[4]}),
		.sram(mux_2level_tapbuf_size2_9_sram[0:1]),
		.sram_inv(mux_2level_tapbuf_size2_9_sram_inv[0:1]),
		.out(bottom_grid_top_width_0_height_0_subtile_2__pin_outpad_0_));

	mux_2level_tapbuf_size2 mux_top_ipin_3 (
		.in({chanx_left_in[0], chanx_right_in[0]}),
		.sram(mux_2level_tapbuf_size2_10_sram[0:1]),
		.sram_inv(mux_2level_tapbuf_size2_10_sram_inv[0:1]),
		.out(bottom_grid_top_width_0_height_0_subtile_3__pin_outpad_0_));

	mux_2level_tapbuf_size2 mux_top_ipin_4 (
		.in({chanx_left_in[1], chanx_right_in[1]}),
		.sram(mux_2level_tapbuf_size2_11_sram[0:1]),
		.sram_inv(mux_2level_tapbuf_size2_11_sram_inv[0:1]),
		.out(bottom_grid_top_width_0_height_0_subtile_4__pin_outpad_0_));

	mux_2level_tapbuf_size2 mux_top_ipin_5 (
		.in({chanx_left_in[2], chanx_right_in[2]}),
		.sram(mux_2level_tapbuf_size2_12_sram[0:1]),
		.sram_inv(mux_2level_tapbuf_size2_12_sram_inv[0:1]),
		.out(bottom_grid_top_width_0_height_0_subtile_5__pin_outpad_0_));

	mux_2level_tapbuf_size2 mux_top_ipin_6 (
		.in({chanx_left_in[3], chanx_right_in[3]}),
		.sram(mux_2level_tapbuf_size2_13_sram[0:1]),
		.sram_inv(mux_2level_tapbuf_size2_13_sram_inv[0:1]),
		.out(bottom_grid_top_width_0_height_0_subtile_6__pin_outpad_0_));

	mux_2level_tapbuf_size2 mux_top_ipin_7 (
		.in({chanx_left_in[4], chanx_right_in[4]}),
		.sram(mux_2level_tapbuf_size2_14_sram[0:1]),
		.sram_inv(mux_2level_tapbuf_size2_14_sram_inv[0:1]),
		.out(bottom_grid_top_width_0_height_0_subtile_7__pin_outpad_0_));

	mux_2level_tapbuf_size2_mem mem_bottom_ipin_0 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(ccff_head),
		.ccff_tail(mux_2level_tapbuf_size2_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size2_0_sram[0:1]),
		.mem_outb(mux_2level_tapbuf_size2_0_sram_inv[0:1]));

	mux_2level_tapbuf_size2_mem mem_bottom_ipin_1 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size2_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size2_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size2_1_sram[0:1]),
		.mem_outb(mux_2level_tapbuf_size2_1_sram_inv[0:1]));

	mux_2level_tapbuf_size2_mem mem_bottom_ipin_2 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size2_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size2_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size2_2_sram[0:1]),
		.mem_outb(mux_2level_tapbuf_size2_2_sram_inv[0:1]));

	mux_2level_tapbuf_size2_mem mem_bottom_ipin_3 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size2_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size2_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size2_3_sram[0:1]),
		.mem_outb(mux_2level_tapbuf_size2_3_sram_inv[0:1]));

	mux_2level_tapbuf_size2_mem mem_bottom_ipin_4 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size2_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size2_mem_4_ccff_tail),
		.mem_out(mux_2level_tapbuf_size2_4_sram[0:1]),
		.mem_outb(mux_2level_tapbuf_size2_4_sram_inv[0:1]));

	mux_2level_tapbuf_size2_mem mem_bottom_ipin_5 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size2_mem_4_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size2_mem_5_ccff_tail),
		.mem_out(mux_2level_tapbuf_size2_5_sram[0:1]),
		.mem_outb(mux_2level_tapbuf_size2_5_sram_inv[0:1]));

	mux_2level_tapbuf_size2_mem mem_bottom_ipin_6 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size2_mem_5_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size2_mem_6_ccff_tail),
		.mem_out(mux_2level_tapbuf_size2_6_sram[0:1]),
		.mem_outb(mux_2level_tapbuf_size2_6_sram_inv[0:1]));

	mux_2level_tapbuf_size2_mem mem_top_ipin_0 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size2_mem_6_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size2_mem_7_ccff_tail),
		.mem_out(mux_2level_tapbuf_size2_7_sram[0:1]),
		.mem_outb(mux_2level_tapbuf_size2_7_sram_inv[0:1]));

	mux_2level_tapbuf_size2_mem mem_top_ipin_1 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size2_mem_7_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size2_mem_8_ccff_tail),
		.mem_out(mux_2level_tapbuf_size2_8_sram[0:1]),
		.mem_outb(mux_2level_tapbuf_size2_8_sram_inv[0:1]));

	mux_2level_tapbuf_size2_mem mem_top_ipin_2 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size2_mem_8_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size2_mem_9_ccff_tail),
		.mem_out(mux_2level_tapbuf_size2_9_sram[0:1]),
		.mem_outb(mux_2level_tapbuf_size2_9_sram_inv[0:1]));

	mux_2level_tapbuf_size2_mem mem_top_ipin_3 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size2_mem_9_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size2_mem_10_ccff_tail),
		.mem_out(mux_2level_tapbuf_size2_10_sram[0:1]),
		.mem_outb(mux_2level_tapbuf_size2_10_sram_inv[0:1]));

	mux_2level_tapbuf_size2_mem mem_top_ipin_4 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size2_mem_10_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size2_mem_11_ccff_tail),
		.mem_out(mux_2level_tapbuf_size2_11_sram[0:1]),
		.mem_outb(mux_2level_tapbuf_size2_11_sram_inv[0:1]));

	mux_2level_tapbuf_size2_mem mem_top_ipin_5 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size2_mem_11_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size2_mem_12_ccff_tail),
		.mem_out(mux_2level_tapbuf_size2_12_sram[0:1]),
		.mem_outb(mux_2level_tapbuf_size2_12_sram_inv[0:1]));

	mux_2level_tapbuf_size2_mem mem_top_ipin_6 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size2_mem_12_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size2_mem_13_ccff_tail),
		.mem_out(mux_2level_tapbuf_size2_13_sram[0:1]),
		.mem_outb(mux_2level_tapbuf_size2_13_sram_inv[0:1]));

	mux_2level_tapbuf_size2_mem mem_top_ipin_7 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size2_mem_13_ccff_tail),
		.ccff_tail(ccff_tail),
		.mem_out(mux_2level_tapbuf_size2_14_sram[0:1]),
		.mem_outb(mux_2level_tapbuf_size2_14_sram_inv[0:1]));

endmodule
// ----- END Verilog module for cbx_1__0_ -----

//----- Default net type -----
`default_nettype none




