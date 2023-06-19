//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for primitive pb_type: lut6
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Mon Jun 19 11:38:39 2023
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

//----- Default net type -----
`default_nettype wire

// ----- Verilog module for logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6 -----
module logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6(pReset,
                                                                                 prog_clk,
                                                                                 lut6_in,
                                                                                 ccff_head,
                                                                                 lut6_out,
                                                                                 ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] pReset;
//----- GLOBAL PORTS -----
input [0:0] prog_clk;
//----- INPUT PORTS -----
input [0:5] lut6_in;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] lut6_out;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:63] lut6_0_sram;
wire [0:63] lut6_0_sram_inv;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	lut6 lut6_0_ (
		.in(lut6_in[0:5]),
		.sram(lut6_0_sram[0:63]),
		.sram_inv(lut6_0_sram_inv[0:63]),
		.out(lut6_out));

	lut6_DFFR_mem lut6_DFFR_mem (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(ccff_head),
		.ccff_tail(ccff_tail),
		.mem_out(lut6_0_sram[0:63]),
		.mem_outb(lut6_0_sram_inv[0:63]));

endmodule
// ----- END Verilog module for logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6 -----

//----- Default net type -----
`default_nettype none



