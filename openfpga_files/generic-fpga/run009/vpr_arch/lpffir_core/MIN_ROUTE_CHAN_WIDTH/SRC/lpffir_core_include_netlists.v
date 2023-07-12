//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Netlist Summary
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Mon Jul 10 14:22:37 2023
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

// ------ Include fabric top-level netlists -----
`include "./SRC/fabric_netlists.v"

`include "lpffir_core_output_verilog.v"

`include "./SRC/lpffir_core_top_formal_verification.v"
`include "./SRC/lpffir_core_formal_random_top_tb.v"
