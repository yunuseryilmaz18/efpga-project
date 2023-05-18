//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Fabric Netlist Summary
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Wed May 17 00:09:22 2023
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

// ------ Include defines: preproc flags -----
`include "./fpga_defines.v"

// ------ Include user-defined netlists -----
`include "./openfpga_cell_library/dff.v"
`include "./openfpga_cell_library/gpio.v"
// ------ Include primitive module netlists -----
`include "./sub_module/inv_buf_passgate.v"
`include "./sub_module/arch_encoder.v"
`include "./sub_module/local_encoder.v"
`include "./sub_module/mux_primitives.v"
`include "./sub_module/muxes.v"
`include "./sub_module/luts.v"
`include "./sub_module/wires.v"
`include "./sub_module/memories.v"
`include "./sub_module/shift_register_banks.v"

// ------ Include logic block netlists -----
`include "./lb/logical_tile_io_mode_physical__iopad.v"
`include "./lb/logical_tile_io_mode_io_.v"
`include "./lb/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6.v"
`include "./lb/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff.v"
`include "./lb/logical_tile_clb_mode_default__fle_mode_physical__ble6.v"
`include "./lb/logical_tile_clb_mode_default__fle.v"
`include "./lb/logical_tile_clb_mode_clb_.v"
`include "./lb/grid_io_top.v"
`include "./lb/grid_io_right.v"
`include "./lb/grid_io_bottom.v"
`include "./lb/grid_io_left.v"
`include "./lb/grid_clb.v"

// ------ Include routing module netlists -----
`include "./routing/sb_0__0_.v"
`include "./routing/sb_0__1_.v"
`include "./routing/sb_0__2_.v"
`include "./routing/sb_1__0_.v"
`include "./routing/sb_1__1_.v"
`include "./routing/sb_1__2_.v"
`include "./routing/sb_2__0_.v"
`include "./routing/sb_2__1_.v"
`include "./routing/sb_2__2_.v"
`include "./routing/cbx_1__0_.v"
`include "./routing/cbx_1__1_.v"
`include "./routing/cbx_1__2_.v"
`include "./routing/cby_0__1_.v"
`include "./routing/cby_2__1_.v"

// ------ Include fabric top-level netlists -----
`include "./fpga_top.v"

