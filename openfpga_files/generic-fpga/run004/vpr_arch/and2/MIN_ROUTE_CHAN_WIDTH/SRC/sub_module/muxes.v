//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Multiplexers
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Mon May  1 00:32:59 2023
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

//----- Default net type -----
`default_nettype none

// ----- Verilog module for mux_2level_tapbuf_size2 -----
module mux_2level_tapbuf_size2(in,
                               sram,
                               sram_inv,
                               out);
//----- INPUT PORTS -----
input [0:1] in;
//----- INPUT PORTS -----
input [0:1] sram;
//----- INPUT PORTS -----
input [0:1] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:0] INVTX1_0_out;
wire [0:0] INVTX1_1_out;
wire [0:0] const1_0_const1;
wire [0:0] mux_2level_tapbuf_basis_input2_mem1_0_out;
wire [0:0] mux_2level_tapbuf_basis_input2_mem1_1_out;

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

	const1 const1_0_ (
		.const1(const1_0_const1));

	tap_buf4 tap_buf4_0_ (
		.in(mux_2level_tapbuf_basis_input2_mem1_1_out),
		.out(out));

	mux_2level_tapbuf_basis_input2_mem1 mux_l1_in_0_ (
		.in({INVTX1_0_out, INVTX1_1_out}),
		.mem(sram[0]),
		.mem_inv(sram_inv[0]),
		.out(mux_2level_tapbuf_basis_input2_mem1_0_out));

	mux_2level_tapbuf_basis_input2_mem1 mux_l2_in_0_ (
		.in({mux_2level_tapbuf_basis_input2_mem1_0_out, const1_0_const1}),
		.mem(sram[1]),
		.mem_inv(sram_inv[1]),
		.out(mux_2level_tapbuf_basis_input2_mem1_1_out));

endmodule
// ----- END Verilog module for mux_2level_tapbuf_size2 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype none

// ----- Verilog module for mux_2level_tapbuf_size3 -----
module mux_2level_tapbuf_size3(in,
                               sram,
                               sram_inv,
                               out);
//----- INPUT PORTS -----
input [0:2] in;
//----- INPUT PORTS -----
input [0:1] sram;
//----- INPUT PORTS -----
input [0:1] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:0] INVTX1_0_out;
wire [0:0] INVTX1_1_out;
wire [0:0] INVTX1_2_out;
wire [0:0] const1_0_const1;
wire [0:0] mux_2level_tapbuf_basis_input2_mem1_0_out;
wire [0:0] mux_2level_tapbuf_basis_input2_mem1_1_out;
wire [0:0] mux_2level_tapbuf_basis_input2_mem1_2_out;

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

	const1 const1_0_ (
		.const1(const1_0_const1));

	tap_buf4 tap_buf4_0_ (
		.in(mux_2level_tapbuf_basis_input2_mem1_2_out),
		.out(out));

	mux_2level_tapbuf_basis_input2_mem1 mux_l1_in_0_ (
		.in({INVTX1_0_out, INVTX1_1_out}),
		.mem(sram[0]),
		.mem_inv(sram_inv[0]),
		.out(mux_2level_tapbuf_basis_input2_mem1_0_out));

	mux_2level_tapbuf_basis_input2_mem1 mux_l1_in_1_ (
		.in({INVTX1_2_out, const1_0_const1}),
		.mem(sram[0]),
		.mem_inv(sram_inv[0]),
		.out(mux_2level_tapbuf_basis_input2_mem1_1_out));

	mux_2level_tapbuf_basis_input2_mem1 mux_l2_in_0_ (
		.in({mux_2level_tapbuf_basis_input2_mem1_0_out, mux_2level_tapbuf_basis_input2_mem1_1_out}),
		.mem(sram[1]),
		.mem_inv(sram_inv[1]),
		.out(mux_2level_tapbuf_basis_input2_mem1_2_out));

endmodule
// ----- END Verilog module for mux_2level_tapbuf_size3 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype none

// ----- Verilog module for mux_2level_tapbuf_size10 -----
module mux_2level_tapbuf_size10(in,
                                sram,
                                sram_inv,
                                out);
//----- INPUT PORTS -----
input [0:9] in;
//----- INPUT PORTS -----
input [0:7] sram;
//----- INPUT PORTS -----
input [0:7] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:0] INVTX1_0_out;
wire [0:0] INVTX1_1_out;
wire [0:0] INVTX1_2_out;
wire [0:0] INVTX1_3_out;
wire [0:0] INVTX1_4_out;
wire [0:0] INVTX1_5_out;
wire [0:0] INVTX1_6_out;
wire [0:0] INVTX1_7_out;
wire [0:0] INVTX1_8_out;
wire [0:0] INVTX1_9_out;
wire [0:0] const1_0_const1;
wire [0:0] mux_2level_tapbuf_basis_input2_mem2_0_out;
wire [0:0] mux_2level_tapbuf_basis_input4_mem4_0_out;
wire [0:0] mux_2level_tapbuf_basis_input4_mem4_1_out;
wire [0:0] mux_2level_tapbuf_basis_input4_mem4_2_out;

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

	INVTX1 INVTX1_6_ (
		.in(in[6]),
		.out(INVTX1_6_out));

	INVTX1 INVTX1_7_ (
		.in(in[7]),
		.out(INVTX1_7_out));

	INVTX1 INVTX1_8_ (
		.in(in[8]),
		.out(INVTX1_8_out));

	INVTX1 INVTX1_9_ (
		.in(in[9]),
		.out(INVTX1_9_out));

	const1 const1_0_ (
		.const1(const1_0_const1));

	tap_buf4 tap_buf4_0_ (
		.in(mux_2level_tapbuf_basis_input4_mem4_2_out),
		.out(out));

	mux_2level_tapbuf_basis_input4_mem4 mux_l1_in_0_ (
		.in({INVTX1_0_out, INVTX1_1_out, INVTX1_2_out, INVTX1_3_out}),
		.mem(sram[0:3]),
		.mem_inv(sram_inv[0:3]),
		.out(mux_2level_tapbuf_basis_input4_mem4_0_out));

	mux_2level_tapbuf_basis_input4_mem4 mux_l1_in_1_ (
		.in({INVTX1_4_out, INVTX1_5_out, INVTX1_6_out, INVTX1_7_out}),
		.mem(sram[0:3]),
		.mem_inv(sram_inv[0:3]),
		.out(mux_2level_tapbuf_basis_input4_mem4_1_out));

	mux_2level_tapbuf_basis_input4_mem4 mux_l2_in_0_ (
		.in({mux_2level_tapbuf_basis_input4_mem4_0_out, mux_2level_tapbuf_basis_input4_mem4_1_out, mux_2level_tapbuf_basis_input2_mem2_0_out, const1_0_const1}),
		.mem(sram[4:7]),
		.mem_inv(sram_inv[4:7]),
		.out(mux_2level_tapbuf_basis_input4_mem4_2_out));

	mux_2level_tapbuf_basis_input2_mem2 mux_l1_in_2_ (
		.in({INVTX1_8_out, INVTX1_9_out}),
		.mem(sram[0:1]),
		.mem_inv(sram_inv[0:1]),
		.out(mux_2level_tapbuf_basis_input2_mem2_0_out));

endmodule
// ----- END Verilog module for mux_2level_tapbuf_size10 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype none

// ----- Verilog module for mux_2level_tapbuf_size8 -----
module mux_2level_tapbuf_size8(in,
                               sram,
                               sram_inv,
                               out);
//----- INPUT PORTS -----
input [0:7] in;
//----- INPUT PORTS -----
input [0:5] sram;
//----- INPUT PORTS -----
input [0:5] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:0] INVTX1_0_out;
wire [0:0] INVTX1_1_out;
wire [0:0] INVTX1_2_out;
wire [0:0] INVTX1_3_out;
wire [0:0] INVTX1_4_out;
wire [0:0] INVTX1_5_out;
wire [0:0] INVTX1_6_out;
wire [0:0] INVTX1_7_out;
wire [0:0] const1_0_const1;
wire [0:0] mux_2level_tapbuf_basis_input3_mem3_0_out;
wire [0:0] mux_2level_tapbuf_basis_input3_mem3_1_out;
wire [0:0] mux_2level_tapbuf_basis_input3_mem3_2_out;
wire [0:0] mux_2level_tapbuf_basis_input3_mem3_3_out;

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

	INVTX1 INVTX1_6_ (
		.in(in[6]),
		.out(INVTX1_6_out));

	INVTX1 INVTX1_7_ (
		.in(in[7]),
		.out(INVTX1_7_out));

	const1 const1_0_ (
		.const1(const1_0_const1));

	tap_buf4 tap_buf4_0_ (
		.in(mux_2level_tapbuf_basis_input3_mem3_3_out),
		.out(out));

	mux_2level_tapbuf_basis_input3_mem3 mux_l1_in_0_ (
		.in({INVTX1_0_out, INVTX1_1_out, INVTX1_2_out}),
		.mem(sram[0:2]),
		.mem_inv(sram_inv[0:2]),
		.out(mux_2level_tapbuf_basis_input3_mem3_0_out));

	mux_2level_tapbuf_basis_input3_mem3 mux_l1_in_1_ (
		.in({INVTX1_3_out, INVTX1_4_out, INVTX1_5_out}),
		.mem(sram[0:2]),
		.mem_inv(sram_inv[0:2]),
		.out(mux_2level_tapbuf_basis_input3_mem3_1_out));

	mux_2level_tapbuf_basis_input3_mem3 mux_l1_in_2_ (
		.in({INVTX1_6_out, INVTX1_7_out, const1_0_const1}),
		.mem(sram[0:2]),
		.mem_inv(sram_inv[0:2]),
		.out(mux_2level_tapbuf_basis_input3_mem3_2_out));

	mux_2level_tapbuf_basis_input3_mem3 mux_l2_in_0_ (
		.in({mux_2level_tapbuf_basis_input3_mem3_0_out, mux_2level_tapbuf_basis_input3_mem3_1_out, mux_2level_tapbuf_basis_input3_mem3_2_out}),
		.mem(sram[3:5]),
		.mem_inv(sram_inv[3:5]),
		.out(mux_2level_tapbuf_basis_input3_mem3_3_out));

endmodule
// ----- END Verilog module for mux_2level_tapbuf_size8 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype none

// ----- Verilog module for mux_2level_tapbuf_size9 -----
module mux_2level_tapbuf_size9(in,
                               sram,
                               sram_inv,
                               out);
//----- INPUT PORTS -----
input [0:8] in;
//----- INPUT PORTS -----
input [0:7] sram;
//----- INPUT PORTS -----
input [0:7] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:0] INVTX1_0_out;
wire [0:0] INVTX1_1_out;
wire [0:0] INVTX1_2_out;
wire [0:0] INVTX1_3_out;
wire [0:0] INVTX1_4_out;
wire [0:0] INVTX1_5_out;
wire [0:0] INVTX1_6_out;
wire [0:0] INVTX1_7_out;
wire [0:0] INVTX1_8_out;
wire [0:0] const1_0_const1;
wire [0:0] mux_2level_tapbuf_basis_input4_mem4_0_out;
wire [0:0] mux_2level_tapbuf_basis_input4_mem4_1_out;
wire [0:0] mux_2level_tapbuf_basis_input4_mem4_2_out;

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

	INVTX1 INVTX1_6_ (
		.in(in[6]),
		.out(INVTX1_6_out));

	INVTX1 INVTX1_7_ (
		.in(in[7]),
		.out(INVTX1_7_out));

	INVTX1 INVTX1_8_ (
		.in(in[8]),
		.out(INVTX1_8_out));

	const1 const1_0_ (
		.const1(const1_0_const1));

	tap_buf4 tap_buf4_0_ (
		.in(mux_2level_tapbuf_basis_input4_mem4_2_out),
		.out(out));

	mux_2level_tapbuf_basis_input4_mem4 mux_l1_in_0_ (
		.in({INVTX1_0_out, INVTX1_1_out, INVTX1_2_out, INVTX1_3_out}),
		.mem(sram[0:3]),
		.mem_inv(sram_inv[0:3]),
		.out(mux_2level_tapbuf_basis_input4_mem4_0_out));

	mux_2level_tapbuf_basis_input4_mem4 mux_l1_in_1_ (
		.in({INVTX1_4_out, INVTX1_5_out, INVTX1_6_out, INVTX1_7_out}),
		.mem(sram[0:3]),
		.mem_inv(sram_inv[0:3]),
		.out(mux_2level_tapbuf_basis_input4_mem4_1_out));

	mux_2level_tapbuf_basis_input4_mem4 mux_l2_in_0_ (
		.in({mux_2level_tapbuf_basis_input4_mem4_0_out, mux_2level_tapbuf_basis_input4_mem4_1_out, INVTX1_8_out, const1_0_const1}),
		.mem(sram[4:7]),
		.mem_inv(sram_inv[4:7]),
		.out(mux_2level_tapbuf_basis_input4_mem4_2_out));

endmodule
// ----- END Verilog module for mux_2level_tapbuf_size9 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype none

// ----- Verilog module for mux_2level_tapbuf_size4 -----
module mux_2level_tapbuf_size4(in,
                               sram,
                               sram_inv,
                               out);
//----- INPUT PORTS -----
input [0:3] in;
//----- INPUT PORTS -----
input [0:5] sram;
//----- INPUT PORTS -----
input [0:5] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:0] INVTX1_0_out;
wire [0:0] INVTX1_1_out;
wire [0:0] INVTX1_2_out;
wire [0:0] INVTX1_3_out;
wire [0:0] const1_0_const1;
wire [0:0] mux_2level_tapbuf_basis_input3_mem3_0_out;
wire [0:0] mux_2level_tapbuf_basis_input3_mem3_1_out;

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

	const1 const1_0_ (
		.const1(const1_0_const1));

	tap_buf4 tap_buf4_0_ (
		.in(mux_2level_tapbuf_basis_input3_mem3_1_out),
		.out(out));

	mux_2level_tapbuf_basis_input3_mem3 mux_l1_in_0_ (
		.in({INVTX1_0_out, INVTX1_1_out, INVTX1_2_out}),
		.mem(sram[0:2]),
		.mem_inv(sram_inv[0:2]),
		.out(mux_2level_tapbuf_basis_input3_mem3_0_out));

	mux_2level_tapbuf_basis_input3_mem3 mux_l2_in_0_ (
		.in({mux_2level_tapbuf_basis_input3_mem3_0_out, INVTX1_3_out, const1_0_const1}),
		.mem(sram[3:5]),
		.mem_inv(sram_inv[3:5]),
		.out(mux_2level_tapbuf_basis_input3_mem3_1_out));

endmodule
// ----- END Verilog module for mux_2level_tapbuf_size4 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype none

// ----- Verilog module for mux_2level_tapbuf_size5 -----
module mux_2level_tapbuf_size5(in,
                               sram,
                               sram_inv,
                               out);
//----- INPUT PORTS -----
input [0:4] in;
//----- INPUT PORTS -----
input [0:5] sram;
//----- INPUT PORTS -----
input [0:5] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:0] INVTX1_0_out;
wire [0:0] INVTX1_1_out;
wire [0:0] INVTX1_2_out;
wire [0:0] INVTX1_3_out;
wire [0:0] INVTX1_4_out;
wire [0:0] const1_0_const1;
wire [0:0] mux_2level_tapbuf_basis_input2_mem2_0_out;
wire [0:0] mux_2level_tapbuf_basis_input3_mem3_0_out;
wire [0:0] mux_2level_tapbuf_basis_input3_mem3_1_out;

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

	const1 const1_0_ (
		.const1(const1_0_const1));

	tap_buf4 tap_buf4_0_ (
		.in(mux_2level_tapbuf_basis_input3_mem3_1_out),
		.out(out));

	mux_2level_tapbuf_basis_input3_mem3 mux_l1_in_0_ (
		.in({INVTX1_0_out, INVTX1_1_out, INVTX1_2_out}),
		.mem(sram[0:2]),
		.mem_inv(sram_inv[0:2]),
		.out(mux_2level_tapbuf_basis_input3_mem3_0_out));

	mux_2level_tapbuf_basis_input3_mem3 mux_l2_in_0_ (
		.in({mux_2level_tapbuf_basis_input3_mem3_0_out, mux_2level_tapbuf_basis_input2_mem2_0_out, const1_0_const1}),
		.mem(sram[3:5]),
		.mem_inv(sram_inv[3:5]),
		.out(mux_2level_tapbuf_basis_input3_mem3_1_out));

	mux_2level_tapbuf_basis_input2_mem2 mux_l1_in_1_ (
		.in({INVTX1_3_out, INVTX1_4_out}),
		.mem(sram[0:1]),
		.mem_inv(sram_inv[0:1]),
		.out(mux_2level_tapbuf_basis_input2_mem2_0_out));

endmodule
// ----- END Verilog module for mux_2level_tapbuf_size5 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype none

// ----- Verilog module for mux_2level_tapbuf_size11 -----
module mux_2level_tapbuf_size11(in,
                                sram,
                                sram_inv,
                                out);
//----- INPUT PORTS -----
input [0:10] in;
//----- INPUT PORTS -----
input [0:7] sram;
//----- INPUT PORTS -----
input [0:7] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:0] INVTX1_0_out;
wire [0:0] INVTX1_10_out;
wire [0:0] INVTX1_1_out;
wire [0:0] INVTX1_2_out;
wire [0:0] INVTX1_3_out;
wire [0:0] INVTX1_4_out;
wire [0:0] INVTX1_5_out;
wire [0:0] INVTX1_6_out;
wire [0:0] INVTX1_7_out;
wire [0:0] INVTX1_8_out;
wire [0:0] INVTX1_9_out;
wire [0:0] const1_0_const1;
wire [0:0] mux_2level_tapbuf_basis_input3_mem3_0_out;
wire [0:0] mux_2level_tapbuf_basis_input4_mem4_0_out;
wire [0:0] mux_2level_tapbuf_basis_input4_mem4_1_out;
wire [0:0] mux_2level_tapbuf_basis_input4_mem4_2_out;

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

	INVTX1 INVTX1_6_ (
		.in(in[6]),
		.out(INVTX1_6_out));

	INVTX1 INVTX1_7_ (
		.in(in[7]),
		.out(INVTX1_7_out));

	INVTX1 INVTX1_8_ (
		.in(in[8]),
		.out(INVTX1_8_out));

	INVTX1 INVTX1_9_ (
		.in(in[9]),
		.out(INVTX1_9_out));

	INVTX1 INVTX1_10_ (
		.in(in[10]),
		.out(INVTX1_10_out));

	const1 const1_0_ (
		.const1(const1_0_const1));

	tap_buf4 tap_buf4_0_ (
		.in(mux_2level_tapbuf_basis_input4_mem4_2_out),
		.out(out));

	mux_2level_tapbuf_basis_input4_mem4 mux_l1_in_0_ (
		.in({INVTX1_0_out, INVTX1_1_out, INVTX1_2_out, INVTX1_3_out}),
		.mem(sram[0:3]),
		.mem_inv(sram_inv[0:3]),
		.out(mux_2level_tapbuf_basis_input4_mem4_0_out));

	mux_2level_tapbuf_basis_input4_mem4 mux_l1_in_1_ (
		.in({INVTX1_4_out, INVTX1_5_out, INVTX1_6_out, INVTX1_7_out}),
		.mem(sram[0:3]),
		.mem_inv(sram_inv[0:3]),
		.out(mux_2level_tapbuf_basis_input4_mem4_1_out));

	mux_2level_tapbuf_basis_input4_mem4 mux_l2_in_0_ (
		.in({mux_2level_tapbuf_basis_input4_mem4_0_out, mux_2level_tapbuf_basis_input4_mem4_1_out, mux_2level_tapbuf_basis_input3_mem3_0_out, const1_0_const1}),
		.mem(sram[4:7]),
		.mem_inv(sram_inv[4:7]),
		.out(mux_2level_tapbuf_basis_input4_mem4_2_out));

	mux_2level_tapbuf_basis_input3_mem3 mux_l1_in_2_ (
		.in({INVTX1_8_out, INVTX1_9_out, INVTX1_10_out}),
		.mem(sram[0:2]),
		.mem_inv(sram_inv[0:2]),
		.out(mux_2level_tapbuf_basis_input3_mem3_0_out));

endmodule
// ----- END Verilog module for mux_2level_tapbuf_size11 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype none

// ----- Verilog module for mux_2level_size50 -----
module mux_2level_size50(in,
                         sram,
                         sram_inv,
                         out);
//----- INPUT PORTS -----
input [0:49] in;
//----- INPUT PORTS -----
input [0:15] sram;
//----- INPUT PORTS -----
input [0:15] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:0] INVTX1_0_out;
wire [0:0] INVTX1_10_out;
wire [0:0] INVTX1_11_out;
wire [0:0] INVTX1_12_out;
wire [0:0] INVTX1_13_out;
wire [0:0] INVTX1_14_out;
wire [0:0] INVTX1_15_out;
wire [0:0] INVTX1_16_out;
wire [0:0] INVTX1_17_out;
wire [0:0] INVTX1_18_out;
wire [0:0] INVTX1_19_out;
wire [0:0] INVTX1_1_out;
wire [0:0] INVTX1_20_out;
wire [0:0] INVTX1_21_out;
wire [0:0] INVTX1_22_out;
wire [0:0] INVTX1_23_out;
wire [0:0] INVTX1_24_out;
wire [0:0] INVTX1_25_out;
wire [0:0] INVTX1_26_out;
wire [0:0] INVTX1_27_out;
wire [0:0] INVTX1_28_out;
wire [0:0] INVTX1_29_out;
wire [0:0] INVTX1_2_out;
wire [0:0] INVTX1_30_out;
wire [0:0] INVTX1_31_out;
wire [0:0] INVTX1_32_out;
wire [0:0] INVTX1_33_out;
wire [0:0] INVTX1_34_out;
wire [0:0] INVTX1_35_out;
wire [0:0] INVTX1_36_out;
wire [0:0] INVTX1_37_out;
wire [0:0] INVTX1_38_out;
wire [0:0] INVTX1_39_out;
wire [0:0] INVTX1_3_out;
wire [0:0] INVTX1_40_out;
wire [0:0] INVTX1_41_out;
wire [0:0] INVTX1_42_out;
wire [0:0] INVTX1_43_out;
wire [0:0] INVTX1_44_out;
wire [0:0] INVTX1_45_out;
wire [0:0] INVTX1_46_out;
wire [0:0] INVTX1_47_out;
wire [0:0] INVTX1_48_out;
wire [0:0] INVTX1_49_out;
wire [0:0] INVTX1_4_out;
wire [0:0] INVTX1_5_out;
wire [0:0] INVTX1_6_out;
wire [0:0] INVTX1_7_out;
wire [0:0] INVTX1_8_out;
wire [0:0] INVTX1_9_out;
wire [0:0] const1_0_const1;
wire [0:0] mux_2level_basis_input2_mem2_0_out;
wire [0:0] mux_2level_basis_input8_mem8_0_out;
wire [0:0] mux_2level_basis_input8_mem8_1_out;
wire [0:0] mux_2level_basis_input8_mem8_2_out;
wire [0:0] mux_2level_basis_input8_mem8_3_out;
wire [0:0] mux_2level_basis_input8_mem8_4_out;
wire [0:0] mux_2level_basis_input8_mem8_5_out;
wire [0:0] mux_2level_basis_input8_mem8_6_out;

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

	INVTX1 INVTX1_6_ (
		.in(in[6]),
		.out(INVTX1_6_out));

	INVTX1 INVTX1_7_ (
		.in(in[7]),
		.out(INVTX1_7_out));

	INVTX1 INVTX1_8_ (
		.in(in[8]),
		.out(INVTX1_8_out));

	INVTX1 INVTX1_9_ (
		.in(in[9]),
		.out(INVTX1_9_out));

	INVTX1 INVTX1_10_ (
		.in(in[10]),
		.out(INVTX1_10_out));

	INVTX1 INVTX1_11_ (
		.in(in[11]),
		.out(INVTX1_11_out));

	INVTX1 INVTX1_12_ (
		.in(in[12]),
		.out(INVTX1_12_out));

	INVTX1 INVTX1_13_ (
		.in(in[13]),
		.out(INVTX1_13_out));

	INVTX1 INVTX1_14_ (
		.in(in[14]),
		.out(INVTX1_14_out));

	INVTX1 INVTX1_15_ (
		.in(in[15]),
		.out(INVTX1_15_out));

	INVTX1 INVTX1_16_ (
		.in(in[16]),
		.out(INVTX1_16_out));

	INVTX1 INVTX1_17_ (
		.in(in[17]),
		.out(INVTX1_17_out));

	INVTX1 INVTX1_18_ (
		.in(in[18]),
		.out(INVTX1_18_out));

	INVTX1 INVTX1_19_ (
		.in(in[19]),
		.out(INVTX1_19_out));

	INVTX1 INVTX1_20_ (
		.in(in[20]),
		.out(INVTX1_20_out));

	INVTX1 INVTX1_21_ (
		.in(in[21]),
		.out(INVTX1_21_out));

	INVTX1 INVTX1_22_ (
		.in(in[22]),
		.out(INVTX1_22_out));

	INVTX1 INVTX1_23_ (
		.in(in[23]),
		.out(INVTX1_23_out));

	INVTX1 INVTX1_24_ (
		.in(in[24]),
		.out(INVTX1_24_out));

	INVTX1 INVTX1_25_ (
		.in(in[25]),
		.out(INVTX1_25_out));

	INVTX1 INVTX1_26_ (
		.in(in[26]),
		.out(INVTX1_26_out));

	INVTX1 INVTX1_27_ (
		.in(in[27]),
		.out(INVTX1_27_out));

	INVTX1 INVTX1_28_ (
		.in(in[28]),
		.out(INVTX1_28_out));

	INVTX1 INVTX1_29_ (
		.in(in[29]),
		.out(INVTX1_29_out));

	INVTX1 INVTX1_30_ (
		.in(in[30]),
		.out(INVTX1_30_out));

	INVTX1 INVTX1_31_ (
		.in(in[31]),
		.out(INVTX1_31_out));

	INVTX1 INVTX1_32_ (
		.in(in[32]),
		.out(INVTX1_32_out));

	INVTX1 INVTX1_33_ (
		.in(in[33]),
		.out(INVTX1_33_out));

	INVTX1 INVTX1_34_ (
		.in(in[34]),
		.out(INVTX1_34_out));

	INVTX1 INVTX1_35_ (
		.in(in[35]),
		.out(INVTX1_35_out));

	INVTX1 INVTX1_36_ (
		.in(in[36]),
		.out(INVTX1_36_out));

	INVTX1 INVTX1_37_ (
		.in(in[37]),
		.out(INVTX1_37_out));

	INVTX1 INVTX1_38_ (
		.in(in[38]),
		.out(INVTX1_38_out));

	INVTX1 INVTX1_39_ (
		.in(in[39]),
		.out(INVTX1_39_out));

	INVTX1 INVTX1_40_ (
		.in(in[40]),
		.out(INVTX1_40_out));

	INVTX1 INVTX1_41_ (
		.in(in[41]),
		.out(INVTX1_41_out));

	INVTX1 INVTX1_42_ (
		.in(in[42]),
		.out(INVTX1_42_out));

	INVTX1 INVTX1_43_ (
		.in(in[43]),
		.out(INVTX1_43_out));

	INVTX1 INVTX1_44_ (
		.in(in[44]),
		.out(INVTX1_44_out));

	INVTX1 INVTX1_45_ (
		.in(in[45]),
		.out(INVTX1_45_out));

	INVTX1 INVTX1_46_ (
		.in(in[46]),
		.out(INVTX1_46_out));

	INVTX1 INVTX1_47_ (
		.in(in[47]),
		.out(INVTX1_47_out));

	INVTX1 INVTX1_48_ (
		.in(in[48]),
		.out(INVTX1_48_out));

	INVTX1 INVTX1_49_ (
		.in(in[49]),
		.out(INVTX1_49_out));

	INVTX1 INVTX1_50_ (
		.in(mux_2level_basis_input8_mem8_6_out),
		.out(out));

	const1 const1_0_ (
		.const1(const1_0_const1));

	mux_2level_basis_input8_mem8 mux_l1_in_0_ (
		.in({INVTX1_0_out, INVTX1_1_out, INVTX1_2_out, INVTX1_3_out, INVTX1_4_out, INVTX1_5_out, INVTX1_6_out, INVTX1_7_out}),
		.mem(sram[0:7]),
		.mem_inv(sram_inv[0:7]),
		.out(mux_2level_basis_input8_mem8_0_out));

	mux_2level_basis_input8_mem8 mux_l1_in_1_ (
		.in({INVTX1_8_out, INVTX1_9_out, INVTX1_10_out, INVTX1_11_out, INVTX1_12_out, INVTX1_13_out, INVTX1_14_out, INVTX1_15_out}),
		.mem(sram[0:7]),
		.mem_inv(sram_inv[0:7]),
		.out(mux_2level_basis_input8_mem8_1_out));

	mux_2level_basis_input8_mem8 mux_l1_in_2_ (
		.in({INVTX1_16_out, INVTX1_17_out, INVTX1_18_out, INVTX1_19_out, INVTX1_20_out, INVTX1_21_out, INVTX1_22_out, INVTX1_23_out}),
		.mem(sram[0:7]),
		.mem_inv(sram_inv[0:7]),
		.out(mux_2level_basis_input8_mem8_2_out));

	mux_2level_basis_input8_mem8 mux_l1_in_3_ (
		.in({INVTX1_24_out, INVTX1_25_out, INVTX1_26_out, INVTX1_27_out, INVTX1_28_out, INVTX1_29_out, INVTX1_30_out, INVTX1_31_out}),
		.mem(sram[0:7]),
		.mem_inv(sram_inv[0:7]),
		.out(mux_2level_basis_input8_mem8_3_out));

	mux_2level_basis_input8_mem8 mux_l1_in_4_ (
		.in({INVTX1_32_out, INVTX1_33_out, INVTX1_34_out, INVTX1_35_out, INVTX1_36_out, INVTX1_37_out, INVTX1_38_out, INVTX1_39_out}),
		.mem(sram[0:7]),
		.mem_inv(sram_inv[0:7]),
		.out(mux_2level_basis_input8_mem8_4_out));

	mux_2level_basis_input8_mem8 mux_l1_in_5_ (
		.in({INVTX1_40_out, INVTX1_41_out, INVTX1_42_out, INVTX1_43_out, INVTX1_44_out, INVTX1_45_out, INVTX1_46_out, INVTX1_47_out}),
		.mem(sram[0:7]),
		.mem_inv(sram_inv[0:7]),
		.out(mux_2level_basis_input8_mem8_5_out));

	mux_2level_basis_input8_mem8 mux_l2_in_0_ (
		.in({mux_2level_basis_input8_mem8_0_out, mux_2level_basis_input8_mem8_1_out, mux_2level_basis_input8_mem8_2_out, mux_2level_basis_input8_mem8_3_out, mux_2level_basis_input8_mem8_4_out, mux_2level_basis_input8_mem8_5_out, mux_2level_basis_input2_mem2_0_out, const1_0_const1}),
		.mem(sram[8:15]),
		.mem_inv(sram_inv[8:15]),
		.out(mux_2level_basis_input8_mem8_6_out));

	mux_2level_basis_input2_mem2 mux_l1_in_6_ (
		.in({INVTX1_48_out, INVTX1_49_out}),
		.mem(sram[0:1]),
		.mem_inv(sram_inv[0:1]),
		.out(mux_2level_basis_input2_mem2_0_out));

endmodule
// ----- END Verilog module for mux_2level_size50 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype none

// ----- Verilog module for mux_1level_tapbuf_size2 -----
module mux_1level_tapbuf_size2(in,
                               sram,
                               sram_inv,
                               out);
//----- INPUT PORTS -----
input [0:1] in;
//----- INPUT PORTS -----
input [0:2] sram;
//----- INPUT PORTS -----
input [0:2] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:0] INVTX1_0_out;
wire [0:0] INVTX1_1_out;
wire [0:0] const1_0_const1;
wire [0:0] mux_1level_tapbuf_basis_input3_mem3_0_out;

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

	const1 const1_0_ (
		.const1(const1_0_const1));

	tap_buf4 tap_buf4_0_ (
		.in(mux_1level_tapbuf_basis_input3_mem3_0_out),
		.out(out));

	mux_1level_tapbuf_basis_input3_mem3 mux_l1_in_0_ (
		.in({INVTX1_0_out, INVTX1_1_out, const1_0_const1}),
		.mem(sram[0:2]),
		.mem_inv(sram_inv[0:2]),
		.out(mux_1level_tapbuf_basis_input3_mem3_0_out));

endmodule
// ----- END Verilog module for mux_1level_tapbuf_size2 -----

//----- Default net type -----
`default_nettype none




