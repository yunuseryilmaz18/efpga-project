//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Look-Up Tables
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Mon May  1 00:32:59 2023
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

//----- Default net type -----
`default_nettype none

// ----- Verilog module for lut6 -----
module lut6(in,
            sram,
            sram_inv,
            out);
//----- INPUT PORTS -----
input [0:5] in;
//----- INPUT PORTS -----
input [0:63] sram;
//----- INPUT PORTS -----
input [0:63] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN wire-connection ports -----
wire [0:5] in;
wire [0:0] out;
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:0] INVTX1_0_out;
wire [0:0] INVTX1_1_out;
wire [0:0] INVTX1_2_out;
wire [0:0] INVTX1_3_out;
wire [0:0] INVTX1_4_out;
wire [0:0] INVTX1_5_out;
wire [0:0] buf4_0_out;
wire [0:0] buf4_1_out;
wire [0:0] buf4_2_out;
wire [0:0] buf4_3_out;
wire [0:0] buf4_4_out;
wire [0:0] buf4_5_out;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	INVTX1 INVTX1_0_ (
		.in(in[0]),
		.out(INVTX1_0_out));

	INVTX1 INVTX1_1_ (
		.in(in[1]),
		.out(INVTX1_1_out));

	INVTX1 INVTX1_2_ (
		.in(in[2]),
		.out(INVTX1_2_out));

	INVTX1 INVTX1_3_ (
		.in(in[3]),
		.out(INVTX1_3_out));

	INVTX1 INVTX1_4_ (
		.in(in[4]),
		.out(INVTX1_4_out));

	INVTX1 INVTX1_5_ (
		.in(in[5]),
		.out(INVTX1_5_out));

	buf4 buf4_0_ (
		.in(in[0]),
		.out(buf4_0_out));

	buf4 buf4_1_ (
		.in(in[1]),
		.out(buf4_1_out));

	buf4 buf4_2_ (
		.in(in[2]),
		.out(buf4_2_out));

	buf4 buf4_3_ (
		.in(in[3]),
		.out(buf4_3_out));

	buf4 buf4_4_ (
		.in(in[4]),
		.out(buf4_4_out));

	buf4 buf4_5_ (
		.in(in[5]),
		.out(buf4_5_out));

	lut6_mux lut6_mux_0_ (
		.in(sram[0:63]),
		.sram({buf4_0_out, buf4_1_out, buf4_2_out, buf4_3_out, buf4_4_out, buf4_5_out}),
		.sram_inv({INVTX1_0_out, INVTX1_1_out, INVTX1_2_out, INVTX1_3_out, INVTX1_4_out, INVTX1_5_out}),
		.out(out));

endmodule
// ----- END Verilog module for lut6 -----

//----- Default net type -----
`default_nettype none



