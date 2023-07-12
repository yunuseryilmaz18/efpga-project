//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for Unique Switch Blocks[1][1]
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Mon Jul 10 14:22:25 2023
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

//----- Default net type -----
`default_nettype wire

// ----- Verilog module for sb_1__1_ -----
module sb_1__1_(pReset,
                prog_clk,
                chany_top_in,
                top_left_grid_right_width_0_height_0_subtile_0__pin_O_1_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_O_5_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_O_9_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_O_13_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_O_17_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_O_3_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_O_7_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_O_11_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_O_15_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_O_19_,
                chanx_right_in,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_2_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_6_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_10_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_14_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_18_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_0_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_4_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_8_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_12_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_16_,
                chany_bottom_in,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_O_3_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_O_7_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_O_11_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_O_15_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_O_19_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_1_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_5_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_9_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_13_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_17_,
                chanx_left_in,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_O_2_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_O_6_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_O_10_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_O_14_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_O_18_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_0_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_4_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_8_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_12_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_16_,
                ccff_head,
                chany_top_out,
                chanx_right_out,
                chany_bottom_out,
                chanx_left_out,
                ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] pReset;
//----- GLOBAL PORTS -----
input [0:0] prog_clk;
//----- INPUT PORTS -----
input [0:49] chany_top_in;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_O_1_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_O_5_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_O_9_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_O_13_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_O_17_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_O_3_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_O_7_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_O_11_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_O_15_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_O_19_;
//----- INPUT PORTS -----
input [0:49] chanx_right_in;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_2_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_6_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_10_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_14_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_18_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_0_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_4_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_8_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_12_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_16_;
//----- INPUT PORTS -----
input [0:49] chany_bottom_in;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_O_3_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_O_7_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_O_11_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_O_15_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_O_19_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_1_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_5_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_9_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_13_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_17_;
//----- INPUT PORTS -----
input [0:49] chanx_left_in;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_O_2_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_O_6_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_O_10_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_O_14_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_O_18_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_0_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_4_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_8_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_12_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_16_;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:49] chany_top_out;
//----- OUTPUT PORTS -----
output [0:49] chanx_right_out;
//----- OUTPUT PORTS -----
output [0:49] chany_bottom_out;
//----- OUTPUT PORTS -----
output [0:49] chanx_left_out;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:7] mux_2level_tapbuf_size10_0_sram;
wire [0:7] mux_2level_tapbuf_size10_0_sram_inv;
wire [0:7] mux_2level_tapbuf_size10_1_sram;
wire [0:7] mux_2level_tapbuf_size10_1_sram_inv;
wire [0:7] mux_2level_tapbuf_size10_2_sram;
wire [0:7] mux_2level_tapbuf_size10_2_sram_inv;
wire [0:7] mux_2level_tapbuf_size11_0_sram;
wire [0:7] mux_2level_tapbuf_size11_0_sram_inv;
wire [0:7] mux_2level_tapbuf_size11_1_sram;
wire [0:7] mux_2level_tapbuf_size11_1_sram_inv;
wire [0:7] mux_2level_tapbuf_size11_2_sram;
wire [0:7] mux_2level_tapbuf_size11_2_sram_inv;
wire [0:7] mux_2level_tapbuf_size11_3_sram;
wire [0:7] mux_2level_tapbuf_size11_3_sram_inv;
wire [0:7] mux_2level_tapbuf_size11_4_sram;
wire [0:7] mux_2level_tapbuf_size11_4_sram_inv;
wire [0:7] mux_2level_tapbuf_size11_5_sram;
wire [0:7] mux_2level_tapbuf_size11_5_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_0_sram;
wire [0:7] mux_2level_tapbuf_size12_0_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_1_sram;
wire [0:7] mux_2level_tapbuf_size12_1_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_2_sram;
wire [0:7] mux_2level_tapbuf_size12_2_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_3_sram;
wire [0:7] mux_2level_tapbuf_size12_3_sram_inv;
wire [0:7] mux_2level_tapbuf_size13_0_sram;
wire [0:7] mux_2level_tapbuf_size13_0_sram_inv;
wire [0:7] mux_2level_tapbuf_size13_10_sram;
wire [0:7] mux_2level_tapbuf_size13_10_sram_inv;
wire [0:7] mux_2level_tapbuf_size13_11_sram;
wire [0:7] mux_2level_tapbuf_size13_11_sram_inv;
wire [0:7] mux_2level_tapbuf_size13_12_sram;
wire [0:7] mux_2level_tapbuf_size13_12_sram_inv;
wire [0:7] mux_2level_tapbuf_size13_13_sram;
wire [0:7] mux_2level_tapbuf_size13_13_sram_inv;
wire [0:7] mux_2level_tapbuf_size13_14_sram;
wire [0:7] mux_2level_tapbuf_size13_14_sram_inv;
wire [0:7] mux_2level_tapbuf_size13_15_sram;
wire [0:7] mux_2level_tapbuf_size13_15_sram_inv;
wire [0:7] mux_2level_tapbuf_size13_16_sram;
wire [0:7] mux_2level_tapbuf_size13_16_sram_inv;
wire [0:7] mux_2level_tapbuf_size13_17_sram;
wire [0:7] mux_2level_tapbuf_size13_17_sram_inv;
wire [0:7] mux_2level_tapbuf_size13_18_sram;
wire [0:7] mux_2level_tapbuf_size13_18_sram_inv;
wire [0:7] mux_2level_tapbuf_size13_19_sram;
wire [0:7] mux_2level_tapbuf_size13_19_sram_inv;
wire [0:7] mux_2level_tapbuf_size13_1_sram;
wire [0:7] mux_2level_tapbuf_size13_1_sram_inv;
wire [0:7] mux_2level_tapbuf_size13_20_sram;
wire [0:7] mux_2level_tapbuf_size13_20_sram_inv;
wire [0:7] mux_2level_tapbuf_size13_21_sram;
wire [0:7] mux_2level_tapbuf_size13_21_sram_inv;
wire [0:7] mux_2level_tapbuf_size13_2_sram;
wire [0:7] mux_2level_tapbuf_size13_2_sram_inv;
wire [0:7] mux_2level_tapbuf_size13_3_sram;
wire [0:7] mux_2level_tapbuf_size13_3_sram_inv;
wire [0:7] mux_2level_tapbuf_size13_4_sram;
wire [0:7] mux_2level_tapbuf_size13_4_sram_inv;
wire [0:7] mux_2level_tapbuf_size13_5_sram;
wire [0:7] mux_2level_tapbuf_size13_5_sram_inv;
wire [0:7] mux_2level_tapbuf_size13_6_sram;
wire [0:7] mux_2level_tapbuf_size13_6_sram_inv;
wire [0:7] mux_2level_tapbuf_size13_7_sram;
wire [0:7] mux_2level_tapbuf_size13_7_sram_inv;
wire [0:7] mux_2level_tapbuf_size13_8_sram;
wire [0:7] mux_2level_tapbuf_size13_8_sram_inv;
wire [0:7] mux_2level_tapbuf_size13_9_sram;
wire [0:7] mux_2level_tapbuf_size13_9_sram_inv;
wire [0:7] mux_2level_tapbuf_size14_0_sram;
wire [0:7] mux_2level_tapbuf_size14_0_sram_inv;
wire [0:7] mux_2level_tapbuf_size14_10_sram;
wire [0:7] mux_2level_tapbuf_size14_10_sram_inv;
wire [0:7] mux_2level_tapbuf_size14_11_sram;
wire [0:7] mux_2level_tapbuf_size14_11_sram_inv;
wire [0:7] mux_2level_tapbuf_size14_12_sram;
wire [0:7] mux_2level_tapbuf_size14_12_sram_inv;
wire [0:7] mux_2level_tapbuf_size14_13_sram;
wire [0:7] mux_2level_tapbuf_size14_13_sram_inv;
wire [0:7] mux_2level_tapbuf_size14_14_sram;
wire [0:7] mux_2level_tapbuf_size14_14_sram_inv;
wire [0:7] mux_2level_tapbuf_size14_15_sram;
wire [0:7] mux_2level_tapbuf_size14_15_sram_inv;
wire [0:7] mux_2level_tapbuf_size14_16_sram;
wire [0:7] mux_2level_tapbuf_size14_16_sram_inv;
wire [0:7] mux_2level_tapbuf_size14_1_sram;
wire [0:7] mux_2level_tapbuf_size14_1_sram_inv;
wire [0:7] mux_2level_tapbuf_size14_2_sram;
wire [0:7] mux_2level_tapbuf_size14_2_sram_inv;
wire [0:7] mux_2level_tapbuf_size14_3_sram;
wire [0:7] mux_2level_tapbuf_size14_3_sram_inv;
wire [0:7] mux_2level_tapbuf_size14_4_sram;
wire [0:7] mux_2level_tapbuf_size14_4_sram_inv;
wire [0:7] mux_2level_tapbuf_size14_5_sram;
wire [0:7] mux_2level_tapbuf_size14_5_sram_inv;
wire [0:7] mux_2level_tapbuf_size14_6_sram;
wire [0:7] mux_2level_tapbuf_size14_6_sram_inv;
wire [0:7] mux_2level_tapbuf_size14_7_sram;
wire [0:7] mux_2level_tapbuf_size14_7_sram_inv;
wire [0:7] mux_2level_tapbuf_size14_8_sram;
wire [0:7] mux_2level_tapbuf_size14_8_sram_inv;
wire [0:7] mux_2level_tapbuf_size14_9_sram;
wire [0:7] mux_2level_tapbuf_size14_9_sram_inv;

// ----- BEGIN Local short connections -----
// ----- Local connection due to Wire 0 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chany_bottom_out[1] = chany_top_in[0];
// ----- Local connection due to Wire 1 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[2] = chany_top_in[1];
// ----- Local connection due to Wire 2 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[3] = chany_top_in[2];
// ----- Local connection due to Wire 4 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[5] = chany_top_in[4];
// ----- Local connection due to Wire 5 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[6] = chany_top_in[5];
// ----- Local connection due to Wire 6 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[7] = chany_top_in[6];
// ----- Local connection due to Wire 8 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[9] = chany_top_in[8];
// ----- Local connection due to Wire 9 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[10] = chany_top_in[9];
// ----- Local connection due to Wire 10 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[11] = chany_top_in[10];
// ----- Local connection due to Wire 12 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[13] = chany_top_in[12];
// ----- Local connection due to Wire 13 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[14] = chany_top_in[13];
// ----- Local connection due to Wire 14 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[15] = chany_top_in[14];
// ----- Local connection due to Wire 16 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[17] = chany_top_in[16];
// ----- Local connection due to Wire 17 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chany_bottom_out[18] = chany_top_in[17];
// ----- Local connection due to Wire 18 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chany_bottom_out[19] = chany_top_in[18];
// ----- Local connection due to Wire 20 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chany_bottom_out[21] = chany_top_in[20];
// ----- Local connection due to Wire 21 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chany_bottom_out[22] = chany_top_in[21];
// ----- Local connection due to Wire 22 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chany_bottom_out[23] = chany_top_in[22];
// ----- Local connection due to Wire 24 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chany_bottom_out[25] = chany_top_in[24];
// ----- Local connection due to Wire 25 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chany_bottom_out[26] = chany_top_in[25];
// ----- Local connection due to Wire 26 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[27] = chany_top_in[26];
// ----- Local connection due to Wire 28 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[29] = chany_top_in[28];
// ----- Local connection due to Wire 29 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[30] = chany_top_in[29];
// ----- Local connection due to Wire 30 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[31] = chany_top_in[30];
// ----- Local connection due to Wire 32 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[33] = chany_top_in[32];
// ----- Local connection due to Wire 33 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[34] = chany_top_in[33];
// ----- Local connection due to Wire 34 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chany_bottom_out[35] = chany_top_in[34];
// ----- Local connection due to Wire 36 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chany_bottom_out[37] = chany_top_in[36];
// ----- Local connection due to Wire 37 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chany_bottom_out[38] = chany_top_in[37];
// ----- Local connection due to Wire 38 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chany_bottom_out[39] = chany_top_in[38];
// ----- Local connection due to Wire 40 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chany_bottom_out[41] = chany_top_in[40];
// ----- Local connection due to Wire 41 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chany_bottom_out[42] = chany_top_in[41];
// ----- Local connection due to Wire 42 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chany_bottom_out[43] = chany_top_in[42];
// ----- Local connection due to Wire 44 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chany_bottom_out[45] = chany_top_in[44];
// ----- Local connection due to Wire 45 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chany_bottom_out[46] = chany_top_in[45];
// ----- Local connection due to Wire 46 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chany_bottom_out[47] = chany_top_in[46];
// ----- Local connection due to Wire 48 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chany_bottom_out[49] = chany_top_in[48];
// ----- Local connection due to Wire 60 -----
// ----- Net source id 0 -----
// ----- Net sink id 3 -----
	assign chanx_left_out[1] = chanx_right_in[0];
// ----- Local connection due to Wire 61 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[2] = chanx_right_in[1];
// ----- Local connection due to Wire 62 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[3] = chanx_right_in[2];
// ----- Local connection due to Wire 64 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[5] = chanx_right_in[4];
// ----- Local connection due to Wire 65 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[6] = chanx_right_in[5];
// ----- Local connection due to Wire 66 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[7] = chanx_right_in[6];
// ----- Local connection due to Wire 68 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[9] = chanx_right_in[8];
// ----- Local connection due to Wire 69 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[10] = chanx_right_in[9];
// ----- Local connection due to Wire 70 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[11] = chanx_right_in[10];
// ----- Local connection due to Wire 72 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[13] = chanx_right_in[12];
// ----- Local connection due to Wire 73 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[14] = chanx_right_in[13];
// ----- Local connection due to Wire 74 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[15] = chanx_right_in[14];
// ----- Local connection due to Wire 76 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[17] = chanx_right_in[16];
// ----- Local connection due to Wire 77 -----
// ----- Net source id 0 -----
// ----- Net sink id 3 -----
	assign chanx_left_out[18] = chanx_right_in[17];
// ----- Local connection due to Wire 78 -----
// ----- Net source id 0 -----
// ----- Net sink id 3 -----
	assign chanx_left_out[19] = chanx_right_in[18];
// ----- Local connection due to Wire 80 -----
// ----- Net source id 0 -----
// ----- Net sink id 3 -----
	assign chanx_left_out[21] = chanx_right_in[20];
// ----- Local connection due to Wire 81 -----
// ----- Net source id 0 -----
// ----- Net sink id 3 -----
	assign chanx_left_out[22] = chanx_right_in[21];
// ----- Local connection due to Wire 82 -----
// ----- Net source id 0 -----
// ----- Net sink id 3 -----
	assign chanx_left_out[23] = chanx_right_in[22];
// ----- Local connection due to Wire 84 -----
// ----- Net source id 0 -----
// ----- Net sink id 3 -----
	assign chanx_left_out[25] = chanx_right_in[24];
// ----- Local connection due to Wire 85 -----
// ----- Net source id 0 -----
// ----- Net sink id 3 -----
	assign chanx_left_out[26] = chanx_right_in[25];
// ----- Local connection due to Wire 86 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[27] = chanx_right_in[26];
// ----- Local connection due to Wire 88 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[29] = chanx_right_in[28];
// ----- Local connection due to Wire 89 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[30] = chanx_right_in[29];
// ----- Local connection due to Wire 90 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[31] = chanx_right_in[30];
// ----- Local connection due to Wire 92 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[33] = chanx_right_in[32];
// ----- Local connection due to Wire 93 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[34] = chanx_right_in[33];
// ----- Local connection due to Wire 94 -----
// ----- Net source id 0 -----
// ----- Net sink id 3 -----
	assign chanx_left_out[35] = chanx_right_in[34];
// ----- Local connection due to Wire 96 -----
// ----- Net source id 0 -----
// ----- Net sink id 3 -----
	assign chanx_left_out[37] = chanx_right_in[36];
// ----- Local connection due to Wire 97 -----
// ----- Net source id 0 -----
// ----- Net sink id 3 -----
	assign chanx_left_out[38] = chanx_right_in[37];
// ----- Local connection due to Wire 98 -----
// ----- Net source id 0 -----
// ----- Net sink id 3 -----
	assign chanx_left_out[39] = chanx_right_in[38];
// ----- Local connection due to Wire 100 -----
// ----- Net source id 0 -----
// ----- Net sink id 3 -----
	assign chanx_left_out[41] = chanx_right_in[40];
// ----- Local connection due to Wire 101 -----
// ----- Net source id 0 -----
// ----- Net sink id 3 -----
	assign chanx_left_out[42] = chanx_right_in[41];
// ----- Local connection due to Wire 102 -----
// ----- Net source id 0 -----
// ----- Net sink id 3 -----
	assign chanx_left_out[43] = chanx_right_in[42];
// ----- Local connection due to Wire 104 -----
// ----- Net source id 0 -----
// ----- Net sink id 3 -----
	assign chanx_left_out[45] = chanx_right_in[44];
// ----- Local connection due to Wire 105 -----
// ----- Net source id 0 -----
// ----- Net sink id 3 -----
	assign chanx_left_out[46] = chanx_right_in[45];
// ----- Local connection due to Wire 106 -----
// ----- Net source id 0 -----
// ----- Net sink id 3 -----
	assign chanx_left_out[47] = chanx_right_in[46];
// ----- Local connection due to Wire 108 -----
// ----- Net source id 0 -----
// ----- Net sink id 3 -----
	assign chanx_left_out[49] = chanx_right_in[48];
// ----- Local connection due to Wire 120 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_top_out[1] = chany_bottom_in[0];
// ----- Local connection due to Wire 121 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[2] = chany_bottom_in[1];
// ----- Local connection due to Wire 122 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[3] = chany_bottom_in[2];
// ----- Local connection due to Wire 124 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[5] = chany_bottom_in[4];
// ----- Local connection due to Wire 125 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[6] = chany_bottom_in[5];
// ----- Local connection due to Wire 126 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[7] = chany_bottom_in[6];
// ----- Local connection due to Wire 128 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[9] = chany_bottom_in[8];
// ----- Local connection due to Wire 129 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[10] = chany_bottom_in[9];
// ----- Local connection due to Wire 130 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[11] = chany_bottom_in[10];
// ----- Local connection due to Wire 132 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[13] = chany_bottom_in[12];
// ----- Local connection due to Wire 133 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[14] = chany_bottom_in[13];
// ----- Local connection due to Wire 134 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[15] = chany_bottom_in[14];
// ----- Local connection due to Wire 136 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[17] = chany_bottom_in[16];
// ----- Local connection due to Wire 137 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_top_out[18] = chany_bottom_in[17];
// ----- Local connection due to Wire 138 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_top_out[19] = chany_bottom_in[18];
// ----- Local connection due to Wire 140 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_top_out[21] = chany_bottom_in[20];
// ----- Local connection due to Wire 141 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_top_out[22] = chany_bottom_in[21];
// ----- Local connection due to Wire 142 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_top_out[23] = chany_bottom_in[22];
// ----- Local connection due to Wire 144 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_top_out[25] = chany_bottom_in[24];
// ----- Local connection due to Wire 145 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_top_out[26] = chany_bottom_in[25];
// ----- Local connection due to Wire 146 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[27] = chany_bottom_in[26];
// ----- Local connection due to Wire 148 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[29] = chany_bottom_in[28];
// ----- Local connection due to Wire 149 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[30] = chany_bottom_in[29];
// ----- Local connection due to Wire 150 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[31] = chany_bottom_in[30];
// ----- Local connection due to Wire 152 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[33] = chany_bottom_in[32];
// ----- Local connection due to Wire 153 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[34] = chany_bottom_in[33];
// ----- Local connection due to Wire 154 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_top_out[35] = chany_bottom_in[34];
// ----- Local connection due to Wire 156 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_top_out[37] = chany_bottom_in[36];
// ----- Local connection due to Wire 157 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_top_out[38] = chany_bottom_in[37];
// ----- Local connection due to Wire 158 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_top_out[39] = chany_bottom_in[38];
// ----- Local connection due to Wire 160 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_top_out[41] = chany_bottom_in[40];
// ----- Local connection due to Wire 161 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_top_out[42] = chany_bottom_in[41];
// ----- Local connection due to Wire 162 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_top_out[43] = chany_bottom_in[42];
// ----- Local connection due to Wire 164 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_top_out[45] = chany_bottom_in[44];
// ----- Local connection due to Wire 165 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_top_out[46] = chany_bottom_in[45];
// ----- Local connection due to Wire 166 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_top_out[47] = chany_bottom_in[46];
// ----- Local connection due to Wire 168 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_top_out[49] = chany_bottom_in[48];
// ----- Local connection due to Wire 180 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_right_out[1] = chanx_left_in[0];
// ----- Local connection due to Wire 181 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[2] = chanx_left_in[1];
// ----- Local connection due to Wire 182 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[3] = chanx_left_in[2];
// ----- Local connection due to Wire 184 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[5] = chanx_left_in[4];
// ----- Local connection due to Wire 185 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[6] = chanx_left_in[5];
// ----- Local connection due to Wire 186 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[7] = chanx_left_in[6];
// ----- Local connection due to Wire 188 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[9] = chanx_left_in[8];
// ----- Local connection due to Wire 189 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[10] = chanx_left_in[9];
// ----- Local connection due to Wire 190 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[11] = chanx_left_in[10];
// ----- Local connection due to Wire 192 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[13] = chanx_left_in[12];
// ----- Local connection due to Wire 193 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[14] = chanx_left_in[13];
// ----- Local connection due to Wire 194 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[15] = chanx_left_in[14];
// ----- Local connection due to Wire 196 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[17] = chanx_left_in[16];
// ----- Local connection due to Wire 197 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_right_out[18] = chanx_left_in[17];
// ----- Local connection due to Wire 198 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_right_out[19] = chanx_left_in[18];
// ----- Local connection due to Wire 200 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_right_out[21] = chanx_left_in[20];
// ----- Local connection due to Wire 201 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_right_out[22] = chanx_left_in[21];
// ----- Local connection due to Wire 202 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_right_out[23] = chanx_left_in[22];
// ----- Local connection due to Wire 204 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_right_out[25] = chanx_left_in[24];
// ----- Local connection due to Wire 205 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_right_out[26] = chanx_left_in[25];
// ----- Local connection due to Wire 206 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[27] = chanx_left_in[26];
// ----- Local connection due to Wire 208 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[29] = chanx_left_in[28];
// ----- Local connection due to Wire 209 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[30] = chanx_left_in[29];
// ----- Local connection due to Wire 210 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[31] = chanx_left_in[30];
// ----- Local connection due to Wire 212 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[33] = chanx_left_in[32];
// ----- Local connection due to Wire 213 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[34] = chanx_left_in[33];
// ----- Local connection due to Wire 214 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_right_out[35] = chanx_left_in[34];
// ----- Local connection due to Wire 216 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_right_out[37] = chanx_left_in[36];
// ----- Local connection due to Wire 217 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_right_out[38] = chanx_left_in[37];
// ----- Local connection due to Wire 218 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_right_out[39] = chanx_left_in[38];
// ----- Local connection due to Wire 220 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_right_out[41] = chanx_left_in[40];
// ----- Local connection due to Wire 221 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_right_out[42] = chanx_left_in[41];
// ----- Local connection due to Wire 222 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_right_out[43] = chanx_left_in[42];
// ----- Local connection due to Wire 224 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_right_out[45] = chanx_left_in[44];
// ----- Local connection due to Wire 225 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_right_out[46] = chanx_left_in[45];
// ----- Local connection due to Wire 226 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_right_out[47] = chanx_left_in[46];
// ----- Local connection due to Wire 228 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_right_out[49] = chanx_left_in[48];
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	mux_2level_tapbuf_size14 mux_top_track_0 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_O_1_, top_left_grid_right_width_0_height_0_subtile_0__pin_O_5_, top_right_grid_left_width_0_height_0_subtile_0__pin_O_11_, chanx_right_in[1], chanx_right_in[7], chanx_right_in[18], chanx_right_in[36], chany_bottom_in[0], chany_bottom_in[17], chany_bottom_in[34], chanx_left_in[0], chanx_left_in[3], chanx_left_in[17], chanx_left_in[34]}),
		.sram(mux_2level_tapbuf_size14_0_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_0_sram_inv[0:7]),
		.out(chany_top_out[0]));

	mux_2level_tapbuf_size14 mux_top_track_48 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_O_1_, top_right_grid_left_width_0_height_0_subtile_0__pin_O_7_, top_right_grid_left_width_0_height_0_subtile_0__pin_O_11_, chanx_right_in[9], chanx_right_in[26], chanx_right_in[31], chanx_right_in[44], chany_bottom_in[8], chany_bottom_in[25], chany_bottom_in[42], chanx_left_in[9], chanx_left_in[26], chanx_left_in[31], chanx_left_in[44]}),
		.sram(mux_2level_tapbuf_size14_1_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_1_sram_inv[0:7]),
		.out(chany_top_out[24]));

	mux_2level_tapbuf_size14 mux_top_track_56 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_O_5_, top_right_grid_left_width_0_height_0_subtile_0__pin_O_11_, top_right_grid_left_width_0_height_0_subtile_0__pin_O_15_, chanx_right_in[10], chanx_right_in[28], chanx_right_in[35], chanx_right_in[45], chany_bottom_in[9], chany_bottom_in[26], chany_bottom_in[44], chanx_left_in[8], chanx_left_in[25], chanx_left_in[27], chanx_left_in[42]}),
		.sram(mux_2level_tapbuf_size14_2_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_2_sram_inv[0:7]),
		.out(chany_top_out[28]));

	mux_2level_tapbuf_size14 mux_top_track_64 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_O_9_, top_right_grid_left_width_0_height_0_subtile_0__pin_O_15_, top_right_grid_left_width_0_height_0_subtile_0__pin_O_19_, chanx_right_in[12], chanx_right_in[29], chanx_right_in[39], chanx_right_in[46], chany_bottom_in[10], chany_bottom_in[28], chany_bottom_in[45], chanx_left_in[6], chanx_left_in[23:24], chanx_left_in[41]}),
		.sram(mux_2level_tapbuf_size14_3_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_3_sram_inv[0:7]),
		.out(chany_top_out[32]));

	mux_2level_tapbuf_size14 mux_right_track_8 (
		.in({chany_top_in[0], chany_top_in[3], chany_top_in[17], chany_top_in[34], right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_6_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_10_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_12_, chany_bottom_in[13], chany_bottom_in[30], chany_bottom_in[43], chany_bottom_in[48], chanx_left_in[1], chanx_left_in[18], chanx_left_in[36]}),
		.sram(mux_2level_tapbuf_size14_4_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_4_sram_inv[0:7]),
		.out(chanx_right_out[4]));

	mux_2level_tapbuf_size14 mux_right_track_16 (
		.in({chany_top_in[1], chany_top_in[7], chany_top_in[18], chany_top_in[36], right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_10_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_14_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_16_, chany_bottom_in[12], chany_bottom_in[29], chany_bottom_in[39], chany_bottom_in[46], chanx_left_in[2], chanx_left_in[20], chanx_left_in[37]}),
		.sram(mux_2level_tapbuf_size14_5_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_5_sram_inv[0:7]),
		.out(chanx_right_out[8]));

	mux_2level_tapbuf_size14 mux_right_track_48 (
		.in({chany_top_in[6], chany_top_in[23:24], chany_top_in[41], right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_2_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_4_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_8_, chany_bottom_in[6], chany_bottom_in[23:24], chany_bottom_in[41], chanx_left_in[8], chanx_left_in[25], chanx_left_in[42]}),
		.sram(mux_2level_tapbuf_size14_6_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_6_sram_inv[0:7]),
		.out(chanx_right_out[24]));

	mux_2level_tapbuf_size14 mux_right_track_56 (
		.in({chany_top_in[8], chany_top_in[25], chany_top_in[27], chany_top_in[42], right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_6_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_8_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_12_, chany_bottom_in[5], chany_bottom_in[19], chany_bottom_in[22], chany_bottom_in[40], chanx_left_in[9], chanx_left_in[26], chanx_left_in[44]}),
		.sram(mux_2level_tapbuf_size14_7_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_7_sram_inv[0:7]),
		.out(chanx_right_out[28]));

	mux_2level_tapbuf_size14 mux_right_track_64 (
		.in({chany_top_in[9], chany_top_in[26], chany_top_in[31], chany_top_in[44], right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_10_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_12_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_16_, chany_bottom_in[4], chany_bottom_in[15], chany_bottom_in[21], chany_bottom_in[38], chanx_left_in[10], chanx_left_in[28], chanx_left_in[45]}),
		.sram(mux_2level_tapbuf_size14_8_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_8_sram_inv[0:7]),
		.out(chanx_right_out[32]));

	mux_2level_tapbuf_size14 mux_bottom_track_9 (
		.in({chany_top_in[1], chany_top_in[18], chany_top_in[36], chanx_right_in[13], chanx_right_in[30], chanx_right_in[43], chanx_right_in[48], bottom_right_grid_left_width_0_height_0_subtile_0__pin_O_7_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_O_11_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_13_, chanx_left_in[2], chanx_left_in[11], chanx_left_in[20], chanx_left_in[37]}),
		.sram(mux_2level_tapbuf_size14_9_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_9_sram_inv[0:7]),
		.out(chany_bottom_out[4]));

	mux_2level_tapbuf_size14 mux_bottom_track_17 (
		.in({chany_top_in[2], chany_top_in[20], chany_top_in[37], chanx_right_in[12], chanx_right_in[29], chanx_right_in[39], chanx_right_in[46], bottom_right_grid_left_width_0_height_0_subtile_0__pin_O_11_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_O_15_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_17_, chanx_left_in[4], chanx_left_in[15], chanx_left_in[21], chanx_left_in[38]}),
		.sram(mux_2level_tapbuf_size14_10_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_10_sram_inv[0:7]),
		.out(chany_bottom_out[8]));

	mux_2level_tapbuf_size14 mux_bottom_track_49 (
		.in({chany_top_in[8], chany_top_in[25], chany_top_in[42], chanx_right_in[6], chanx_right_in[23:24], chanx_right_in[41], bottom_right_grid_left_width_0_height_0_subtile_0__pin_O_3_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_5_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_9_, chanx_left_in[9], chanx_left_in[26], chanx_left_in[31], chanx_left_in[44]}),
		.sram(mux_2level_tapbuf_size14_11_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_11_sram_inv[0:7]),
		.out(chany_bottom_out[24]));

	mux_2level_tapbuf_size14 mux_bottom_track_57 (
		.in({chany_top_in[9], chany_top_in[26], chany_top_in[44], chanx_right_in[5], chanx_right_in[19], chanx_right_in[22], chanx_right_in[40], bottom_right_grid_left_width_0_height_0_subtile_0__pin_O_7_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_9_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_13_, chanx_left_in[10], chanx_left_in[28], chanx_left_in[35], chanx_left_in[45]}),
		.sram(mux_2level_tapbuf_size14_12_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_12_sram_inv[0:7]),
		.out(chany_bottom_out[28]));

	mux_2level_tapbuf_size14 mux_bottom_track_65 (
		.in({chany_top_in[10], chany_top_in[28], chany_top_in[45], chanx_right_in[4], chanx_right_in[15], chanx_right_in[21], chanx_right_in[38], bottom_right_grid_left_width_0_height_0_subtile_0__pin_O_11_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_13_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_17_, chanx_left_in[12], chanx_left_in[29], chanx_left_in[39], chanx_left_in[46]}),
		.sram(mux_2level_tapbuf_size14_13_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_13_sram_inv[0:7]),
		.out(chany_bottom_out[32]));

	mux_2level_tapbuf_size14 mux_left_track_49 (
		.in({chany_top_in[9], chany_top_in[26], chany_top_in[31], chany_top_in[44], chanx_right_in[8], chanx_right_in[25], chanx_right_in[42], chany_bottom_in[6], chany_bottom_in[23:24], chany_bottom_in[41], left_top_grid_bottom_width_0_height_0_subtile_0__pin_O_2_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_4_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_8_}),
		.sram(mux_2level_tapbuf_size14_14_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_14_sram_inv[0:7]),
		.out(chanx_left_out[24]));

	mux_2level_tapbuf_size14 mux_left_track_57 (
		.in({chany_top_in[8], chany_top_in[25], chany_top_in[27], chany_top_in[42], chanx_right_in[9], chanx_right_in[26], chanx_right_in[44], chany_bottom_in[8], chany_bottom_in[25], chany_bottom_in[27], chany_bottom_in[42], left_top_grid_bottom_width_0_height_0_subtile_0__pin_O_6_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_8_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_12_}),
		.sram(mux_2level_tapbuf_size14_15_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_15_sram_inv[0:7]),
		.out(chanx_left_out[28]));

	mux_2level_tapbuf_size14 mux_left_track_65 (
		.in({chany_top_in[6], chany_top_in[23:24], chany_top_in[41], chanx_right_in[10], chanx_right_in[28], chanx_right_in[45], chany_bottom_in[9], chany_bottom_in[26], chany_bottom_in[31], chany_bottom_in[44], left_top_grid_bottom_width_0_height_0_subtile_0__pin_O_10_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_12_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_16_}),
		.sram(mux_2level_tapbuf_size14_16_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_16_sram_inv[0:7]),
		.out(chanx_left_out[32]));

	mux_2level_tapbuf_size14_mem mem_top_track_0 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(ccff_head),
		.ccff_tail(mux_2level_tapbuf_size14_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_0_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_0_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_top_track_48 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size13_mem_4_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_1_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_1_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_top_track_56 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_2_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_2_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_top_track_64 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_3_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_3_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_right_track_8 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_4_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_4_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_4_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_right_track_16 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_4_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_5_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_5_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_5_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_right_track_48 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size13_mem_8_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_6_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_6_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_6_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_right_track_56 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_6_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_7_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_7_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_7_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_right_track_64 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_7_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_8_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_8_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_8_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_bottom_track_9 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size13_mem_10_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_9_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_9_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_9_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_bottom_track_17 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_9_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_10_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_10_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_10_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_bottom_track_49 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size13_mem_13_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_11_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_11_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_11_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_bottom_track_57 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_11_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_12_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_12_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_12_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_bottom_track_65 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_12_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_13_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_13_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_13_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_left_track_49 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size13_mem_20_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_14_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_14_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_14_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_left_track_57 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_14_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_15_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_15_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_15_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_left_track_65 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_15_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_16_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_16_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_16_sram_inv[0:7]));

	mux_2level_tapbuf_size13 mux_top_track_8 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_O_5_, top_left_grid_right_width_0_height_0_subtile_0__pin_O_9_, top_right_grid_left_width_0_height_0_subtile_0__pin_O_15_, chanx_right_in[2], chanx_right_in[11], chanx_right_in[20], chanx_right_in[37], chany_bottom_in[1], chany_bottom_in[18], chany_bottom_in[36], chanx_left_in[16], chanx_left_in[33], chanx_left_in[49]}),
		.sram(mux_2level_tapbuf_size13_0_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size13_0_sram_inv[0:7]),
		.out(chany_top_out[4]));

	mux_2level_tapbuf_size13 mux_top_track_16 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_O_9_, top_left_grid_right_width_0_height_0_subtile_0__pin_O_13_, top_right_grid_left_width_0_height_0_subtile_0__pin_O_19_, chanx_right_in[4], chanx_right_in[15], chanx_right_in[21], chanx_right_in[38], chany_bottom_in[2], chany_bottom_in[20], chany_bottom_in[37], chanx_left_in[14], chanx_left_in[32], chanx_left_in[47]}),
		.sram(mux_2level_tapbuf_size13_1_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size13_1_sram_inv[0:7]),
		.out(chany_top_out[8]));

	mux_2level_tapbuf_size13 mux_top_track_24 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_O_13_, top_left_grid_right_width_0_height_0_subtile_0__pin_O_17_, chanx_right_in[5], chanx_right_in[19], chanx_right_in[22], chanx_right_in[40], chany_bottom_in[4], chany_bottom_in[21], chany_bottom_in[38], chanx_left_in[13], chanx_left_in[30], chanx_left_in[43], chanx_left_in[48]}),
		.sram(mux_2level_tapbuf_size13_2_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size13_2_sram_inv[0:7]),
		.out(chany_top_out[12]));

	mux_2level_tapbuf_size13 mux_top_track_32 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_O_17_, top_right_grid_left_width_0_height_0_subtile_0__pin_O_3_, chanx_right_in[6], chanx_right_in[23:24], chanx_right_in[41], chany_bottom_in[5], chany_bottom_in[22], chany_bottom_in[40], chanx_left_in[12], chanx_left_in[29], chanx_left_in[39], chanx_left_in[46]}),
		.sram(mux_2level_tapbuf_size13_3_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size13_3_sram_inv[0:7]),
		.out(chany_top_out[16]));

	mux_2level_tapbuf_size13 mux_top_track_40 (
		.in({top_right_grid_left_width_0_height_0_subtile_0__pin_O_3_, top_right_grid_left_width_0_height_0_subtile_0__pin_O_7_, chanx_right_in[8], chanx_right_in[25], chanx_right_in[27], chanx_right_in[42], chany_bottom_in[6], chany_bottom_in[24], chany_bottom_in[41], chanx_left_in[10], chanx_left_in[28], chanx_left_in[35], chanx_left_in[45]}),
		.sram(mux_2level_tapbuf_size13_4_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size13_4_sram_inv[0:7]),
		.out(chany_top_out[20]));

	mux_2level_tapbuf_size13 mux_top_track_72 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_O_13_, top_right_grid_left_width_0_height_0_subtile_0__pin_O_19_, chanx_right_in[13], chanx_right_in[30], chanx_right_in[43], chanx_right_in[48], chany_bottom_in[12], chany_bottom_in[29], chany_bottom_in[46], chanx_left_in[5], chanx_left_in[19], chanx_left_in[22], chanx_left_in[40]}),
		.sram(mux_2level_tapbuf_size13_5_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size13_5_sram_inv[0:7]),
		.out(chany_top_out[36]));

	mux_2level_tapbuf_size13 mux_right_track_24 (
		.in({chany_top_in[2], chany_top_in[11], chany_top_in[20], chany_top_in[37], right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_14_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_18_, chany_bottom_in[10], chany_bottom_in[28], chany_bottom_in[35], chany_bottom_in[45], chanx_left_in[4], chanx_left_in[21], chanx_left_in[38]}),
		.sram(mux_2level_tapbuf_size13_6_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size13_6_sram_inv[0:7]),
		.out(chanx_right_out[12]));

	mux_2level_tapbuf_size13 mux_right_track_32 (
		.in({chany_top_in[4], chany_top_in[15], chany_top_in[21], chany_top_in[38], right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_18_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_0_, chany_bottom_in[9], chany_bottom_in[26], chany_bottom_in[31], chany_bottom_in[44], chanx_left_in[5], chanx_left_in[22], chanx_left_in[40]}),
		.sram(mux_2level_tapbuf_size13_7_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size13_7_sram_inv[0:7]),
		.out(chanx_right_out[16]));

	mux_2level_tapbuf_size13 mux_right_track_40 (
		.in({chany_top_in[5], chany_top_in[19], chany_top_in[22], chany_top_in[40], right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_0_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_4_, chany_bottom_in[8], chany_bottom_in[25], chany_bottom_in[27], chany_bottom_in[42], chanx_left_in[6], chanx_left_in[24], chanx_left_in[41]}),
		.sram(mux_2level_tapbuf_size13_8_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size13_8_sram_inv[0:7]),
		.out(chanx_right_out[20]));

	mux_2level_tapbuf_size13 mux_right_track_72 (
		.in({chany_top_in[10], chany_top_in[28], chany_top_in[35], chany_top_in[45], right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_14_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_16_, chany_bottom_in[2], chany_bottom_in[11], chany_bottom_in[20], chany_bottom_in[37], chanx_left_in[12], chanx_left_in[29], chanx_left_in[46]}),
		.sram(mux_2level_tapbuf_size13_9_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size13_9_sram_inv[0:7]),
		.out(chanx_right_out[36]));

	mux_2level_tapbuf_size13 mux_bottom_track_1 (
		.in({chany_top_in[0], chany_top_in[17], chany_top_in[34], chanx_right_in[14], chanx_right_in[32], chanx_right_in[47], bottom_right_grid_left_width_0_height_0_subtile_0__pin_O_3_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_O_7_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_9_, chanx_left_in[1], chanx_left_in[7], chanx_left_in[18], chanx_left_in[36]}),
		.sram(mux_2level_tapbuf_size13_10_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size13_10_sram_inv[0:7]),
		.out(chany_bottom_out[0]));

	mux_2level_tapbuf_size13 mux_bottom_track_25 (
		.in({chany_top_in[4], chany_top_in[21], chany_top_in[38], chanx_right_in[10], chanx_right_in[28], chanx_right_in[35], chanx_right_in[45], bottom_right_grid_left_width_0_height_0_subtile_0__pin_O_15_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_O_19_, chanx_left_in[5], chanx_left_in[19], chanx_left_in[22], chanx_left_in[40]}),
		.sram(mux_2level_tapbuf_size13_11_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size13_11_sram_inv[0:7]),
		.out(chany_bottom_out[12]));

	mux_2level_tapbuf_size13 mux_bottom_track_33 (
		.in({chany_top_in[5], chany_top_in[22], chany_top_in[40], chanx_right_in[9], chanx_right_in[26], chanx_right_in[31], chanx_right_in[44], bottom_right_grid_left_width_0_height_0_subtile_0__pin_O_19_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_1_, chanx_left_in[6], chanx_left_in[23:24], chanx_left_in[41]}),
		.sram(mux_2level_tapbuf_size13_12_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size13_12_sram_inv[0:7]),
		.out(chany_bottom_out[16]));

	mux_2level_tapbuf_size13 mux_bottom_track_41 (
		.in({chany_top_in[6], chany_top_in[24], chany_top_in[41], chanx_right_in[8], chanx_right_in[25], chanx_right_in[27], chanx_right_in[42], bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_1_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_5_, chanx_left_in[8], chanx_left_in[25], chanx_left_in[27], chanx_left_in[42]}),
		.sram(mux_2level_tapbuf_size13_13_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size13_13_sram_inv[0:7]),
		.out(chany_bottom_out[20]));

	mux_2level_tapbuf_size13 mux_bottom_track_73 (
		.in({chany_top_in[12], chany_top_in[29], chany_top_in[46], chanx_right_in[2], chanx_right_in[11], chanx_right_in[20], chanx_right_in[37], bottom_right_grid_left_width_0_height_0_subtile_0__pin_O_15_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_17_, chanx_left_in[13], chanx_left_in[30], chanx_left_in[43], chanx_left_in[48]}),
		.sram(mux_2level_tapbuf_size13_14_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size13_14_sram_inv[0:7]),
		.out(chany_bottom_out[36]));

	mux_2level_tapbuf_size13 mux_left_track_1 (
		.in({chany_top_in[0], chany_top_in[3], chany_top_in[17], chany_top_in[34], chanx_right_in[0], chanx_right_in[17], chanx_right_in[34], chany_bottom_in[16], chany_bottom_in[33], chany_bottom_in[49], left_top_grid_bottom_width_0_height_0_subtile_0__pin_O_2_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_O_6_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_8_}),
		.sram(mux_2level_tapbuf_size13_15_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size13_15_sram_inv[0:7]),
		.out(chanx_left_out[0]));

	mux_2level_tapbuf_size13 mux_left_track_9 (
		.in({chany_top_in[16], chany_top_in[33], chany_top_in[49], chanx_right_in[1], chanx_right_in[18], chanx_right_in[36], chany_bottom_in[0], chany_bottom_in[3], chany_bottom_in[17], chany_bottom_in[34], left_top_grid_bottom_width_0_height_0_subtile_0__pin_O_6_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_O_10_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_12_}),
		.sram(mux_2level_tapbuf_size13_16_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size13_16_sram_inv[0:7]),
		.out(chanx_left_out[4]));

	mux_2level_tapbuf_size13 mux_left_track_17 (
		.in({chany_top_in[14], chany_top_in[32], chany_top_in[47], chanx_right_in[2], chanx_right_in[20], chanx_right_in[37], chany_bottom_in[1], chany_bottom_in[7], chany_bottom_in[18], chany_bottom_in[36], left_top_grid_bottom_width_0_height_0_subtile_0__pin_O_10_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_O_14_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_16_}),
		.sram(mux_2level_tapbuf_size13_17_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size13_17_sram_inv[0:7]),
		.out(chanx_left_out[8]));

	mux_2level_tapbuf_size13 mux_left_track_25 (
		.in({chany_top_in[13], chany_top_in[30], chany_top_in[43], chany_top_in[48], chanx_right_in[4], chanx_right_in[21], chanx_right_in[38], chany_bottom_in[2], chany_bottom_in[11], chany_bottom_in[20], chany_bottom_in[37], left_top_grid_bottom_width_0_height_0_subtile_0__pin_O_14_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_O_18_}),
		.sram(mux_2level_tapbuf_size13_18_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size13_18_sram_inv[0:7]),
		.out(chanx_left_out[12]));

	mux_2level_tapbuf_size13 mux_left_track_33 (
		.in({chany_top_in[12], chany_top_in[29], chany_top_in[39], chany_top_in[46], chanx_right_in[5], chanx_right_in[22], chanx_right_in[40], chany_bottom_in[4], chany_bottom_in[15], chany_bottom_in[21], chany_bottom_in[38], left_top_grid_bottom_width_0_height_0_subtile_0__pin_O_18_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_0_}),
		.sram(mux_2level_tapbuf_size13_19_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size13_19_sram_inv[0:7]),
		.out(chanx_left_out[16]));

	mux_2level_tapbuf_size13 mux_left_track_41 (
		.in({chany_top_in[10], chany_top_in[28], chany_top_in[35], chany_top_in[45], chanx_right_in[6], chanx_right_in[24], chanx_right_in[41], chany_bottom_in[5], chany_bottom_in[19], chany_bottom_in[22], chany_bottom_in[40], left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_0_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_4_}),
		.sram(mux_2level_tapbuf_size13_20_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size13_20_sram_inv[0:7]),
		.out(chanx_left_out[20]));

	mux_2level_tapbuf_size13 mux_left_track_73 (
		.in({chany_top_in[5], chany_top_in[19], chany_top_in[22], chany_top_in[40], chanx_right_in[12], chanx_right_in[29], chanx_right_in[46], chany_bottom_in[10], chany_bottom_in[28], chany_bottom_in[35], chany_bottom_in[45], left_top_grid_bottom_width_0_height_0_subtile_0__pin_O_14_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_16_}),
		.sram(mux_2level_tapbuf_size13_21_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size13_21_sram_inv[0:7]),
		.out(chanx_left_out[36]));

	mux_2level_tapbuf_size13_mem mem_top_track_8 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size13_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size13_0_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size13_0_sram_inv[0:7]));

	mux_2level_tapbuf_size13_mem mem_top_track_16 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size13_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size13_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size13_1_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size13_1_sram_inv[0:7]));

	mux_2level_tapbuf_size13_mem mem_top_track_24 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size13_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size13_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size13_2_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size13_2_sram_inv[0:7]));

	mux_2level_tapbuf_size13_mem mem_top_track_32 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size13_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size13_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size13_3_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size13_3_sram_inv[0:7]));

	mux_2level_tapbuf_size13_mem mem_top_track_40 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size13_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size13_mem_4_ccff_tail),
		.mem_out(mux_2level_tapbuf_size13_4_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size13_4_sram_inv[0:7]));

	mux_2level_tapbuf_size13_mem mem_top_track_72 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size13_mem_5_ccff_tail),
		.mem_out(mux_2level_tapbuf_size13_5_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size13_5_sram_inv[0:7]));

	mux_2level_tapbuf_size13_mem mem_right_track_24 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_5_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size13_mem_6_ccff_tail),
		.mem_out(mux_2level_tapbuf_size13_6_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size13_6_sram_inv[0:7]));

	mux_2level_tapbuf_size13_mem mem_right_track_32 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size13_mem_6_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size13_mem_7_ccff_tail),
		.mem_out(mux_2level_tapbuf_size13_7_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size13_7_sram_inv[0:7]));

	mux_2level_tapbuf_size13_mem mem_right_track_40 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size13_mem_7_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size13_mem_8_ccff_tail),
		.mem_out(mux_2level_tapbuf_size13_8_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size13_8_sram_inv[0:7]));

	mux_2level_tapbuf_size13_mem mem_right_track_72 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_8_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size13_mem_9_ccff_tail),
		.mem_out(mux_2level_tapbuf_size13_9_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size13_9_sram_inv[0:7]));

	mux_2level_tapbuf_size13_mem mem_bottom_track_1 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size10_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size13_mem_10_ccff_tail),
		.mem_out(mux_2level_tapbuf_size13_10_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size13_10_sram_inv[0:7]));

	mux_2level_tapbuf_size13_mem mem_bottom_track_25 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_10_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size13_mem_11_ccff_tail),
		.mem_out(mux_2level_tapbuf_size13_11_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size13_11_sram_inv[0:7]));

	mux_2level_tapbuf_size13_mem mem_bottom_track_33 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size13_mem_11_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size13_mem_12_ccff_tail),
		.mem_out(mux_2level_tapbuf_size13_12_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size13_12_sram_inv[0:7]));

	mux_2level_tapbuf_size13_mem mem_bottom_track_41 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size13_mem_12_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size13_mem_13_ccff_tail),
		.mem_out(mux_2level_tapbuf_size13_13_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size13_13_sram_inv[0:7]));

	mux_2level_tapbuf_size13_mem mem_bottom_track_73 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_13_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size13_mem_14_ccff_tail),
		.mem_out(mux_2level_tapbuf_size13_14_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size13_14_sram_inv[0:7]));

	mux_2level_tapbuf_size13_mem mem_left_track_1 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size11_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size13_mem_15_ccff_tail),
		.mem_out(mux_2level_tapbuf_size13_15_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size13_15_sram_inv[0:7]));

	mux_2level_tapbuf_size13_mem mem_left_track_9 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size13_mem_15_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size13_mem_16_ccff_tail),
		.mem_out(mux_2level_tapbuf_size13_16_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size13_16_sram_inv[0:7]));

	mux_2level_tapbuf_size13_mem mem_left_track_17 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size13_mem_16_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size13_mem_17_ccff_tail),
		.mem_out(mux_2level_tapbuf_size13_17_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size13_17_sram_inv[0:7]));

	mux_2level_tapbuf_size13_mem mem_left_track_25 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size13_mem_17_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size13_mem_18_ccff_tail),
		.mem_out(mux_2level_tapbuf_size13_18_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size13_18_sram_inv[0:7]));

	mux_2level_tapbuf_size13_mem mem_left_track_33 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size13_mem_18_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size13_mem_19_ccff_tail),
		.mem_out(mux_2level_tapbuf_size13_19_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size13_19_sram_inv[0:7]));

	mux_2level_tapbuf_size13_mem mem_left_track_41 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size13_mem_19_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size13_mem_20_ccff_tail),
		.mem_out(mux_2level_tapbuf_size13_20_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size13_20_sram_inv[0:7]));

	mux_2level_tapbuf_size13_mem mem_left_track_73 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_16_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size13_mem_21_ccff_tail),
		.mem_out(mux_2level_tapbuf_size13_21_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size13_21_sram_inv[0:7]));

	mux_2level_tapbuf_size11 mux_top_track_80 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_O_17_, chanx_right_in[14], chanx_right_in[32], chanx_right_in[47], chany_bottom_in[13], chany_bottom_in[30], chany_bottom_in[48], chanx_left_in[4], chanx_left_in[15], chanx_left_in[21], chanx_left_in[38]}),
		.sram(mux_2level_tapbuf_size11_0_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size11_0_sram_inv[0:7]),
		.out(chany_top_out[40]));

	mux_2level_tapbuf_size11 mux_right_track_88 (
		.in({chany_top_in[13], chany_top_in[30], chany_top_in[43], chany_top_in[48], right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_0_, chany_bottom_in[0], chany_bottom_in[3], chany_bottom_in[17], chany_bottom_in[34], chanx_left_in[14], chanx_left_in[32]}),
		.sram(mux_2level_tapbuf_size11_1_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size11_1_sram_inv[0:7]),
		.out(chanx_right_out[44]));

	mux_2level_tapbuf_size11 mux_bottom_track_81 (
		.in({chany_top_in[13], chany_top_in[30], chany_top_in[48], chanx_right_in[1], chanx_right_in[7], chanx_right_in[18], chanx_right_in[36], bottom_right_grid_left_width_0_height_0_subtile_0__pin_O_19_, chanx_left_in[14], chanx_left_in[32], chanx_left_in[47]}),
		.sram(mux_2level_tapbuf_size11_2_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size11_2_sram_inv[0:7]),
		.out(chany_bottom_out[40]));

	mux_2level_tapbuf_size11 mux_bottom_track_97 (
		.in({chany_top_in[16], chany_top_in[33], chanx_right_in[16], chanx_right_in[33], chanx_right_in[49], bottom_right_grid_left_width_0_height_0_subtile_0__pin_O_3_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_5_, chanx_left_in[0], chanx_left_in[3], chanx_left_in[17], chanx_left_in[34]}),
		.sram(mux_2level_tapbuf_size11_3_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size11_3_sram_inv[0:7]),
		.out(chany_bottom_out[48]));

	mux_2level_tapbuf_size11 mux_left_track_89 (
		.in({chany_top_in[2], chany_top_in[11], chany_top_in[20], chany_top_in[37], chanx_right_in[14], chanx_right_in[32], chany_bottom_in[13], chany_bottom_in[30], chany_bottom_in[43], chany_bottom_in[48], left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_0_}),
		.sram(mux_2level_tapbuf_size11_4_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size11_4_sram_inv[0:7]),
		.out(chanx_left_out[44]));

	mux_2level_tapbuf_size11 mux_left_track_97 (
		.in({chany_top_in[1], chany_top_in[7], chany_top_in[18], chany_top_in[36], chanx_right_in[16], chanx_right_in[33], chany_bottom_in[14], chany_bottom_in[32], chany_bottom_in[47], left_top_grid_bottom_width_0_height_0_subtile_0__pin_O_2_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_4_}),
		.sram(mux_2level_tapbuf_size11_5_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size11_5_sram_inv[0:7]),
		.out(chanx_left_out[48]));

	mux_2level_tapbuf_size11_mem mem_top_track_80 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size13_mem_5_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size11_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size11_0_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size11_0_sram_inv[0:7]));

	mux_2level_tapbuf_size11_mem mem_right_track_88 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size11_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size11_1_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size11_1_sram_inv[0:7]));

	mux_2level_tapbuf_size11_mem mem_bottom_track_81 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size13_mem_14_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size11_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size11_2_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size11_2_sram_inv[0:7]));

	mux_2level_tapbuf_size11_mem mem_bottom_track_97 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size10_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size11_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size11_3_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size11_3_sram_inv[0:7]));

	mux_2level_tapbuf_size11_mem mem_left_track_89 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size11_mem_4_ccff_tail),
		.mem_out(mux_2level_tapbuf_size11_4_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size11_4_sram_inv[0:7]));

	mux_2level_tapbuf_size11_mem mem_left_track_97 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size11_mem_4_ccff_tail),
		.ccff_tail(ccff_tail),
		.mem_out(mux_2level_tapbuf_size11_5_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size11_5_sram_inv[0:7]));

	mux_2level_tapbuf_size10 mux_top_track_88 (
		.in({top_right_grid_left_width_0_height_0_subtile_0__pin_O_3_, chanx_right_in[16], chanx_right_in[33], chanx_right_in[49], chany_bottom_in[14], chany_bottom_in[32], chanx_left_in[2], chanx_left_in[11], chanx_left_in[20], chanx_left_in[37]}),
		.sram(mux_2level_tapbuf_size10_0_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size10_0_sram_inv[0:7]),
		.out(chany_top_out[44]));

	mux_2level_tapbuf_size10 mux_right_track_96 (
		.in({chany_top_in[14], chany_top_in[32], chany_top_in[47], right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_2_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_4_, chany_bottom_in[16], chany_bottom_in[33], chany_bottom_in[49], chanx_left_in[16], chanx_left_in[33]}),
		.sram(mux_2level_tapbuf_size10_1_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size10_1_sram_inv[0:7]),
		.out(chanx_right_out[48]));

	mux_2level_tapbuf_size10 mux_bottom_track_89 (
		.in({chany_top_in[14], chany_top_in[32], chanx_right_in[0], chanx_right_in[3], chanx_right_in[17], chanx_right_in[34], bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_1_, chanx_left_in[16], chanx_left_in[33], chanx_left_in[49]}),
		.sram(mux_2level_tapbuf_size10_2_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size10_2_sram_inv[0:7]),
		.out(chany_bottom_out[44]));

	mux_2level_tapbuf_size10_mem mem_top_track_88 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size11_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size10_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size10_0_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size10_0_sram_inv[0:7]));

	mux_2level_tapbuf_size10_mem mem_right_track_96 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size11_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size10_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size10_1_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size10_1_sram_inv[0:7]));

	mux_2level_tapbuf_size10_mem mem_bottom_track_89 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size11_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size10_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size10_2_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size10_2_sram_inv[0:7]));

	mux_2level_tapbuf_size12 mux_top_track_96 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_O_1_, top_right_grid_left_width_0_height_0_subtile_0__pin_O_7_, chanx_right_in[0], chanx_right_in[3], chanx_right_in[17], chanx_right_in[34], chany_bottom_in[16], chany_bottom_in[33], chanx_left_in[1], chanx_left_in[7], chanx_left_in[18], chanx_left_in[36]}),
		.sram(mux_2level_tapbuf_size12_0_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_0_sram_inv[0:7]),
		.out(chany_top_out[48]));

	mux_2level_tapbuf_size12 mux_right_track_0 (
		.in({chany_top_in[16], chany_top_in[33], chany_top_in[49], right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_2_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_6_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_8_, chany_bottom_in[14], chany_bottom_in[32], chany_bottom_in[47], chanx_left_in[0], chanx_left_in[17], chanx_left_in[34]}),
		.sram(mux_2level_tapbuf_size12_1_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_1_sram_inv[0:7]),
		.out(chanx_right_out[0]));

	mux_2level_tapbuf_size12 mux_right_track_80 (
		.in({chany_top_in[12], chany_top_in[29], chany_top_in[39], chany_top_in[46], right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_18_, chany_bottom_in[1], chany_bottom_in[7], chany_bottom_in[18], chany_bottom_in[36], chanx_left_in[13], chanx_left_in[30], chanx_left_in[48]}),
		.sram(mux_2level_tapbuf_size12_2_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_2_sram_inv[0:7]),
		.out(chanx_right_out[40]));

	mux_2level_tapbuf_size12 mux_left_track_81 (
		.in({chany_top_in[4], chany_top_in[15], chany_top_in[21], chany_top_in[38], chanx_right_in[13], chanx_right_in[30], chanx_right_in[48], chany_bottom_in[12], chany_bottom_in[29], chany_bottom_in[39], chany_bottom_in[46], left_top_grid_bottom_width_0_height_0_subtile_0__pin_O_18_}),
		.sram(mux_2level_tapbuf_size12_3_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_3_sram_inv[0:7]),
		.out(chanx_left_out[40]));

	mux_2level_tapbuf_size12_mem mem_top_track_96 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size10_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_0_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_0_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_track_0 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_1_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_1_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_track_80 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size13_mem_9_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_2_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_2_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_left_track_81 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size13_mem_21_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_3_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_3_sram_inv[0:7]));

endmodule
// ----- END Verilog module for sb_1__1_ -----

//----- Default net type -----
`default_nettype none



