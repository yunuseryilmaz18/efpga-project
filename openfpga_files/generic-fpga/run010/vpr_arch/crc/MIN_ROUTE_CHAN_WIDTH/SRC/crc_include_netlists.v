//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Netlist Summary
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Thu Jul 13 15:42:57 2023
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

// ------ Include fabric top-level netlists -----
`include "./SRC/fabric_netlists.v"

`include "crc_output_verilog.v"

`include "./SRC/crc_top_formal_verification.v"
`include "./SRC/crc_formal_random_top_tb.v"