//----- Default net type -----
`default_nettype none

// ----- Verilog module for lut6_mux -----
module lut6_mux(in,
                sram,
                sram_inv,
                out);
//----- INPUT PORTS -----
input [0:63] in;
//----- INPUT PORTS -----
input [0:5] sram;
//----- INPUT PORTS -----
input [0:5] sram_inv;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:0] INVTX1_0_out;
wire [0:0] INVTX1_10_out;
wire [0:0] INVTX1_11_out;
wire [0:0] INVTX1_12_out;
wire [0:0] INVTX1_13_out;
wire [0:0] INVTX1_14_out;
wire [0:0] INVTX1_15_out;
wire [0:0] INVTX1_16_out;
wire [0:0] INVTX1_17_out;
wire [0:0] INVTX1_18_out;
wire [0:0] INVTX1_19_out;
wire [0:0] INVTX1_1_out;
wire [0:0] INVTX1_20_out;
wire [0:0] INVTX1_21_out;
wire [0:0] INVTX1_22_out;
wire [0:0] INVTX1_23_out;
wire [0:0] INVTX1_24_out;
wire [0:0] INVTX1_25_out;
wire [0:0] INVTX1_26_out;
wire [0:0] INVTX1_27_out;
wire [0:0] INVTX1_28_out;
wire [0:0] INVTX1_29_out;
wire [0:0] INVTX1_2_out;
wire [0:0] INVTX1_30_out;
wire [0:0] INVTX1_31_out;
wire [0:0] INVTX1_32_out;
wire [0:0] INVTX1_33_out;
wire [0:0] INVTX1_34_out;
wire [0:0] INVTX1_35_out;
wire [0:0] INVTX1_36_out;
wire [0:0] INVTX1_37_out;
wire [0:0] INVTX1_38_out;
wire [0:0] INVTX1_39_out;
wire [0:0] INVTX1_3_out;
wire [0:0] INVTX1_40_out;
wire [0:0] INVTX1_41_out;
wire [0:0] INVTX1_42_out;
wire [0:0] INVTX1_43_out;
wire [0:0] INVTX1_44_out;
wire [0:0] INVTX1_45_out;
wire [0:0] INVTX1_46_out;
wire [0:0] INVTX1_47_out;
wire [0:0] INVTX1_48_out;
wire [0:0] INVTX1_49_out;
wire [0:0] INVTX1_4_out;
wire [0:0] INVTX1_50_out;
wire [0:0] INVTX1_51_out;
wire [0:0] INVTX1_52_out;
wire [0:0] INVTX1_53_out;
wire [0:0] INVTX1_54_out;
wire [0:0] INVTX1_55_out;
wire [0:0] INVTX1_56_out;
wire [0:0] INVTX1_57_out;
wire [0:0] INVTX1_58_out;
wire [0:0] INVTX1_59_out;
wire [0:0] INVTX1_5_out;
wire [0:0] INVTX1_60_out;
wire [0:0] INVTX1_61_out;
wire [0:0] INVTX1_62_out;
wire [0:0] INVTX1_63_out;
wire [0:0] INVTX1_6_out;
wire [0:0] INVTX1_7_out;
wire [0:0] INVTX1_8_out;
wire [0:0] INVTX1_9_out;
wire [0:0] buf4_0_out;
wire [0:0] buf4_1_out;
wire [0:0] buf4_2_out;
wire [0:0] buf4_3_out;
wire [0:0] buf4_4_out;
wire [0:0] buf4_5_out;
wire [0:0] buf4_6_out;
wire [0:0] buf4_7_out;
wire [0:0] lut6_mux_basis_input2_mem1_0_out;
wire [0:0] lut6_mux_basis_input2_mem1_10_out;
wire [0:0] lut6_mux_basis_input2_mem1_11_out;
wire [0:0] lut6_mux_basis_input2_mem1_12_out;
wire [0:0] lut6_mux_basis_input2_mem1_13_out;
wire [0:0] lut6_mux_basis_input2_mem1_14_out;
wire [0:0] lut6_mux_basis_input2_mem1_15_out;
wire [0:0] lut6_mux_basis_input2_mem1_16_out;
wire [0:0] lut6_mux_basis_input2_mem1_17_out;
wire [0:0] lut6_mux_basis_input2_mem1_18_out;
wire [0:0] lut6_mux_basis_input2_mem1_19_out;
wire [0:0] lut6_mux_basis_input2_mem1_1_out;
wire [0:0] lut6_mux_basis_input2_mem1_20_out;
wire [0:0] lut6_mux_basis_input2_mem1_21_out;
wire [0:0] lut6_mux_basis_input2_mem1_22_out;
wire [0:0] lut6_mux_basis_input2_mem1_23_out;
wire [0:0] lut6_mux_basis_input2_mem1_24_out;
wire [0:0] lut6_mux_basis_input2_mem1_25_out;
wire [0:0] lut6_mux_basis_input2_mem1_26_out;
wire [0:0] lut6_mux_basis_input2_mem1_27_out;
wire [0:0] lut6_mux_basis_input2_mem1_28_out;
wire [0:0] lut6_mux_basis_input2_mem1_29_out;
wire [0:0] lut6_mux_basis_input2_mem1_2_out;
wire [0:0] lut6_mux_basis_input2_mem1_30_out;
wire [0:0] lut6_mux_basis_input2_mem1_31_out;
wire [0:0] lut6_mux_basis_input2_mem1_32_out;
wire [0:0] lut6_mux_basis_input2_mem1_33_out;
wire [0:0] lut6_mux_basis_input2_mem1_34_out;
wire [0:0] lut6_mux_basis_input2_mem1_35_out;
wire [0:0] lut6_mux_basis_input2_mem1_36_out;
wire [0:0] lut6_mux_basis_input2_mem1_37_out;
wire [0:0] lut6_mux_basis_input2_mem1_38_out;
wire [0:0] lut6_mux_basis_input2_mem1_39_out;
wire [0:0] lut6_mux_basis_input2_mem1_3_out;
wire [0:0] lut6_mux_basis_input2_mem1_40_out;
wire [0:0] lut6_mux_basis_input2_mem1_41_out;
wire [0:0] lut6_mux_basis_input2_mem1_42_out;
wire [0:0] lut6_mux_basis_input2_mem1_43_out;
wire [0:0] lut6_mux_basis_input2_mem1_44_out;
wire [0:0] lut6_mux_basis_input2_mem1_45_out;
wire [0:0] lut6_mux_basis_input2_mem1_46_out;
wire [0:0] lut6_mux_basis_input2_mem1_47_out;
wire [0:0] lut6_mux_basis_input2_mem1_48_out;
wire [0:0] lut6_mux_basis_input2_mem1_49_out;
wire [0:0] lut6_mux_basis_input2_mem1_4_out;
wire [0:0] lut6_mux_basis_input2_mem1_50_out;
wire [0:0] lut6_mux_basis_input2_mem1_51_out;
wire [0:0] lut6_mux_basis_input2_mem1_52_out;
wire [0:0] lut6_mux_basis_input2_mem1_53_out;
wire [0:0] lut6_mux_basis_input2_mem1_54_out;
wire [0:0] lut6_mux_basis_input2_mem1_55_out;
wire [0:0] lut6_mux_basis_input2_mem1_56_out;
wire [0:0] lut6_mux_basis_input2_mem1_57_out;
wire [0:0] lut6_mux_basis_input2_mem1_58_out;
wire [0:0] lut6_mux_basis_input2_mem1_59_out;
wire [0:0] lut6_mux_basis_input2_mem1_5_out;
wire [0:0] lut6_mux_basis_input2_mem1_60_out;
wire [0:0] lut6_mux_basis_input2_mem1_61_out;
wire [0:0] lut6_mux_basis_input2_mem1_62_out;
wire [0:0] lut6_mux_basis_input2_mem1_6_out;
wire [0:0] lut6_mux_basis_input2_mem1_7_out;
wire [0:0] lut6_mux_basis_input2_mem1_8_out;
wire [0:0] lut6_mux_basis_input2_mem1_9_out;

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

	INVTX1 INVTX1_6_ (
		.in(in[6]),
		.out(INVTX1_6_out));

	INVTX1 INVTX1_7_ (
		.in(in[7]),
		.out(INVTX1_7_out));

	INVTX1 INVTX1_8_ (
		.in(in[8]),
		.out(INVTX1_8_out));

	INVTX1 INVTX1_9_ (
		.in(in[9]),
		.out(INVTX1_9_out));

	INVTX1 INVTX1_10_ (
		.in(in[10]),
		.out(INVTX1_10_out));

	INVTX1 INVTX1_11_ (
		.in(in[11]),
		.out(INVTX1_11_out));

	INVTX1 INVTX1_12_ (
		.in(in[12]),
		.out(INVTX1_12_out));

	INVTX1 INVTX1_13_ (
		.in(in[13]),
		.out(INVTX1_13_out));

	INVTX1 INVTX1_14_ (
		.in(in[14]),
		.out(INVTX1_14_out));

	INVTX1 INVTX1_15_ (
		.in(in[15]),
		.out(INVTX1_15_out));

	INVTX1 INVTX1_16_ (
		.in(in[16]),
		.out(INVTX1_16_out));

	INVTX1 INVTX1_17_ (
		.in(in[17]),
		.out(INVTX1_17_out));

	INVTX1 INVTX1_18_ (
		.in(in[18]),
		.out(INVTX1_18_out));

	INVTX1 INVTX1_19_ (
		.in(in[19]),
		.out(INVTX1_19_out));

	INVTX1 INVTX1_20_ (
		.in(in[20]),
		.out(INVTX1_20_out));

	INVTX1 INVTX1_21_ (
		.in(in[21]),
		.out(INVTX1_21_out));

	INVTX1 INVTX1_22_ (
		.in(in[22]),
		.out(INVTX1_22_out));

	INVTX1 INVTX1_23_ (
		.in(in[23]),
		.out(INVTX1_23_out));

	INVTX1 INVTX1_24_ (
		.in(in[24]),
		.out(INVTX1_24_out));

	INVTX1 INVTX1_25_ (
		.in(in[25]),
		.out(INVTX1_25_out));

	INVTX1 INVTX1_26_ (
		.in(in[26]),
		.out(INVTX1_26_out));

	INVTX1 INVTX1_27_ (
		.in(in[27]),
		.out(INVTX1_27_out));

	INVTX1 INVTX1_28_ (
		.in(in[28]),
		.out(INVTX1_28_out));

	INVTX1 INVTX1_29_ (
		.in(in[29]),
		.out(INVTX1_29_out));

	INVTX1 INVTX1_30_ (
		.in(in[30]),
		.out(INVTX1_30_out));

	INVTX1 INVTX1_31_ (
		.in(in[31]),
		.out(INVTX1_31_out));

	INVTX1 INVTX1_32_ (
		.in(in[32]),
		.out(INVTX1_32_out));

	INVTX1 INVTX1_33_ (
		.in(in[33]),
		.out(INVTX1_33_out));

	INVTX1 INVTX1_34_ (
		.in(in[34]),
		.out(INVTX1_34_out));

	INVTX1 INVTX1_35_ (
		.in(in[35]),
		.out(INVTX1_35_out));

	INVTX1 INVTX1_36_ (
		.in(in[36]),
		.out(INVTX1_36_out));

	INVTX1 INVTX1_37_ (
		.in(in[37]),
		.out(INVTX1_37_out));

	INVTX1 INVTX1_38_ (
		.in(in[38]),
		.out(INVTX1_38_out));

	INVTX1 INVTX1_39_ (
		.in(in[39]),
		.out(INVTX1_39_out));

	INVTX1 INVTX1_40_ (
		.in(in[40]),
		.out(INVTX1_40_out));

	INVTX1 INVTX1_41_ (
		.in(in[41]),
		.out(INVTX1_41_out));

	INVTX1 INVTX1_42_ (
		.in(in[42]),
		.out(INVTX1_42_out));

	INVTX1 INVTX1_43_ (
		.in(in[43]),
		.out(INVTX1_43_out));

	INVTX1 INVTX1_44_ (
		.in(in[44]),
		.out(INVTX1_44_out));

	INVTX1 INVTX1_45_ (
		.in(in[45]),
		.out(INVTX1_45_out));

	INVTX1 INVTX1_46_ (
		.in(in[46]),
		.out(INVTX1_46_out));

	INVTX1 INVTX1_47_ (
		.in(in[47]),
		.out(INVTX1_47_out));

	INVTX1 INVTX1_48_ (
		.in(in[48]),
		.out(INVTX1_48_out));

	INVTX1 INVTX1_49_ (
		.in(in[49]),
		.out(INVTX1_49_out));

	INVTX1 INVTX1_50_ (
		.in(in[50]),
		.out(INVTX1_50_out));

	INVTX1 INVTX1_51_ (
		.in(in[51]),
		.out(INVTX1_51_out));

	INVTX1 INVTX1_52_ (
		.in(in[52]),
		.out(INVTX1_52_out));

	INVTX1 INVTX1_53_ (
		.in(in[53]),
		.out(INVTX1_53_out));

	INVTX1 INVTX1_54_ (
		.in(in[54]),
		.out(INVTX1_54_out));

	INVTX1 INVTX1_55_ (
		.in(in[55]),
		.out(INVTX1_55_out));

	INVTX1 INVTX1_56_ (
		.in(in[56]),
		.out(INVTX1_56_out));

	INVTX1 INVTX1_57_ (
		.in(in[57]),
		.out(INVTX1_57_out));

	INVTX1 INVTX1_58_ (
		.in(in[58]),
		.out(INVTX1_58_out));

	INVTX1 INVTX1_59_ (
		.in(in[59]),
		.out(INVTX1_59_out));

	INVTX1 INVTX1_60_ (
		.in(in[60]),
		.out(INVTX1_60_out));

	INVTX1 INVTX1_61_ (
		.in(in[61]),
		.out(INVTX1_61_out));

	INVTX1 INVTX1_62_ (
		.in(in[62]),
		.out(INVTX1_62_out));

	INVTX1 INVTX1_63_ (
		.in(in[63]),
		.out(INVTX1_63_out));

	INVTX1 INVTX1_64_ (
		.in(lut6_mux_basis_input2_mem1_62_out),
		.out(out));

	lut6_mux_basis_input2_mem1 mux_l1_in_0_ (
		.in({INVTX1_0_out, INVTX1_1_out}),
		.mem(sram[0]),
		.mem_inv(sram_inv[0]),
		.out(lut6_mux_basis_input2_mem1_0_out));

	lut6_mux_basis_input2_mem1 mux_l1_in_1_ (
		.in({INVTX1_2_out, INVTX1_3_out}),
		.mem(sram[0]),
		.mem_inv(sram_inv[0]),
		.out(lut6_mux_basis_input2_mem1_1_out));

	lut6_mux_basis_input2_mem1 mux_l1_in_2_ (
		.in({INVTX1_4_out, INVTX1_5_out}),
		.mem(sram[0]),
		.mem_inv(sram_inv[0]),
		.out(lut6_mux_basis_input2_mem1_2_out));

	lut6_mux_basis_input2_mem1 mux_l1_in_3_ (
		.in({INVTX1_6_out, INVTX1_7_out}),
		.mem(sram[0]),
		.mem_inv(sram_inv[0]),
		.out(lut6_mux_basis_input2_mem1_3_out));

	lut6_mux_basis_input2_mem1 mux_l1_in_4_ (
		.in({INVTX1_8_out, INVTX1_9_out}),
		.mem(sram[0]),
		.mem_inv(sram_inv[0]),
		.out(lut6_mux_basis_input2_mem1_4_out));

	lut6_mux_basis_input2_mem1 mux_l1_in_5_ (
		.in({INVTX1_10_out, INVTX1_11_out}),
		.mem(sram[0]),
		.mem_inv(sram_inv[0]),
		.out(lut6_mux_basis_input2_mem1_5_out));

	lut6_mux_basis_input2_mem1 mux_l1_in_6_ (
		.in({INVTX1_12_out, INVTX1_13_out}),
		.mem(sram[0]),
		.mem_inv(sram_inv[0]),
		.out(lut6_mux_basis_input2_mem1_6_out));

	lut6_mux_basis_input2_mem1 mux_l1_in_7_ (
		.in({INVTX1_14_out, INVTX1_15_out}),
		.mem(sram[0]),
		.mem_inv(sram_inv[0]),
		.out(lut6_mux_basis_input2_mem1_7_out));

	lut6_mux_basis_input2_mem1 mux_l1_in_8_ (
		.in({INVTX1_16_out, INVTX1_17_out}),
		.mem(sram[0]),
		.mem_inv(sram_inv[0]),
		.out(lut6_mux_basis_input2_mem1_8_out));

	lut6_mux_basis_input2_mem1 mux_l1_in_9_ (
		.in({INVTX1_18_out, INVTX1_19_out}),
		.mem(sram[0]),
		.mem_inv(sram_inv[0]),
		.out(lut6_mux_basis_input2_mem1_9_out));

	lut6_mux_basis_input2_mem1 mux_l1_in_10_ (
		.in({INVTX1_20_out, INVTX1_21_out}),
		.mem(sram[0]),
		.mem_inv(sram_inv[0]),
		.out(lut6_mux_basis_input2_mem1_10_out));

	lut6_mux_basis_input2_mem1 mux_l1_in_11_ (
		.in({INVTX1_22_out, INVTX1_23_out}),
		.mem(sram[0]),
		.mem_inv(sram_inv[0]),
		.out(lut6_mux_basis_input2_mem1_11_out));

	lut6_mux_basis_input2_mem1 mux_l1_in_12_ (
		.in({INVTX1_24_out, INVTX1_25_out}),
		.mem(sram[0]),
		.mem_inv(sram_inv[0]),
		.out(lut6_mux_basis_input2_mem1_12_out));

	lut6_mux_basis_input2_mem1 mux_l1_in_13_ (
		.in({INVTX1_26_out, INVTX1_27_out}),
		.mem(sram[0]),
		.mem_inv(sram_inv[0]),
		.out(lut6_mux_basis_input2_mem1_13_out));

	lut6_mux_basis_input2_mem1 mux_l1_in_14_ (
		.in({INVTX1_28_out, INVTX1_29_out}),
		.mem(sram[0]),
		.mem_inv(sram_inv[0]),
		.out(lut6_mux_basis_input2_mem1_14_out));

	lut6_mux_basis_input2_mem1 mux_l1_in_15_ (
		.in({INVTX1_30_out, INVTX1_31_out}),
		.mem(sram[0]),
		.mem_inv(sram_inv[0]),
		.out(lut6_mux_basis_input2_mem1_15_out));

	lut6_mux_basis_input2_mem1 mux_l1_in_16_ (
		.in({INVTX1_32_out, INVTX1_33_out}),
		.mem(sram[0]),
		.mem_inv(sram_inv[0]),
		.out(lut6_mux_basis_input2_mem1_16_out));

	lut6_mux_basis_input2_mem1 mux_l1_in_17_ (
		.in({INVTX1_34_out, INVTX1_35_out}),
		.mem(sram[0]),
		.mem_inv(sram_inv[0]),
		.out(lut6_mux_basis_input2_mem1_17_out));

	lut6_mux_basis_input2_mem1 mux_l1_in_18_ (
		.in({INVTX1_36_out, INVTX1_37_out}),
		.mem(sram[0]),
		.mem_inv(sram_inv[0]),
		.out(lut6_mux_basis_input2_mem1_18_out));

	lut6_mux_basis_input2_mem1 mux_l1_in_19_ (
		.in({INVTX1_38_out, INVTX1_39_out}),
		.mem(sram[0]),
		.mem_inv(sram_inv[0]),
		.out(lut6_mux_basis_input2_mem1_19_out));

	lut6_mux_basis_input2_mem1 mux_l1_in_20_ (
		.in({INVTX1_40_out, INVTX1_41_out}),
		.mem(sram[0]),
		.mem_inv(sram_inv[0]),
		.out(lut6_mux_basis_input2_mem1_20_out));

	lut6_mux_basis_input2_mem1 mux_l1_in_21_ (
		.in({INVTX1_42_out, INVTX1_43_out}),
		.mem(sram[0]),
		.mem_inv(sram_inv[0]),
		.out(lut6_mux_basis_input2_mem1_21_out));

	lut6_mux_basis_input2_mem1 mux_l1_in_22_ (
		.in({INVTX1_44_out, INVTX1_45_out}),
		.mem(sram[0]),
		.mem_inv(sram_inv[0]),
		.out(lut6_mux_basis_input2_mem1_22_out));

	lut6_mux_basis_input2_mem1 mux_l1_in_23_ (
		.in({INVTX1_46_out, INVTX1_47_out}),
		.mem(sram[0]),
		.mem_inv(sram_inv[0]),
		.out(lut6_mux_basis_input2_mem1_23_out));

	lut6_mux_basis_input2_mem1 mux_l1_in_24_ (
		.in({INVTX1_48_out, INVTX1_49_out}),
		.mem(sram[0]),
		.mem_inv(sram_inv[0]),
		.out(lut6_mux_basis_input2_mem1_24_out));

	lut6_mux_basis_input2_mem1 mux_l1_in_25_ (
		.in({INVTX1_50_out, INVTX1_51_out}),
		.mem(sram[0]),
		.mem_inv(sram_inv[0]),
		.out(lut6_mux_basis_input2_mem1_25_out));

	lut6_mux_basis_input2_mem1 mux_l1_in_26_ (
		.in({INVTX1_52_out, INVTX1_53_out}),
		.mem(sram[0]),
		.mem_inv(sram_inv[0]),
		.out(lut6_mux_basis_input2_mem1_26_out));

	lut6_mux_basis_input2_mem1 mux_l1_in_27_ (
		.in({INVTX1_54_out, INVTX1_55_out}),
		.mem(sram[0]),
		.mem_inv(sram_inv[0]),
		.out(lut6_mux_basis_input2_mem1_27_out));

	lut6_mux_basis_input2_mem1 mux_l1_in_28_ (
		.in({INVTX1_56_out, INVTX1_57_out}),
		.mem(sram[0]),
		.mem_inv(sram_inv[0]),
		.out(lut6_mux_basis_input2_mem1_28_out));

	lut6_mux_basis_input2_mem1 mux_l1_in_29_ (
		.in({INVTX1_58_out, INVTX1_59_out}),
		.mem(sram[0]),
		.mem_inv(sram_inv[0]),
		.out(lut6_mux_basis_input2_mem1_29_out));

	lut6_mux_basis_input2_mem1 mux_l1_in_30_ (
		.in({INVTX1_60_out, INVTX1_61_out}),
		.mem(sram[0]),
		.mem_inv(sram_inv[0]),
		.out(lut6_mux_basis_input2_mem1_30_out));

	lut6_mux_basis_input2_mem1 mux_l1_in_31_ (
		.in({INVTX1_62_out, INVTX1_63_out}),
		.mem(sram[0]),
		.mem_inv(sram_inv[0]),
		.out(lut6_mux_basis_input2_mem1_31_out));

	lut6_mux_basis_input2_mem1 mux_l2_in_0_ (
		.in({lut6_mux_basis_input2_mem1_0_out, lut6_mux_basis_input2_mem1_1_out}),
		.mem(sram[1]),
		.mem_inv(sram_inv[1]),
		.out(lut6_mux_basis_input2_mem1_32_out));

	lut6_mux_basis_input2_mem1 mux_l2_in_1_ (
		.in({lut6_mux_basis_input2_mem1_2_out, lut6_mux_basis_input2_mem1_3_out}),
		.mem(sram[1]),
		.mem_inv(sram_inv[1]),
		.out(lut6_mux_basis_input2_mem1_33_out));

	lut6_mux_basis_input2_mem1 mux_l2_in_2_ (
		.in({lut6_mux_basis_input2_mem1_4_out, lut6_mux_basis_input2_mem1_5_out}),
		.mem(sram[1]),
		.mem_inv(sram_inv[1]),
		.out(lut6_mux_basis_input2_mem1_34_out));

	lut6_mux_basis_input2_mem1 mux_l2_in_3_ (
		.in({lut6_mux_basis_input2_mem1_6_out, lut6_mux_basis_input2_mem1_7_out}),
		.mem(sram[1]),
		.mem_inv(sram_inv[1]),
		.out(lut6_mux_basis_input2_mem1_35_out));

	lut6_mux_basis_input2_mem1 mux_l2_in_4_ (
		.in({lut6_mux_basis_input2_mem1_8_out, lut6_mux_basis_input2_mem1_9_out}),
		.mem(sram[1]),
		.mem_inv(sram_inv[1]),
		.out(lut6_mux_basis_input2_mem1_36_out));

	lut6_mux_basis_input2_mem1 mux_l2_in_5_ (
		.in({lut6_mux_basis_input2_mem1_10_out, lut6_mux_basis_input2_mem1_11_out}),
		.mem(sram[1]),
		.mem_inv(sram_inv[1]),
		.out(lut6_mux_basis_input2_mem1_37_out));

	lut6_mux_basis_input2_mem1 mux_l2_in_6_ (
		.in({lut6_mux_basis_input2_mem1_12_out, lut6_mux_basis_input2_mem1_13_out}),
		.mem(sram[1]),
		.mem_inv(sram_inv[1]),
		.out(lut6_mux_basis_input2_mem1_38_out));

	lut6_mux_basis_input2_mem1 mux_l2_in_7_ (
		.in({lut6_mux_basis_input2_mem1_14_out, lut6_mux_basis_input2_mem1_15_out}),
		.mem(sram[1]),
		.mem_inv(sram_inv[1]),
		.out(lut6_mux_basis_input2_mem1_39_out));

	lut6_mux_basis_input2_mem1 mux_l2_in_8_ (
		.in({lut6_mux_basis_input2_mem1_16_out, lut6_mux_basis_input2_mem1_17_out}),
		.mem(sram[1]),
		.mem_inv(sram_inv[1]),
		.out(lut6_mux_basis_input2_mem1_40_out));

	lut6_mux_basis_input2_mem1 mux_l2_in_9_ (
		.in({lut6_mux_basis_input2_mem1_18_out, lut6_mux_basis_input2_mem1_19_out}),
		.mem(sram[1]),
		.mem_inv(sram_inv[1]),
		.out(lut6_mux_basis_input2_mem1_41_out));

	lut6_mux_basis_input2_mem1 mux_l2_in_10_ (
		.in({lut6_mux_basis_input2_mem1_20_out, lut6_mux_basis_input2_mem1_21_out}),
		.mem(sram[1]),
		.mem_inv(sram_inv[1]),
		.out(lut6_mux_basis_input2_mem1_42_out));

	lut6_mux_basis_input2_mem1 mux_l2_in_11_ (
		.in({lut6_mux_basis_input2_mem1_22_out, lut6_mux_basis_input2_mem1_23_out}),
		.mem(sram[1]),
		.mem_inv(sram_inv[1]),
		.out(lut6_mux_basis_input2_mem1_43_out));

	lut6_mux_basis_input2_mem1 mux_l2_in_12_ (
		.in({lut6_mux_basis_input2_mem1_24_out, lut6_mux_basis_input2_mem1_25_out}),
		.mem(sram[1]),
		.mem_inv(sram_inv[1]),
		.out(lut6_mux_basis_input2_mem1_44_out));

	lut6_mux_basis_input2_mem1 mux_l2_in_13_ (
		.in({lut6_mux_basis_input2_mem1_26_out, lut6_mux_basis_input2_mem1_27_out}),
		.mem(sram[1]),
		.mem_inv(sram_inv[1]),
		.out(lut6_mux_basis_input2_mem1_45_out));

	lut6_mux_basis_input2_mem1 mux_l2_in_14_ (
		.in({lut6_mux_basis_input2_mem1_28_out, lut6_mux_basis_input2_mem1_29_out}),
		.mem(sram[1]),
		.mem_inv(sram_inv[1]),
		.out(lut6_mux_basis_input2_mem1_46_out));

	lut6_mux_basis_input2_mem1 mux_l2_in_15_ (
		.in({lut6_mux_basis_input2_mem1_30_out, lut6_mux_basis_input2_mem1_31_out}),
		.mem(sram[1]),
		.mem_inv(sram_inv[1]),
		.out(lut6_mux_basis_input2_mem1_47_out));

	lut6_mux_basis_input2_mem1 mux_l3_in_0_ (
		.in({lut6_mux_basis_input2_mem1_32_out, lut6_mux_basis_input2_mem1_33_out}),
		.mem(sram[2]),
		.mem_inv(sram_inv[2]),
		.out(lut6_mux_basis_input2_mem1_48_out));

	lut6_mux_basis_input2_mem1 mux_l3_in_1_ (
		.in({lut6_mux_basis_input2_mem1_34_out, lut6_mux_basis_input2_mem1_35_out}),
		.mem(sram[2]),
		.mem_inv(sram_inv[2]),
		.out(lut6_mux_basis_input2_mem1_49_out));

	lut6_mux_basis_input2_mem1 mux_l3_in_2_ (
		.in({lut6_mux_basis_input2_mem1_36_out, lut6_mux_basis_input2_mem1_37_out}),
		.mem(sram[2]),
		.mem_inv(sram_inv[2]),
		.out(lut6_mux_basis_input2_mem1_50_out));

	lut6_mux_basis_input2_mem1 mux_l3_in_3_ (
		.in({lut6_mux_basis_input2_mem1_38_out, lut6_mux_basis_input2_mem1_39_out}),
		.mem(sram[2]),
		.mem_inv(sram_inv[2]),
		.out(lut6_mux_basis_input2_mem1_51_out));

	lut6_mux_basis_input2_mem1 mux_l3_in_4_ (
		.in({lut6_mux_basis_input2_mem1_40_out, lut6_mux_basis_input2_mem1_41_out}),
		.mem(sram[2]),
		.mem_inv(sram_inv[2]),
		.out(lut6_mux_basis_input2_mem1_52_out));

	lut6_mux_basis_input2_mem1 mux_l3_in_5_ (
		.in({lut6_mux_basis_input2_mem1_42_out, lut6_mux_basis_input2_mem1_43_out}),
		.mem(sram[2]),
		.mem_inv(sram_inv[2]),
		.out(lut6_mux_basis_input2_mem1_53_out));

	lut6_mux_basis_input2_mem1 mux_l3_in_6_ (
		.in({lut6_mux_basis_input2_mem1_44_out, lut6_mux_basis_input2_mem1_45_out}),
		.mem(sram[2]),
		.mem_inv(sram_inv[2]),
		.out(lut6_mux_basis_input2_mem1_54_out));

	lut6_mux_basis_input2_mem1 mux_l3_in_7_ (
		.in({lut6_mux_basis_input2_mem1_46_out, lut6_mux_basis_input2_mem1_47_out}),
		.mem(sram[2]),
		.mem_inv(sram_inv[2]),
		.out(lut6_mux_basis_input2_mem1_55_out));

	lut6_mux_basis_input2_mem1 mux_l4_in_0_ (
		.in({buf4_0_out, buf4_1_out}),
		.mem(sram[3]),
		.mem_inv(sram_inv[3]),
		.out(lut6_mux_basis_input2_mem1_56_out));

	lut6_mux_basis_input2_mem1 mux_l4_in_1_ (
		.in({buf4_2_out, buf4_3_out}),
		.mem(sram[3]),
		.mem_inv(sram_inv[3]),
		.out(lut6_mux_basis_input2_mem1_57_out));

	lut6_mux_basis_input2_mem1 mux_l4_in_2_ (
		.in({buf4_4_out, buf4_5_out}),
		.mem(sram[3]),
		.mem_inv(sram_inv[3]),
		.out(lut6_mux_basis_input2_mem1_58_out));

	lut6_mux_basis_input2_mem1 mux_l4_in_3_ (
		.in({buf4_6_out, buf4_7_out}),
		.mem(sram[3]),
		.mem_inv(sram_inv[3]),
		.out(lut6_mux_basis_input2_mem1_59_out));

	lut6_mux_basis_input2_mem1 mux_l5_in_0_ (
		.in({lut6_mux_basis_input2_mem1_56_out, lut6_mux_basis_input2_mem1_57_out}),
		.mem(sram[4]),
		.mem_inv(sram_inv[4]),
		.out(lut6_mux_basis_input2_mem1_60_out));

	lut6_mux_basis_input2_mem1 mux_l5_in_1_ (
		.in({lut6_mux_basis_input2_mem1_58_out, lut6_mux_basis_input2_mem1_59_out}),
		.mem(sram[4]),
		.mem_inv(sram_inv[4]),
		.out(lut6_mux_basis_input2_mem1_61_out));

	lut6_mux_basis_input2_mem1 mux_l6_in_0_ (
		.in({lut6_mux_basis_input2_mem1_60_out, lut6_mux_basis_input2_mem1_61_out}),
		.mem(sram[5]),
		.mem_inv(sram_inv[5]),
		.out(lut6_mux_basis_input2_mem1_62_out));

	buf4 buf4_0_ (
		.in(lut6_mux_basis_input2_mem1_48_out),
		.out(buf4_0_out));

	buf4 buf4_1_ (
		.in(lut6_mux_basis_input2_mem1_49_out),
		.out(buf4_1_out));

	buf4 buf4_2_ (
		.in(lut6_mux_basis_input2_mem1_50_out),
		.out(buf4_2_out));

	buf4 buf4_3_ (
		.in(lut6_mux_basis_input2_mem1_51_out),
		.out(buf4_3_out));

	buf4 buf4_4_ (
		.in(lut6_mux_basis_input2_mem1_52_out),
		.out(buf4_4_out));

	buf4 buf4_5_ (
		.in(lut6_mux_basis_input2_mem1_53_out),
		.out(buf4_5_out));

	buf4 buf4_6_ (
		.in(lut6_mux_basis_input2_mem1_54_out),
		.out(buf4_6_out));

	buf4 buf4_7_ (
		.in(lut6_mux_basis_input2_mem1_55_out),
		.out(buf4_7_out));

endmodule
// ----- END Verilog module for lut6_mux -----

//----- Default net type -----
`default_nettype none




