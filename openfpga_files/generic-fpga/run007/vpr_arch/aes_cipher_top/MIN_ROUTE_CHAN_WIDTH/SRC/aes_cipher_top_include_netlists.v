//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Netlist Summary
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Wed Jul  5 15:21:31 2023
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

// ------ Include fabric top-level netlists -----
`include "./SRC/fabric_netlists.v"

`include "aes_cipher_top_output_verilog.v"

`include "./SRC/aes_cipher_top_top_formal_verification.v"
`include "./SRC/aes_cipher_top_formal_random_top_tb.v"
