#############################################
#	Synopsys Design Constraints (SDC)
#	For FPGA fabric 
#	Description: Constrain for Timing/Power analysis on the mapped FPGA
#	Author: Xifan TANG 
#	Organization: University of Utah 
#	Date: Mon Jun 19 11:38:40 2023
#############################################

##################################################
# Create clock                                    
##################################################
create_clock clk[0] -period 1.999999943e-09 -waveform {0 9.999999717e-10}

##################################################
# Create input and output delays for used I/Os    
##################################################
set_input_delay -clock clk[0] -max 1.999999943e-09 gfpga_pad_GPIO_PAD[39]
set_input_delay -clock clk[0] -max 1.999999943e-09 gfpga_pad_GPIO_PAD[48]
set_output_delay -clock clk[0] -max 1.999999943e-09 gfpga_pad_GPIO_PAD[34]

##################################################
# Disable timing for unused I/Os    
##################################################
set_disable_timing gfpga_pad_GPIO_PAD[0]
set_disable_timing gfpga_pad_GPIO_PAD[1]
set_disable_timing gfpga_pad_GPIO_PAD[2]
set_disable_timing gfpga_pad_GPIO_PAD[3]
set_disable_timing gfpga_pad_GPIO_PAD[4]
set_disable_timing gfpga_pad_GPIO_PAD[5]
set_disable_timing gfpga_pad_GPIO_PAD[6]
set_disable_timing gfpga_pad_GPIO_PAD[7]
set_disable_timing gfpga_pad_GPIO_PAD[8]
set_disable_timing gfpga_pad_GPIO_PAD[9]
set_disable_timing gfpga_pad_GPIO_PAD[10]
set_disable_timing gfpga_pad_GPIO_PAD[11]
set_disable_timing gfpga_pad_GPIO_PAD[12]
set_disable_timing gfpga_pad_GPIO_PAD[13]
set_disable_timing gfpga_pad_GPIO_PAD[14]
set_disable_timing gfpga_pad_GPIO_PAD[15]
set_disable_timing gfpga_pad_GPIO_PAD[16]
set_disable_timing gfpga_pad_GPIO_PAD[17]
set_disable_timing gfpga_pad_GPIO_PAD[18]
set_disable_timing gfpga_pad_GPIO_PAD[19]
set_disable_timing gfpga_pad_GPIO_PAD[20]
set_disable_timing gfpga_pad_GPIO_PAD[21]
set_disable_timing gfpga_pad_GPIO_PAD[22]
set_disable_timing gfpga_pad_GPIO_PAD[23]
set_disable_timing gfpga_pad_GPIO_PAD[24]
set_disable_timing gfpga_pad_GPIO_PAD[25]
set_disable_timing gfpga_pad_GPIO_PAD[26]
set_disable_timing gfpga_pad_GPIO_PAD[27]
set_disable_timing gfpga_pad_GPIO_PAD[28]
set_disable_timing gfpga_pad_GPIO_PAD[29]
set_disable_timing gfpga_pad_GPIO_PAD[30]
set_disable_timing gfpga_pad_GPIO_PAD[31]
set_disable_timing gfpga_pad_GPIO_PAD[32]
set_disable_timing gfpga_pad_GPIO_PAD[33]
set_disable_timing gfpga_pad_GPIO_PAD[35]
set_disable_timing gfpga_pad_GPIO_PAD[36]
set_disable_timing gfpga_pad_GPIO_PAD[37]
set_disable_timing gfpga_pad_GPIO_PAD[38]
set_disable_timing gfpga_pad_GPIO_PAD[40]
set_disable_timing gfpga_pad_GPIO_PAD[41]
set_disable_timing gfpga_pad_GPIO_PAD[42]
set_disable_timing gfpga_pad_GPIO_PAD[43]
set_disable_timing gfpga_pad_GPIO_PAD[44]
set_disable_timing gfpga_pad_GPIO_PAD[45]
set_disable_timing gfpga_pad_GPIO_PAD[46]
set_disable_timing gfpga_pad_GPIO_PAD[47]
set_disable_timing gfpga_pad_GPIO_PAD[49]
set_disable_timing gfpga_pad_GPIO_PAD[50]
set_disable_timing gfpga_pad_GPIO_PAD[51]
set_disable_timing gfpga_pad_GPIO_PAD[52]
set_disable_timing gfpga_pad_GPIO_PAD[53]
set_disable_timing gfpga_pad_GPIO_PAD[54]
set_disable_timing gfpga_pad_GPIO_PAD[55]
set_disable_timing gfpga_pad_GPIO_PAD[56]
set_disable_timing gfpga_pad_GPIO_PAD[57]
set_disable_timing gfpga_pad_GPIO_PAD[58]
set_disable_timing gfpga_pad_GPIO_PAD[59]
set_disable_timing gfpga_pad_GPIO_PAD[60]
set_disable_timing gfpga_pad_GPIO_PAD[61]
set_disable_timing gfpga_pad_GPIO_PAD[62]
set_disable_timing gfpga_pad_GPIO_PAD[63]

##################################################
# Disable timing for global ports                 
##################################################
set_disable_timing set[0]
set_disable_timing reset[0]
set_disable_timing pReset[0]
set_disable_timing prog_clk[0]
set_disable_timing fpga_top/grid_io_bottom_*__*_/logical_tile_io_mode_io__*/logical_tile_io_mode_physical__iopad_*/GPIO_DFFR_mem/DFFR_*_/Q
set_disable_timing fpga_top/grid_io_bottom_*__*_/logical_tile_io_mode_io__*/logical_tile_io_mode_physical__iopad_*/GPIO_DFFR_mem/DFFR_*_/QN
set_disable_timing fpga_top/grid_io_right_*__*_/logical_tile_io_mode_io__*/logical_tile_io_mode_physical__iopad_*/GPIO_DFFR_mem/DFFR_*_/Q
set_disable_timing fpga_top/grid_io_right_*__*_/logical_tile_io_mode_io__*/logical_tile_io_mode_physical__iopad_*/GPIO_DFFR_mem/DFFR_*_/QN
set_disable_timing fpga_top/sb_*__*_/mem_bottom_track_*/DFFR_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_bottom_track_*/DFFR_*_/QN
set_disable_timing fpga_top/sb_*__*_/mem_bottom_track_*/DFFR_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_bottom_track_*/DFFR_*_/QN
set_disable_timing fpga_top/sb_*__*_/mem_left_track_*/DFFR_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_left_track_*/DFFR_*_/QN
set_disable_timing fpga_top/sb_*__*_/mem_left_track_*/DFFR_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_left_track_*/DFFR_*_/QN
set_disable_timing fpga_top/cbx_*__*_/mem_bottom_ipin_*/DFFR_*_/Q
set_disable_timing fpga_top/cbx_*__*_/mem_bottom_ipin_*/DFFR_*_/QN
set_disable_timing fpga_top/cbx_*__*_/mem_top_ipin_*/DFFR_*_/Q
set_disable_timing fpga_top/cbx_*__*_/mem_top_ipin_*/DFFR_*_/QN
set_disable_timing fpga_top/grid_io_top_*__*_/logical_tile_io_mode_io__*/logical_tile_io_mode_physical__iopad_*/GPIO_DFFR_mem/DFFR_*_/Q
set_disable_timing fpga_top/grid_io_top_*__*_/logical_tile_io_mode_io__*/logical_tile_io_mode_physical__iopad_*/GPIO_DFFR_mem/DFFR_*_/QN
set_disable_timing fpga_top/sb_*__*_/mem_right_track_*/DFFR_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_right_track_*/DFFR_*_/QN
set_disable_timing fpga_top/sb_*__*_/mem_right_track_*/DFFR_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_right_track_*/DFFR_*_/QN
set_disable_timing fpga_top/sb_*__*_/mem_bottom_track_*/DFFR_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_bottom_track_*/DFFR_*_/QN
set_disable_timing fpga_top/sb_*__*_/mem_left_track_*/DFFR_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_left_track_*/DFFR_*_/QN
set_disable_timing fpga_top/sb_*__*_/mem_left_track_*/DFFR_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_left_track_*/DFFR_*_/QN
set_disable_timing fpga_top/sb_*__*_/mem_right_track_*/DFFR_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_right_track_*/DFFR_*_/QN
set_disable_timing fpga_top/sb_*__*_/mem_right_track_*/DFFR_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_right_track_*/DFFR_*_/QN
set_disable_timing fpga_top/sb_*__*_/mem_bottom_track_*/DFFR_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_bottom_track_*/DFFR_*_/QN
set_disable_timing fpga_top/sb_*__*_/mem_top_track_*/DFFR_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_top_track_*/DFFR_*_/QN
set_disable_timing fpga_top/sb_*__*_/mem_right_track_*/DFFR_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_right_track_*/DFFR_*_/QN
set_disable_timing fpga_top/sb_*__*_/mem_right_track_*/DFFR_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_right_track_*/DFFR_*_/QN
set_disable_timing fpga_top/sb_*__*_/mem_bottom_track_*/DFFR_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_bottom_track_*/DFFR_*_/QN
set_disable_timing fpga_top/sb_*__*_/mem_bottom_track_*/DFFR_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_bottom_track_*/DFFR_*_/QN
set_disable_timing fpga_top/cby_*__*_/mem_left_ipin_*/DFFR_*_/Q
set_disable_timing fpga_top/cby_*__*_/mem_left_ipin_*/DFFR_*_/QN
set_disable_timing fpga_top/cby_*__*_/mem_right_ipin_*/DFFR_*_/Q
set_disable_timing fpga_top/cby_*__*_/mem_right_ipin_*/DFFR_*_/QN
set_disable_timing fpga_top/grid_io_left_*__*_/logical_tile_io_mode_io__*/logical_tile_io_mode_physical__iopad_*/GPIO_DFFR_mem/DFFR_*_/Q
set_disable_timing fpga_top/grid_io_left_*__*_/logical_tile_io_mode_io__*/logical_tile_io_mode_physical__iopad_*/GPIO_DFFR_mem/DFFR_*_/QN
set_disable_timing fpga_top/sb_*__*_/mem_top_track_*/DFFR_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_top_track_*/DFFR_*_/QN
set_disable_timing fpga_top/sb_*__*_/mem_right_track_*/DFFR_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_right_track_*/DFFR_*_/QN
set_disable_timing fpga_top/sb_*__*_/mem_top_track_*/DFFR_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_top_track_*/DFFR_*_/QN
set_disable_timing fpga_top/sb_*__*_/mem_top_track_*/DFFR_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_top_track_*/DFFR_*_/QN
set_disable_timing fpga_top/sb_*__*_/mem_right_track_*/DFFR_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_right_track_*/DFFR_*_/QN
set_disable_timing fpga_top/sb_*__*_/mem_left_track_*/DFFR_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_left_track_*/DFFR_*_/QN
set_disable_timing fpga_top/sb_*__*_/mem_left_track_*/DFFR_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_left_track_*/DFFR_*_/QN
set_disable_timing fpga_top/cbx_*__*_/mem_bottom_ipin_*/DFFR_*_/Q
set_disable_timing fpga_top/cbx_*__*_/mem_bottom_ipin_*/DFFR_*_/QN
set_disable_timing fpga_top/cbx_*__*_/mem_top_ipin_*/DFFR_*_/Q
set_disable_timing fpga_top/cbx_*__*_/mem_top_ipin_*/DFFR_*_/QN
set_disable_timing fpga_top/grid_clb_*__*_/logical_tile_clb_mode_clb__*/logical_tile_clb_mode_default__fle_*/logical_tile_clb_mode_default__fle_mode_physical__ble*_*/logical_tile_clb_mode_default__fle_mode_physical__ble*_mode_default__lut*_*/lut*_DFFR_mem/DFFR_*_/Q
set_disable_timing fpga_top/grid_clb_*__*_/logical_tile_clb_mode_clb__*/logical_tile_clb_mode_default__fle_*/logical_tile_clb_mode_default__fle_mode_physical__ble*_*/logical_tile_clb_mode_default__fle_mode_physical__ble*_mode_default__lut*_*/lut*_DFFR_mem/DFFR_*_/QN
set_disable_timing fpga_top/grid_clb_*__*_/logical_tile_clb_mode_clb__*/logical_tile_clb_mode_default__fle_*/logical_tile_clb_mode_default__fle_mode_physical__ble*_*/mem_ble*_out_*/DFFR_*_/Q
set_disable_timing fpga_top/grid_clb_*__*_/logical_tile_clb_mode_clb__*/logical_tile_clb_mode_default__fle_*/logical_tile_clb_mode_default__fle_mode_physical__ble*_*/mem_ble*_out_*/DFFR_*_/QN
set_disable_timing fpga_top/grid_clb_*__*_/logical_tile_clb_mode_clb__*/mem_fle_*_in_*/DFFR_*_/Q
set_disable_timing fpga_top/grid_clb_*__*_/logical_tile_clb_mode_clb__*/mem_fle_*_in_*/DFFR_*_/QN
set_disable_timing fpga_top/sb_*__*_/mem_top_track_*/DFFR_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_top_track_*/DFFR_*_/QN
set_disable_timing fpga_top/sb_*__*_/mem_top_track_*/DFFR_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_top_track_*/DFFR_*_/QN
set_disable_timing fpga_top/sb_*__*_/mem_left_track_*/DFFR_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_left_track_*/DFFR_*_/QN
set_disable_timing fpga_top/cby_*__*_/mem_left_ipin_*/DFFR_*_/Q
set_disable_timing fpga_top/cby_*__*_/mem_left_ipin_*/DFFR_*_/QN
set_disable_timing fpga_top/cby_*__*_/mem_right_ipin_*/DFFR_*_/Q
set_disable_timing fpga_top/cby_*__*_/mem_right_ipin_*/DFFR_*_/QN
set_disable_timing fpga_top/sb_*__*_/mem_top_track_*/DFFR_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_top_track_*/DFFR_*_/QN
set_disable_timing fpga_top/sb_*__*_/mem_top_track_*/DFFR_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_top_track_*/DFFR_*_/QN
set_disable_timing fpga_top/sb_*__*_/mem_bottom_track_*/DFFR_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_bottom_track_*/DFFR_*_/QN
set_disable_timing fpga_top/sb_*__*_/mem_bottom_track_*/DFFR_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_bottom_track_*/DFFR_*_/QN
set_disable_timing fpga_top/sb_*__*_/mem_left_track_*/DFFR_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_left_track_*/DFFR_*_/QN
set_disable_timing fpga_top/cbx_*__*_/mem_bottom_ipin_*/DFFR_*_/Q
set_disable_timing fpga_top/cbx_*__*_/mem_bottom_ipin_*/DFFR_*_/QN
set_disable_timing fpga_top/cbx_*__*_/mem_top_ipin_*/DFFR_*_/Q
set_disable_timing fpga_top/cbx_*__*_/mem_top_ipin_*/DFFR_*_/QN
set_disable_timing fpga_top/sb_*__*_/mem_top_track_*/DFFR_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_top_track_*/DFFR_*_/QN
set_disable_timing fpga_top/sb_*__*_/mem_top_track_*/DFFR_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_top_track_*/DFFR_*_/QN
set_disable_timing fpga_top/sb_*__*_/mem_right_track_*/DFFR_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_right_track_*/DFFR_*_/QN
set_disable_timing fpga_top/sb_*__*_/mem_right_track_*/DFFR_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_right_track_*/DFFR_*_/QN
set_disable_timing fpga_top/sb_*__*_/mem_bottom_track_*/DFFR_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_bottom_track_*/DFFR_*_/QN
set_disable_timing fpga_top/sb_*__*_/mem_bottom_track_*/DFFR_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_bottom_track_*/DFFR_*_/QN
set_disable_timing fpga_top/sb_*__*_/mem_left_track_*/DFFR_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_left_track_*/DFFR_*_/QN
set_disable_timing fpga_top/sb_*__*_/mem_left_track_*/DFFR_*_/Q
set_disable_timing fpga_top/sb_*__*_/mem_left_track_*/DFFR_*_/QN
##################################################
# Disable timing for Connection block cbx_1__0_
##################################################
set_disable_timing cbx_1__0_/chanx_left_in[0]
set_disable_timing cbx_1__0_/chanx_right_in[0]
set_disable_timing cbx_1__0_/chanx_right_in[1]
set_disable_timing cbx_1__0_/chanx_left_in[2]
set_disable_timing cbx_1__0_/chanx_right_in[2]
set_disable_timing cbx_1__0_/chanx_left_in[3]
set_disable_timing cbx_1__0_/chanx_right_in[3]
set_disable_timing cbx_1__0_/chanx_left_in[4]
set_disable_timing cbx_1__0_/chanx_right_in[4]
set_disable_timing cbx_1__0_/chanx_left_out[0]
set_disable_timing cbx_1__0_/chanx_right_out[0]
set_disable_timing cbx_1__0_/chanx_right_out[1]
set_disable_timing cbx_1__0_/chanx_left_out[2]
set_disable_timing cbx_1__0_/chanx_right_out[2]
set_disable_timing cbx_1__0_/chanx_left_out[3]
set_disable_timing cbx_1__0_/chanx_right_out[3]
set_disable_timing cbx_1__0_/chanx_left_out[4]
set_disable_timing cbx_1__0_/chanx_right_out[4]
set_disable_timing cbx_1__0_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_2_[0]
set_disable_timing cbx_1__0_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_6_[0]
set_disable_timing cbx_1__0_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_10_[0]
set_disable_timing cbx_1__0_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_14_[0]
set_disable_timing cbx_1__0_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_18_[0]
set_disable_timing cbx_1__0_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_22_[0]
set_disable_timing cbx_1__0_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_26_[0]
set_disable_timing cbx_1__0_/bottom_grid_top_width_0_height_0_subtile_0__pin_outpad_0_[0]
set_disable_timing cbx_1__0_/bottom_grid_top_width_0_height_0_subtile_1__pin_outpad_0_[0]
set_disable_timing cbx_1__0_/bottom_grid_top_width_0_height_0_subtile_2__pin_outpad_0_[0]
set_disable_timing cbx_1__0_/bottom_grid_top_width_0_height_0_subtile_3__pin_outpad_0_[0]
set_disable_timing cbx_1__0_/bottom_grid_top_width_0_height_0_subtile_4__pin_outpad_0_[0]
set_disable_timing cbx_1__0_/bottom_grid_top_width_0_height_0_subtile_5__pin_outpad_0_[0]
set_disable_timing cbx_1__0_/bottom_grid_top_width_0_height_0_subtile_6__pin_outpad_0_[0]
set_disable_timing cbx_1__0_/bottom_grid_top_width_0_height_0_subtile_7__pin_outpad_0_[0]
set_disable_timing cbx_1__0_/mux_bottom_ipin_0/in[1]
set_disable_timing cbx_1__0_/mux_bottom_ipin_5/in[1]
set_disable_timing cbx_1__0_/mux_top_ipin_3/in[1]
set_disable_timing cbx_1__0_/mux_bottom_ipin_0/in[0]
set_disable_timing cbx_1__0_/mux_bottom_ipin_5/in[0]
set_disable_timing cbx_1__0_/mux_top_ipin_3/in[0]
set_disable_timing cbx_1__0_/mux_bottom_ipin_1/in[1]
set_disable_timing cbx_1__0_/mux_bottom_ipin_6/in[1]
set_disable_timing cbx_1__0_/mux_top_ipin_4/in[1]
set_disable_timing cbx_1__0_/mux_bottom_ipin_1/in[0]
set_disable_timing cbx_1__0_/mux_bottom_ipin_6/in[0]
set_disable_timing cbx_1__0_/mux_top_ipin_4/in[0]
set_disable_timing cbx_1__0_/mux_bottom_ipin_2/in[1]
set_disable_timing cbx_1__0_/mux_top_ipin_0/in[1]
set_disable_timing cbx_1__0_/mux_top_ipin_5/in[1]
set_disable_timing cbx_1__0_/mux_bottom_ipin_2/in[0]
set_disable_timing cbx_1__0_/mux_top_ipin_0/in[0]
set_disable_timing cbx_1__0_/mux_top_ipin_5/in[0]
set_disable_timing cbx_1__0_/mux_bottom_ipin_3/in[1]
set_disable_timing cbx_1__0_/mux_top_ipin_1/in[1]
set_disable_timing cbx_1__0_/mux_top_ipin_6/in[1]
set_disable_timing cbx_1__0_/mux_bottom_ipin_3/in[0]
set_disable_timing cbx_1__0_/mux_top_ipin_1/in[0]
set_disable_timing cbx_1__0_/mux_top_ipin_6/in[0]
set_disable_timing cbx_1__0_/mux_bottom_ipin_4/in[1]
set_disable_timing cbx_1__0_/mux_top_ipin_2/in[1]
set_disable_timing cbx_1__0_/mux_top_ipin_7/in[1]
set_disable_timing cbx_1__0_/mux_bottom_ipin_4/in[0]
set_disable_timing cbx_1__0_/mux_top_ipin_2/in[0]
set_disable_timing cbx_1__0_/mux_top_ipin_7/in[0]
##################################################
# Disable timing for Connection block cbx_1__1_
##################################################
set_disable_timing cbx_1__1_/chanx_left_in[0]
set_disable_timing cbx_1__1_/chanx_right_in[0]
set_disable_timing cbx_1__1_/chanx_left_in[1]
set_disable_timing cbx_1__1_/chanx_right_in[1]
set_disable_timing cbx_1__1_/chanx_left_in[2]
set_disable_timing cbx_1__1_/chanx_right_in[2]
set_disable_timing cbx_1__1_/chanx_left_in[3]
set_disable_timing cbx_1__1_/chanx_right_in[3]
set_disable_timing cbx_1__1_/chanx_left_in[4]
set_disable_timing cbx_1__1_/chanx_right_in[4]
set_disable_timing cbx_1__1_/chanx_left_out[0]
set_disable_timing cbx_1__1_/chanx_right_out[0]
set_disable_timing cbx_1__1_/chanx_left_out[1]
set_disable_timing cbx_1__1_/chanx_right_out[1]
set_disable_timing cbx_1__1_/chanx_left_out[2]
set_disable_timing cbx_1__1_/chanx_right_out[2]
set_disable_timing cbx_1__1_/chanx_left_out[3]
set_disable_timing cbx_1__1_/chanx_right_out[3]
set_disable_timing cbx_1__1_/chanx_left_out[4]
set_disable_timing cbx_1__1_/chanx_right_out[4]
set_disable_timing cbx_1__1_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_2_[0]
set_disable_timing cbx_1__1_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_6_[0]
set_disable_timing cbx_1__1_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_10_[0]
set_disable_timing cbx_1__1_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_14_[0]
set_disable_timing cbx_1__1_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_18_[0]
set_disable_timing cbx_1__1_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_22_[0]
set_disable_timing cbx_1__1_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_26_[0]
set_disable_timing cbx_1__1_/bottom_grid_top_width_0_height_0_subtile_0__pin_I_0_[0]
set_disable_timing cbx_1__1_/bottom_grid_top_width_0_height_0_subtile_0__pin_I_4_[0]
set_disable_timing cbx_1__1_/bottom_grid_top_width_0_height_0_subtile_0__pin_I_8_[0]
set_disable_timing cbx_1__1_/bottom_grid_top_width_0_height_0_subtile_0__pin_I_12_[0]
set_disable_timing cbx_1__1_/bottom_grid_top_width_0_height_0_subtile_0__pin_I_16_[0]
set_disable_timing cbx_1__1_/bottom_grid_top_width_0_height_0_subtile_0__pin_I_20_[0]
set_disable_timing cbx_1__1_/bottom_grid_top_width_0_height_0_subtile_0__pin_I_24_[0]
set_disable_timing cbx_1__1_/bottom_grid_top_width_0_height_0_subtile_0__pin_I_28_[0]
set_disable_timing cbx_1__1_/bottom_grid_top_width_0_height_0_subtile_0__pin_clk_0_[0]
set_disable_timing cbx_1__1_/mux_bottom_ipin_0/in[1]
set_disable_timing cbx_1__1_/mux_bottom_ipin_5/in[1]
set_disable_timing cbx_1__1_/mux_top_ipin_3/in[1]
set_disable_timing cbx_1__1_/mux_top_ipin_8/in[1]
set_disable_timing cbx_1__1_/mux_bottom_ipin_0/in[0]
set_disable_timing cbx_1__1_/mux_bottom_ipin_5/in[0]
set_disable_timing cbx_1__1_/mux_top_ipin_3/in[0]
set_disable_timing cbx_1__1_/mux_top_ipin_8/in[0]
set_disable_timing cbx_1__1_/mux_bottom_ipin_1/in[1]
set_disable_timing cbx_1__1_/mux_bottom_ipin_6/in[1]
set_disable_timing cbx_1__1_/mux_top_ipin_4/in[1]
set_disable_timing cbx_1__1_/mux_bottom_ipin_1/in[0]
set_disable_timing cbx_1__1_/mux_bottom_ipin_6/in[0]
set_disable_timing cbx_1__1_/mux_top_ipin_4/in[0]
set_disable_timing cbx_1__1_/mux_bottom_ipin_2/in[1]
set_disable_timing cbx_1__1_/mux_top_ipin_0/in[1]
set_disable_timing cbx_1__1_/mux_top_ipin_5/in[1]
set_disable_timing cbx_1__1_/mux_bottom_ipin_2/in[0]
set_disable_timing cbx_1__1_/mux_top_ipin_0/in[0]
set_disable_timing cbx_1__1_/mux_top_ipin_5/in[0]
set_disable_timing cbx_1__1_/mux_bottom_ipin_3/in[1]
set_disable_timing cbx_1__1_/mux_top_ipin_1/in[1]
set_disable_timing cbx_1__1_/mux_top_ipin_6/in[1]
set_disable_timing cbx_1__1_/mux_bottom_ipin_3/in[0]
set_disable_timing cbx_1__1_/mux_top_ipin_1/in[0]
set_disable_timing cbx_1__1_/mux_top_ipin_6/in[0]
set_disable_timing cbx_1__1_/mux_bottom_ipin_4/in[1]
set_disable_timing cbx_1__1_/mux_top_ipin_2/in[1]
set_disable_timing cbx_1__1_/mux_top_ipin_7/in[1]
set_disable_timing cbx_1__1_/mux_bottom_ipin_4/in[0]
set_disable_timing cbx_1__1_/mux_top_ipin_2/in[0]
set_disable_timing cbx_1__1_/mux_top_ipin_7/in[0]
##################################################
# Disable timing for Connection block cbx_1__2_
##################################################
set_disable_timing cbx_1__2_/chanx_left_in[0]
set_disable_timing cbx_1__2_/chanx_right_in[0]
set_disable_timing cbx_1__2_/chanx_left_in[1]
set_disable_timing cbx_1__2_/chanx_right_in[1]
set_disable_timing cbx_1__2_/chanx_left_in[2]
set_disable_timing cbx_1__2_/chanx_right_in[2]
set_disable_timing cbx_1__2_/chanx_left_in[3]
set_disable_timing cbx_1__2_/chanx_right_in[3]
set_disable_timing cbx_1__2_/chanx_left_in[4]
set_disable_timing cbx_1__2_/chanx_right_in[4]
set_disable_timing cbx_1__2_/chanx_left_out[0]
set_disable_timing cbx_1__2_/chanx_right_out[0]
set_disable_timing cbx_1__2_/chanx_left_out[1]
set_disable_timing cbx_1__2_/chanx_right_out[1]
set_disable_timing cbx_1__2_/chanx_left_out[2]
set_disable_timing cbx_1__2_/chanx_right_out[2]
set_disable_timing cbx_1__2_/chanx_left_out[3]
set_disable_timing cbx_1__2_/chanx_right_out[3]
set_disable_timing cbx_1__2_/chanx_left_out[4]
set_disable_timing cbx_1__2_/chanx_right_out[4]
set_disable_timing cbx_1__2_/top_grid_bottom_width_0_height_0_subtile_0__pin_outpad_0_[0]
set_disable_timing cbx_1__2_/top_grid_bottom_width_0_height_0_subtile_1__pin_outpad_0_[0]
set_disable_timing cbx_1__2_/top_grid_bottom_width_0_height_0_subtile_2__pin_outpad_0_[0]
set_disable_timing cbx_1__2_/top_grid_bottom_width_0_height_0_subtile_3__pin_outpad_0_[0]
set_disable_timing cbx_1__2_/top_grid_bottom_width_0_height_0_subtile_4__pin_outpad_0_[0]
set_disable_timing cbx_1__2_/top_grid_bottom_width_0_height_0_subtile_5__pin_outpad_0_[0]
set_disable_timing cbx_1__2_/top_grid_bottom_width_0_height_0_subtile_6__pin_outpad_0_[0]
set_disable_timing cbx_1__2_/top_grid_bottom_width_0_height_0_subtile_7__pin_outpad_0_[0]
set_disable_timing cbx_1__2_/bottom_grid_top_width_0_height_0_subtile_0__pin_I_0_[0]
set_disable_timing cbx_1__2_/bottom_grid_top_width_0_height_0_subtile_0__pin_I_4_[0]
set_disable_timing cbx_1__2_/bottom_grid_top_width_0_height_0_subtile_0__pin_I_8_[0]
set_disable_timing cbx_1__2_/bottom_grid_top_width_0_height_0_subtile_0__pin_I_12_[0]
set_disable_timing cbx_1__2_/bottom_grid_top_width_0_height_0_subtile_0__pin_I_16_[0]
set_disable_timing cbx_1__2_/bottom_grid_top_width_0_height_0_subtile_0__pin_I_20_[0]
set_disable_timing cbx_1__2_/bottom_grid_top_width_0_height_0_subtile_0__pin_I_24_[0]
set_disable_timing cbx_1__2_/bottom_grid_top_width_0_height_0_subtile_0__pin_I_28_[0]
set_disable_timing cbx_1__2_/bottom_grid_top_width_0_height_0_subtile_0__pin_clk_0_[0]
set_disable_timing cbx_1__2_/mux_bottom_ipin_0/in[1]
set_disable_timing cbx_1__2_/mux_bottom_ipin_5/in[1]
set_disable_timing cbx_1__2_/mux_top_ipin_2/in[1]
set_disable_timing cbx_1__2_/mux_top_ipin_7/in[1]
set_disable_timing cbx_1__2_/mux_bottom_ipin_0/in[0]
set_disable_timing cbx_1__2_/mux_bottom_ipin_5/in[0]
set_disable_timing cbx_1__2_/mux_top_ipin_2/in[0]
set_disable_timing cbx_1__2_/mux_top_ipin_7/in[0]
set_disable_timing cbx_1__2_/mux_bottom_ipin_1/in[1]
set_disable_timing cbx_1__2_/mux_bottom_ipin_6/in[1]
set_disable_timing cbx_1__2_/mux_top_ipin_3/in[1]
set_disable_timing cbx_1__2_/mux_top_ipin_8/in[1]
set_disable_timing cbx_1__2_/mux_bottom_ipin_1/in[0]
set_disable_timing cbx_1__2_/mux_bottom_ipin_6/in[0]
set_disable_timing cbx_1__2_/mux_top_ipin_3/in[0]
set_disable_timing cbx_1__2_/mux_top_ipin_8/in[0]
set_disable_timing cbx_1__2_/mux_bottom_ipin_2/in[1]
set_disable_timing cbx_1__2_/mux_bottom_ipin_7/in[1]
set_disable_timing cbx_1__2_/mux_top_ipin_4/in[1]
set_disable_timing cbx_1__2_/mux_bottom_ipin_2/in[0]
set_disable_timing cbx_1__2_/mux_bottom_ipin_7/in[0]
set_disable_timing cbx_1__2_/mux_top_ipin_4/in[0]
set_disable_timing cbx_1__2_/mux_bottom_ipin_3/in[1]
set_disable_timing cbx_1__2_/mux_top_ipin_0/in[1]
set_disable_timing cbx_1__2_/mux_top_ipin_5/in[1]
set_disable_timing cbx_1__2_/mux_bottom_ipin_3/in[0]
set_disable_timing cbx_1__2_/mux_top_ipin_0/in[0]
set_disable_timing cbx_1__2_/mux_top_ipin_5/in[0]
set_disable_timing cbx_1__2_/mux_bottom_ipin_4/in[1]
set_disable_timing cbx_1__2_/mux_top_ipin_1/in[1]
set_disable_timing cbx_1__2_/mux_top_ipin_6/in[1]
set_disable_timing cbx_1__2_/mux_bottom_ipin_4/in[0]
set_disable_timing cbx_1__2_/mux_top_ipin_1/in[0]
set_disable_timing cbx_1__2_/mux_top_ipin_6/in[0]
##################################################
# Disable timing for Connection block cbx_1__0_
##################################################
set_disable_timing cbx_2__0_/chanx_left_in[0]
set_disable_timing cbx_2__0_/chanx_right_in[0]
set_disable_timing cbx_2__0_/chanx_left_in[1]
set_disable_timing cbx_2__0_/chanx_right_in[1]
set_disable_timing cbx_2__0_/chanx_right_in[2]
set_disable_timing cbx_2__0_/chanx_left_in[3]
set_disable_timing cbx_2__0_/chanx_right_in[3]
set_disable_timing cbx_2__0_/chanx_left_out[0]
set_disable_timing cbx_2__0_/chanx_right_out[0]
set_disable_timing cbx_2__0_/chanx_left_out[1]
set_disable_timing cbx_2__0_/chanx_right_out[1]
set_disable_timing cbx_2__0_/chanx_right_out[2]
set_disable_timing cbx_2__0_/chanx_left_out[3]
set_disable_timing cbx_2__0_/chanx_right_out[3]
set_disable_timing cbx_2__0_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_2_[0]
set_disable_timing cbx_2__0_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_6_[0]
set_disable_timing cbx_2__0_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_14_[0]
set_disable_timing cbx_2__0_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_22_[0]
set_disable_timing cbx_2__0_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_26_[0]
set_disable_timing cbx_2__0_/bottom_grid_top_width_0_height_0_subtile_0__pin_outpad_0_[0]
set_disable_timing cbx_2__0_/bottom_grid_top_width_0_height_0_subtile_1__pin_outpad_0_[0]
set_disable_timing cbx_2__0_/bottom_grid_top_width_0_height_0_subtile_3__pin_outpad_0_[0]
set_disable_timing cbx_2__0_/bottom_grid_top_width_0_height_0_subtile_4__pin_outpad_0_[0]
set_disable_timing cbx_2__0_/bottom_grid_top_width_0_height_0_subtile_5__pin_outpad_0_[0]
set_disable_timing cbx_2__0_/bottom_grid_top_width_0_height_0_subtile_6__pin_outpad_0_[0]
set_disable_timing cbx_2__0_/bottom_grid_top_width_0_height_0_subtile_7__pin_outpad_0_[0]
set_disable_timing cbx_2__0_/mux_bottom_ipin_0/in[1]
set_disable_timing cbx_2__0_/mux_bottom_ipin_5/in[1]
set_disable_timing cbx_2__0_/mux_top_ipin_3/in[1]
set_disable_timing cbx_2__0_/mux_bottom_ipin_0/in[0]
set_disable_timing cbx_2__0_/mux_bottom_ipin_5/in[0]
set_disable_timing cbx_2__0_/mux_top_ipin_3/in[0]
set_disable_timing cbx_2__0_/mux_bottom_ipin_1/in[1]
set_disable_timing cbx_2__0_/mux_bottom_ipin_6/in[1]
set_disable_timing cbx_2__0_/mux_top_ipin_4/in[1]
set_disable_timing cbx_2__0_/mux_bottom_ipin_1/in[0]
set_disable_timing cbx_2__0_/mux_bottom_ipin_6/in[0]
set_disable_timing cbx_2__0_/mux_top_ipin_4/in[0]
set_disable_timing cbx_2__0_/mux_top_ipin_0/in[1]
set_disable_timing cbx_2__0_/mux_top_ipin_5/in[1]
set_disable_timing cbx_2__0_/mux_bottom_ipin_2/in[0]
set_disable_timing cbx_2__0_/mux_top_ipin_0/in[0]
set_disable_timing cbx_2__0_/mux_top_ipin_5/in[0]
set_disable_timing cbx_2__0_/mux_bottom_ipin_3/in[1]
set_disable_timing cbx_2__0_/mux_top_ipin_1/in[1]
set_disable_timing cbx_2__0_/mux_top_ipin_6/in[1]
set_disable_timing cbx_2__0_/mux_bottom_ipin_3/in[0]
set_disable_timing cbx_2__0_/mux_top_ipin_1/in[0]
set_disable_timing cbx_2__0_/mux_top_ipin_6/in[0]
set_disable_timing cbx_2__0_/mux_bottom_ipin_4/in[1]
set_disable_timing cbx_2__0_/mux_top_ipin_7/in[1]
set_disable_timing cbx_2__0_/mux_top_ipin_2/in[0]
set_disable_timing cbx_2__0_/mux_top_ipin_7/in[0]
##################################################
# Disable timing for Connection block cbx_1__1_
##################################################
set_disable_timing cbx_2__1_/chanx_left_in[0]
set_disable_timing cbx_2__1_/chanx_right_in[0]
set_disable_timing cbx_2__1_/chanx_left_in[1]
set_disable_timing cbx_2__1_/chanx_right_in[1]
set_disable_timing cbx_2__1_/chanx_left_in[2]
set_disable_timing cbx_2__1_/chanx_right_in[2]
set_disable_timing cbx_2__1_/chanx_left_in[3]
set_disable_timing cbx_2__1_/chanx_left_in[4]
set_disable_timing cbx_2__1_/chanx_right_in[4]
set_disable_timing cbx_2__1_/chanx_left_out[0]
set_disable_timing cbx_2__1_/chanx_right_out[0]
set_disable_timing cbx_2__1_/chanx_left_out[1]
set_disable_timing cbx_2__1_/chanx_right_out[1]
set_disable_timing cbx_2__1_/chanx_left_out[2]
set_disable_timing cbx_2__1_/chanx_right_out[2]
set_disable_timing cbx_2__1_/chanx_left_out[3]
set_disable_timing cbx_2__1_/chanx_left_out[4]
set_disable_timing cbx_2__1_/chanx_right_out[4]
set_disable_timing cbx_2__1_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_2_[0]
set_disable_timing cbx_2__1_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_6_[0]
set_disable_timing cbx_2__1_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_10_[0]
set_disable_timing cbx_2__1_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_14_[0]
set_disable_timing cbx_2__1_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_18_[0]
set_disable_timing cbx_2__1_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_22_[0]
set_disable_timing cbx_2__1_/top_grid_bottom_width_0_height_0_subtile_0__pin_I_26_[0]
set_disable_timing cbx_2__1_/bottom_grid_top_width_0_height_0_subtile_0__pin_I_0_[0]
set_disable_timing cbx_2__1_/bottom_grid_top_width_0_height_0_subtile_0__pin_I_4_[0]
set_disable_timing cbx_2__1_/bottom_grid_top_width_0_height_0_subtile_0__pin_I_8_[0]
set_disable_timing cbx_2__1_/bottom_grid_top_width_0_height_0_subtile_0__pin_I_12_[0]
set_disable_timing cbx_2__1_/bottom_grid_top_width_0_height_0_subtile_0__pin_I_16_[0]
set_disable_timing cbx_2__1_/bottom_grid_top_width_0_height_0_subtile_0__pin_I_20_[0]
set_disable_timing cbx_2__1_/bottom_grid_top_width_0_height_0_subtile_0__pin_I_24_[0]
set_disable_timing cbx_2__1_/bottom_grid_top_width_0_height_0_subtile_0__pin_I_28_[0]
set_disable_timing cbx_2__1_/bottom_grid_top_width_0_height_0_subtile_0__pin_clk_0_[0]
set_disable_timing cbx_2__1_/mux_bottom_ipin_0/in[1]
set_disable_timing cbx_2__1_/mux_bottom_ipin_5/in[1]
set_disable_timing cbx_2__1_/mux_top_ipin_3/in[1]
set_disable_timing cbx_2__1_/mux_top_ipin_8/in[1]
set_disable_timing cbx_2__1_/mux_bottom_ipin_0/in[0]
set_disable_timing cbx_2__1_/mux_bottom_ipin_5/in[0]
set_disable_timing cbx_2__1_/mux_top_ipin_3/in[0]
set_disable_timing cbx_2__1_/mux_top_ipin_8/in[0]
set_disable_timing cbx_2__1_/mux_bottom_ipin_1/in[1]
set_disable_timing cbx_2__1_/mux_bottom_ipin_6/in[1]
set_disable_timing cbx_2__1_/mux_top_ipin_4/in[1]
set_disable_timing cbx_2__1_/mux_bottom_ipin_1/in[0]
set_disable_timing cbx_2__1_/mux_bottom_ipin_6/in[0]
set_disable_timing cbx_2__1_/mux_top_ipin_4/in[0]
set_disable_timing cbx_2__1_/mux_bottom_ipin_2/in[1]
set_disable_timing cbx_2__1_/mux_top_ipin_0/in[1]
set_disable_timing cbx_2__1_/mux_top_ipin_5/in[1]
set_disable_timing cbx_2__1_/mux_bottom_ipin_2/in[0]
set_disable_timing cbx_2__1_/mux_top_ipin_0/in[0]
set_disable_timing cbx_2__1_/mux_top_ipin_5/in[0]
set_disable_timing cbx_2__1_/mux_bottom_ipin_3/in[1]
set_disable_timing cbx_2__1_/mux_top_ipin_1/in[1]
set_disable_timing cbx_2__1_/mux_top_ipin_6/in[1]
set_disable_timing cbx_2__1_/mux_bottom_ipin_3/in[0]
set_disable_timing cbx_2__1_/mux_top_ipin_1/in[0]
set_disable_timing cbx_2__1_/mux_top_ipin_6/in[0]
set_disable_timing cbx_2__1_/mux_bottom_ipin_4/in[1]
set_disable_timing cbx_2__1_/mux_top_ipin_2/in[1]
set_disable_timing cbx_2__1_/mux_top_ipin_7/in[1]
set_disable_timing cbx_2__1_/mux_bottom_ipin_4/in[0]
set_disable_timing cbx_2__1_/mux_top_ipin_2/in[0]
set_disable_timing cbx_2__1_/mux_top_ipin_7/in[0]
##################################################
# Disable timing for Connection block cbx_1__2_
##################################################
set_disable_timing cbx_2__2_/chanx_left_in[0]
set_disable_timing cbx_2__2_/chanx_right_in[0]
set_disable_timing cbx_2__2_/chanx_left_in[1]
set_disable_timing cbx_2__2_/chanx_right_in[1]
set_disable_timing cbx_2__2_/chanx_left_in[2]
set_disable_timing cbx_2__2_/chanx_right_in[2]
set_disable_timing cbx_2__2_/chanx_left_in[3]
set_disable_timing cbx_2__2_/chanx_right_in[3]
set_disable_timing cbx_2__2_/chanx_left_in[4]
set_disable_timing cbx_2__2_/chanx_right_in[4]
set_disable_timing cbx_2__2_/chanx_left_out[0]
set_disable_timing cbx_2__2_/chanx_right_out[0]
set_disable_timing cbx_2__2_/chanx_left_out[1]
set_disable_timing cbx_2__2_/chanx_right_out[1]
set_disable_timing cbx_2__2_/chanx_left_out[2]
set_disable_timing cbx_2__2_/chanx_right_out[2]
set_disable_timing cbx_2__2_/chanx_left_out[3]
set_disable_timing cbx_2__2_/chanx_right_out[3]
set_disable_timing cbx_2__2_/chanx_left_out[4]
set_disable_timing cbx_2__2_/chanx_right_out[4]
set_disable_timing cbx_2__2_/top_grid_bottom_width_0_height_0_subtile_0__pin_outpad_0_[0]
set_disable_timing cbx_2__2_/top_grid_bottom_width_0_height_0_subtile_1__pin_outpad_0_[0]
set_disable_timing cbx_2__2_/top_grid_bottom_width_0_height_0_subtile_2__pin_outpad_0_[0]
set_disable_timing cbx_2__2_/top_grid_bottom_width_0_height_0_subtile_3__pin_outpad_0_[0]
set_disable_timing cbx_2__2_/top_grid_bottom_width_0_height_0_subtile_4__pin_outpad_0_[0]
set_disable_timing cbx_2__2_/top_grid_bottom_width_0_height_0_subtile_5__pin_outpad_0_[0]
set_disable_timing cbx_2__2_/top_grid_bottom_width_0_height_0_subtile_6__pin_outpad_0_[0]
set_disable_timing cbx_2__2_/top_grid_bottom_width_0_height_0_subtile_7__pin_outpad_0_[0]
set_disable_timing cbx_2__2_/bottom_grid_top_width_0_height_0_subtile_0__pin_I_0_[0]
set_disable_timing cbx_2__2_/bottom_grid_top_width_0_height_0_subtile_0__pin_I_4_[0]
set_disable_timing cbx_2__2_/bottom_grid_top_width_0_height_0_subtile_0__pin_I_8_[0]
set_disable_timing cbx_2__2_/bottom_grid_top_width_0_height_0_subtile_0__pin_I_12_[0]
set_disable_timing cbx_2__2_/bottom_grid_top_width_0_height_0_subtile_0__pin_I_16_[0]
set_disable_timing cbx_2__2_/bottom_grid_top_width_0_height_0_subtile_0__pin_I_20_[0]
set_disable_timing cbx_2__2_/bottom_grid_top_width_0_height_0_subtile_0__pin_I_24_[0]
set_disable_timing cbx_2__2_/bottom_grid_top_width_0_height_0_subtile_0__pin_I_28_[0]
set_disable_timing cbx_2__2_/bottom_grid_top_width_0_height_0_subtile_0__pin_clk_0_[0]
set_disable_timing cbx_2__2_/mux_bottom_ipin_0/in[1]
set_disable_timing cbx_2__2_/mux_bottom_ipin_5/in[1]
set_disable_timing cbx_2__2_/mux_top_ipin_2/in[1]
set_disable_timing cbx_2__2_/mux_top_ipin_7/in[1]
set_disable_timing cbx_2__2_/mux_bottom_ipin_0/in[0]
set_disable_timing cbx_2__2_/mux_bottom_ipin_5/in[0]
set_disable_timing cbx_2__2_/mux_top_ipin_2/in[0]
set_disable_timing cbx_2__2_/mux_top_ipin_7/in[0]
set_disable_timing cbx_2__2_/mux_bottom_ipin_1/in[1]
set_disable_timing cbx_2__2_/mux_bottom_ipin_6/in[1]
set_disable_timing cbx_2__2_/mux_top_ipin_3/in[1]
set_disable_timing cbx_2__2_/mux_top_ipin_8/in[1]
set_disable_timing cbx_2__2_/mux_bottom_ipin_1/in[0]
set_disable_timing cbx_2__2_/mux_bottom_ipin_6/in[0]
set_disable_timing cbx_2__2_/mux_top_ipin_3/in[0]
set_disable_timing cbx_2__2_/mux_top_ipin_8/in[0]
set_disable_timing cbx_2__2_/mux_bottom_ipin_2/in[1]
set_disable_timing cbx_2__2_/mux_bottom_ipin_7/in[1]
set_disable_timing cbx_2__2_/mux_top_ipin_4/in[1]
set_disable_timing cbx_2__2_/mux_bottom_ipin_2/in[0]
set_disable_timing cbx_2__2_/mux_bottom_ipin_7/in[0]
set_disable_timing cbx_2__2_/mux_top_ipin_4/in[0]
set_disable_timing cbx_2__2_/mux_bottom_ipin_3/in[1]
set_disable_timing cbx_2__2_/mux_top_ipin_0/in[1]
set_disable_timing cbx_2__2_/mux_top_ipin_5/in[1]
set_disable_timing cbx_2__2_/mux_bottom_ipin_3/in[0]
set_disable_timing cbx_2__2_/mux_top_ipin_0/in[0]
set_disable_timing cbx_2__2_/mux_top_ipin_5/in[0]
set_disable_timing cbx_2__2_/mux_bottom_ipin_4/in[1]
set_disable_timing cbx_2__2_/mux_top_ipin_1/in[1]
set_disable_timing cbx_2__2_/mux_top_ipin_6/in[1]
set_disable_timing cbx_2__2_/mux_bottom_ipin_4/in[0]
set_disable_timing cbx_2__2_/mux_top_ipin_1/in[0]
set_disable_timing cbx_2__2_/mux_top_ipin_6/in[0]
##################################################
# Disable timing for Connection block cby_0__1_
##################################################
set_disable_timing cby_0__1_/chany_bottom_in[0]
set_disable_timing cby_0__1_/chany_bottom_in[1]
set_disable_timing cby_0__1_/chany_top_in[1]
set_disable_timing cby_0__1_/chany_bottom_in[2]
set_disable_timing cby_0__1_/chany_top_in[2]
set_disable_timing cby_0__1_/chany_bottom_in[3]
set_disable_timing cby_0__1_/chany_top_in[3]
set_disable_timing cby_0__1_/chany_bottom_in[4]
set_disable_timing cby_0__1_/chany_top_in[4]
set_disable_timing cby_0__1_/chany_bottom_out[0]
set_disable_timing cby_0__1_/chany_bottom_out[1]
set_disable_timing cby_0__1_/chany_top_out[1]
set_disable_timing cby_0__1_/chany_bottom_out[2]
set_disable_timing cby_0__1_/chany_top_out[2]
set_disable_timing cby_0__1_/chany_bottom_out[3]
set_disable_timing cby_0__1_/chany_top_out[3]
set_disable_timing cby_0__1_/chany_bottom_out[4]
set_disable_timing cby_0__1_/chany_top_out[4]
set_disable_timing cby_0__1_/right_grid_left_width_0_height_0_subtile_0__pin_I_3_[0]
set_disable_timing cby_0__1_/right_grid_left_width_0_height_0_subtile_0__pin_I_7_[0]
set_disable_timing cby_0__1_/right_grid_left_width_0_height_0_subtile_0__pin_I_11_[0]
set_disable_timing cby_0__1_/right_grid_left_width_0_height_0_subtile_0__pin_I_15_[0]
set_disable_timing cby_0__1_/right_grid_left_width_0_height_0_subtile_0__pin_I_19_[0]
set_disable_timing cby_0__1_/right_grid_left_width_0_height_0_subtile_0__pin_I_23_[0]
set_disable_timing cby_0__1_/right_grid_left_width_0_height_0_subtile_0__pin_I_27_[0]
set_disable_timing cby_0__1_/left_grid_right_width_0_height_0_subtile_0__pin_outpad_0_[0]
set_disable_timing cby_0__1_/left_grid_right_width_0_height_0_subtile_1__pin_outpad_0_[0]
set_disable_timing cby_0__1_/left_grid_right_width_0_height_0_subtile_2__pin_outpad_0_[0]
set_disable_timing cby_0__1_/left_grid_right_width_0_height_0_subtile_3__pin_outpad_0_[0]
set_disable_timing cby_0__1_/left_grid_right_width_0_height_0_subtile_4__pin_outpad_0_[0]
set_disable_timing cby_0__1_/left_grid_right_width_0_height_0_subtile_5__pin_outpad_0_[0]
set_disable_timing cby_0__1_/left_grid_right_width_0_height_0_subtile_6__pin_outpad_0_[0]
set_disable_timing cby_0__1_/left_grid_right_width_0_height_0_subtile_7__pin_outpad_0_[0]
set_disable_timing cby_0__1_/mux_left_ipin_0/in[1]
set_disable_timing cby_0__1_/mux_left_ipin_5/in[1]
set_disable_timing cby_0__1_/mux_right_ipin_3/in[1]
set_disable_timing cby_0__1_/mux_left_ipin_0/in[0]
set_disable_timing cby_0__1_/mux_left_ipin_5/in[0]
set_disable_timing cby_0__1_/mux_right_ipin_3/in[0]
set_disable_timing cby_0__1_/mux_left_ipin_1/in[1]
set_disable_timing cby_0__1_/mux_left_ipin_6/in[1]
set_disable_timing cby_0__1_/mux_right_ipin_4/in[1]
set_disable_timing cby_0__1_/mux_left_ipin_1/in[0]
set_disable_timing cby_0__1_/mux_left_ipin_6/in[0]
set_disable_timing cby_0__1_/mux_right_ipin_4/in[0]
set_disable_timing cby_0__1_/mux_left_ipin_2/in[1]
set_disable_timing cby_0__1_/mux_right_ipin_0/in[1]
set_disable_timing cby_0__1_/mux_right_ipin_5/in[1]
set_disable_timing cby_0__1_/mux_left_ipin_2/in[0]
set_disable_timing cby_0__1_/mux_right_ipin_0/in[0]
set_disable_timing cby_0__1_/mux_right_ipin_5/in[0]
set_disable_timing cby_0__1_/mux_left_ipin_3/in[1]
set_disable_timing cby_0__1_/mux_right_ipin_1/in[1]
set_disable_timing cby_0__1_/mux_right_ipin_6/in[1]
set_disable_timing cby_0__1_/mux_left_ipin_3/in[0]
set_disable_timing cby_0__1_/mux_right_ipin_1/in[0]
set_disable_timing cby_0__1_/mux_right_ipin_6/in[0]
set_disable_timing cby_0__1_/mux_left_ipin_4/in[1]
set_disable_timing cby_0__1_/mux_right_ipin_2/in[1]
set_disable_timing cby_0__1_/mux_right_ipin_7/in[1]
set_disable_timing cby_0__1_/mux_left_ipin_4/in[0]
set_disable_timing cby_0__1_/mux_right_ipin_2/in[0]
set_disable_timing cby_0__1_/mux_right_ipin_7/in[0]
##################################################
# Disable timing for Connection block cby_0__1_
##################################################
set_disable_timing cby_0__2_/chany_bottom_in[0]
set_disable_timing cby_0__2_/chany_top_in[0]
set_disable_timing cby_0__2_/chany_bottom_in[1]
set_disable_timing cby_0__2_/chany_top_in[1]
set_disable_timing cby_0__2_/chany_bottom_in[2]
set_disable_timing cby_0__2_/chany_top_in[2]
set_disable_timing cby_0__2_/chany_bottom_in[3]
set_disable_timing cby_0__2_/chany_top_in[3]
set_disable_timing cby_0__2_/chany_bottom_in[4]
set_disable_timing cby_0__2_/chany_top_in[4]
set_disable_timing cby_0__2_/chany_bottom_out[0]
set_disable_timing cby_0__2_/chany_top_out[0]
set_disable_timing cby_0__2_/chany_bottom_out[1]
set_disable_timing cby_0__2_/chany_top_out[1]
set_disable_timing cby_0__2_/chany_bottom_out[2]
set_disable_timing cby_0__2_/chany_top_out[2]
set_disable_timing cby_0__2_/chany_bottom_out[3]
set_disable_timing cby_0__2_/chany_top_out[3]
set_disable_timing cby_0__2_/chany_bottom_out[4]
set_disable_timing cby_0__2_/chany_top_out[4]
set_disable_timing cby_0__2_/right_grid_left_width_0_height_0_subtile_0__pin_I_3_[0]
set_disable_timing cby_0__2_/right_grid_left_width_0_height_0_subtile_0__pin_I_7_[0]
set_disable_timing cby_0__2_/right_grid_left_width_0_height_0_subtile_0__pin_I_11_[0]
set_disable_timing cby_0__2_/right_grid_left_width_0_height_0_subtile_0__pin_I_15_[0]
set_disable_timing cby_0__2_/right_grid_left_width_0_height_0_subtile_0__pin_I_19_[0]
set_disable_timing cby_0__2_/right_grid_left_width_0_height_0_subtile_0__pin_I_23_[0]
set_disable_timing cby_0__2_/right_grid_left_width_0_height_0_subtile_0__pin_I_27_[0]
set_disable_timing cby_0__2_/left_grid_right_width_0_height_0_subtile_0__pin_outpad_0_[0]
set_disable_timing cby_0__2_/left_grid_right_width_0_height_0_subtile_1__pin_outpad_0_[0]
set_disable_timing cby_0__2_/left_grid_right_width_0_height_0_subtile_2__pin_outpad_0_[0]
set_disable_timing cby_0__2_/left_grid_right_width_0_height_0_subtile_3__pin_outpad_0_[0]
set_disable_timing cby_0__2_/left_grid_right_width_0_height_0_subtile_4__pin_outpad_0_[0]
set_disable_timing cby_0__2_/left_grid_right_width_0_height_0_subtile_5__pin_outpad_0_[0]
set_disable_timing cby_0__2_/left_grid_right_width_0_height_0_subtile_6__pin_outpad_0_[0]
set_disable_timing cby_0__2_/left_grid_right_width_0_height_0_subtile_7__pin_outpad_0_[0]
set_disable_timing cby_0__2_/mux_left_ipin_0/in[1]
set_disable_timing cby_0__2_/mux_left_ipin_5/in[1]
set_disable_timing cby_0__2_/mux_right_ipin_3/in[1]
set_disable_timing cby_0__2_/mux_left_ipin_0/in[0]
set_disable_timing cby_0__2_/mux_left_ipin_5/in[0]
set_disable_timing cby_0__2_/mux_right_ipin_3/in[0]
set_disable_timing cby_0__2_/mux_left_ipin_1/in[1]
set_disable_timing cby_0__2_/mux_left_ipin_6/in[1]
set_disable_timing cby_0__2_/mux_right_ipin_4/in[1]
set_disable_timing cby_0__2_/mux_left_ipin_1/in[0]
set_disable_timing cby_0__2_/mux_left_ipin_6/in[0]
set_disable_timing cby_0__2_/mux_right_ipin_4/in[0]
set_disable_timing cby_0__2_/mux_left_ipin_2/in[1]
set_disable_timing cby_0__2_/mux_right_ipin_0/in[1]
set_disable_timing cby_0__2_/mux_right_ipin_5/in[1]
set_disable_timing cby_0__2_/mux_left_ipin_2/in[0]
set_disable_timing cby_0__2_/mux_right_ipin_0/in[0]
set_disable_timing cby_0__2_/mux_right_ipin_5/in[0]
set_disable_timing cby_0__2_/mux_left_ipin_3/in[1]
set_disable_timing cby_0__2_/mux_right_ipin_1/in[1]
set_disable_timing cby_0__2_/mux_right_ipin_6/in[1]
set_disable_timing cby_0__2_/mux_left_ipin_3/in[0]
set_disable_timing cby_0__2_/mux_right_ipin_1/in[0]
set_disable_timing cby_0__2_/mux_right_ipin_6/in[0]
set_disable_timing cby_0__2_/mux_left_ipin_4/in[1]
set_disable_timing cby_0__2_/mux_right_ipin_2/in[1]
set_disable_timing cby_0__2_/mux_right_ipin_7/in[1]
set_disable_timing cby_0__2_/mux_left_ipin_4/in[0]
set_disable_timing cby_0__2_/mux_right_ipin_2/in[0]
set_disable_timing cby_0__2_/mux_right_ipin_7/in[0]
##################################################
# Disable timing for Connection block cby_0__1_
##################################################
set_disable_timing cby_1__1_/chany_bottom_in[0]
set_disable_timing cby_1__1_/chany_bottom_in[1]
set_disable_timing cby_1__1_/chany_top_in[1]
set_disable_timing cby_1__1_/chany_bottom_in[2]
set_disable_timing cby_1__1_/chany_top_in[2]
set_disable_timing cby_1__1_/chany_bottom_in[3]
set_disable_timing cby_1__1_/chany_top_in[3]
set_disable_timing cby_1__1_/chany_bottom_in[4]
set_disable_timing cby_1__1_/chany_top_in[4]
set_disable_timing cby_1__1_/chany_bottom_out[0]
set_disable_timing cby_1__1_/chany_bottom_out[1]
set_disable_timing cby_1__1_/chany_top_out[1]
set_disable_timing cby_1__1_/chany_bottom_out[2]
set_disable_timing cby_1__1_/chany_top_out[2]
set_disable_timing cby_1__1_/chany_bottom_out[3]
set_disable_timing cby_1__1_/chany_top_out[3]
set_disable_timing cby_1__1_/chany_bottom_out[4]
set_disable_timing cby_1__1_/chany_top_out[4]
set_disable_timing cby_1__1_/right_grid_left_width_0_height_0_subtile_0__pin_I_3_[0]
set_disable_timing cby_1__1_/right_grid_left_width_0_height_0_subtile_0__pin_I_7_[0]
set_disable_timing cby_1__1_/right_grid_left_width_0_height_0_subtile_0__pin_I_11_[0]
set_disable_timing cby_1__1_/right_grid_left_width_0_height_0_subtile_0__pin_I_15_[0]
set_disable_timing cby_1__1_/right_grid_left_width_0_height_0_subtile_0__pin_I_19_[0]
set_disable_timing cby_1__1_/right_grid_left_width_0_height_0_subtile_0__pin_I_23_[0]
set_disable_timing cby_1__1_/right_grid_left_width_0_height_0_subtile_0__pin_I_27_[0]
set_disable_timing cby_1__1_/left_grid_right_width_0_height_0_subtile_0__pin_outpad_0_[0]
set_disable_timing cby_1__1_/left_grid_right_width_0_height_0_subtile_1__pin_outpad_0_[0]
set_disable_timing cby_1__1_/left_grid_right_width_0_height_0_subtile_2__pin_outpad_0_[0]
set_disable_timing cby_1__1_/left_grid_right_width_0_height_0_subtile_3__pin_outpad_0_[0]
set_disable_timing cby_1__1_/left_grid_right_width_0_height_0_subtile_4__pin_outpad_0_[0]
set_disable_timing cby_1__1_/left_grid_right_width_0_height_0_subtile_5__pin_outpad_0_[0]
set_disable_timing cby_1__1_/left_grid_right_width_0_height_0_subtile_6__pin_outpad_0_[0]
set_disable_timing cby_1__1_/left_grid_right_width_0_height_0_subtile_7__pin_outpad_0_[0]
set_disable_timing cby_1__1_/mux_left_ipin_0/in[1]
set_disable_timing cby_1__1_/mux_left_ipin_5/in[1]
set_disable_timing cby_1__1_/mux_right_ipin_3/in[1]
set_disable_timing cby_1__1_/mux_left_ipin_0/in[0]
set_disable_timing cby_1__1_/mux_left_ipin_5/in[0]
set_disable_timing cby_1__1_/mux_right_ipin_3/in[0]
set_disable_timing cby_1__1_/mux_left_ipin_1/in[1]
set_disable_timing cby_1__1_/mux_left_ipin_6/in[1]
set_disable_timing cby_1__1_/mux_right_ipin_4/in[1]
set_disable_timing cby_1__1_/mux_left_ipin_1/in[0]
set_disable_timing cby_1__1_/mux_left_ipin_6/in[0]
set_disable_timing cby_1__1_/mux_right_ipin_4/in[0]
set_disable_timing cby_1__1_/mux_left_ipin_2/in[1]
set_disable_timing cby_1__1_/mux_right_ipin_0/in[1]
set_disable_timing cby_1__1_/mux_right_ipin_5/in[1]
set_disable_timing cby_1__1_/mux_left_ipin_2/in[0]
set_disable_timing cby_1__1_/mux_right_ipin_0/in[0]
set_disable_timing cby_1__1_/mux_right_ipin_5/in[0]
set_disable_timing cby_1__1_/mux_left_ipin_3/in[1]
set_disable_timing cby_1__1_/mux_right_ipin_1/in[1]
set_disable_timing cby_1__1_/mux_right_ipin_6/in[1]
set_disable_timing cby_1__1_/mux_left_ipin_3/in[0]
set_disable_timing cby_1__1_/mux_right_ipin_1/in[0]
set_disable_timing cby_1__1_/mux_right_ipin_6/in[0]
set_disable_timing cby_1__1_/mux_left_ipin_4/in[1]
set_disable_timing cby_1__1_/mux_right_ipin_2/in[1]
set_disable_timing cby_1__1_/mux_right_ipin_7/in[1]
set_disable_timing cby_1__1_/mux_left_ipin_4/in[0]
set_disable_timing cby_1__1_/mux_right_ipin_2/in[0]
set_disable_timing cby_1__1_/mux_right_ipin_7/in[0]
##################################################
# Disable timing for Connection block cby_0__1_
##################################################
set_disable_timing cby_1__2_/chany_bottom_in[0]
set_disable_timing cby_1__2_/chany_top_in[0]
set_disable_timing cby_1__2_/chany_bottom_in[1]
set_disable_timing cby_1__2_/chany_top_in[1]
set_disable_timing cby_1__2_/chany_bottom_in[2]
set_disable_timing cby_1__2_/chany_top_in[2]
set_disable_timing cby_1__2_/chany_bottom_in[3]
set_disable_timing cby_1__2_/chany_top_in[3]
set_disable_timing cby_1__2_/chany_bottom_in[4]
set_disable_timing cby_1__2_/chany_top_in[4]
set_disable_timing cby_1__2_/chany_bottom_out[0]
set_disable_timing cby_1__2_/chany_top_out[0]
set_disable_timing cby_1__2_/chany_bottom_out[1]
set_disable_timing cby_1__2_/chany_top_out[1]
set_disable_timing cby_1__2_/chany_bottom_out[2]
set_disable_timing cby_1__2_/chany_top_out[2]
set_disable_timing cby_1__2_/chany_bottom_out[3]
set_disable_timing cby_1__2_/chany_top_out[3]
set_disable_timing cby_1__2_/chany_bottom_out[4]
set_disable_timing cby_1__2_/chany_top_out[4]
set_disable_timing cby_1__2_/right_grid_left_width_0_height_0_subtile_0__pin_I_3_[0]
set_disable_timing cby_1__2_/right_grid_left_width_0_height_0_subtile_0__pin_I_7_[0]
set_disable_timing cby_1__2_/right_grid_left_width_0_height_0_subtile_0__pin_I_11_[0]
set_disable_timing cby_1__2_/right_grid_left_width_0_height_0_subtile_0__pin_I_15_[0]
set_disable_timing cby_1__2_/right_grid_left_width_0_height_0_subtile_0__pin_I_19_[0]
set_disable_timing cby_1__2_/right_grid_left_width_0_height_0_subtile_0__pin_I_23_[0]
set_disable_timing cby_1__2_/right_grid_left_width_0_height_0_subtile_0__pin_I_27_[0]
set_disable_timing cby_1__2_/left_grid_right_width_0_height_0_subtile_0__pin_outpad_0_[0]
set_disable_timing cby_1__2_/left_grid_right_width_0_height_0_subtile_1__pin_outpad_0_[0]
set_disable_timing cby_1__2_/left_grid_right_width_0_height_0_subtile_2__pin_outpad_0_[0]
set_disable_timing cby_1__2_/left_grid_right_width_0_height_0_subtile_3__pin_outpad_0_[0]
set_disable_timing cby_1__2_/left_grid_right_width_0_height_0_subtile_4__pin_outpad_0_[0]
set_disable_timing cby_1__2_/left_grid_right_width_0_height_0_subtile_5__pin_outpad_0_[0]
set_disable_timing cby_1__2_/left_grid_right_width_0_height_0_subtile_6__pin_outpad_0_[0]
set_disable_timing cby_1__2_/left_grid_right_width_0_height_0_subtile_7__pin_outpad_0_[0]
set_disable_timing cby_1__2_/mux_left_ipin_0/in[1]
set_disable_timing cby_1__2_/mux_left_ipin_5/in[1]
set_disable_timing cby_1__2_/mux_right_ipin_3/in[1]
set_disable_timing cby_1__2_/mux_left_ipin_0/in[0]
set_disable_timing cby_1__2_/mux_left_ipin_5/in[0]
set_disable_timing cby_1__2_/mux_right_ipin_3/in[0]
set_disable_timing cby_1__2_/mux_left_ipin_1/in[1]
set_disable_timing cby_1__2_/mux_left_ipin_6/in[1]
set_disable_timing cby_1__2_/mux_right_ipin_4/in[1]
set_disable_timing cby_1__2_/mux_left_ipin_1/in[0]
set_disable_timing cby_1__2_/mux_left_ipin_6/in[0]
set_disable_timing cby_1__2_/mux_right_ipin_4/in[0]
set_disable_timing cby_1__2_/mux_left_ipin_2/in[1]
set_disable_timing cby_1__2_/mux_right_ipin_0/in[1]
set_disable_timing cby_1__2_/mux_right_ipin_5/in[1]
set_disable_timing cby_1__2_/mux_left_ipin_2/in[0]
set_disable_timing cby_1__2_/mux_right_ipin_0/in[0]
set_disable_timing cby_1__2_/mux_right_ipin_5/in[0]
set_disable_timing cby_1__2_/mux_left_ipin_3/in[1]
set_disable_timing cby_1__2_/mux_right_ipin_1/in[1]
set_disable_timing cby_1__2_/mux_right_ipin_6/in[1]
set_disable_timing cby_1__2_/mux_left_ipin_3/in[0]
set_disable_timing cby_1__2_/mux_right_ipin_1/in[0]
set_disable_timing cby_1__2_/mux_right_ipin_6/in[0]
set_disable_timing cby_1__2_/mux_left_ipin_4/in[1]
set_disable_timing cby_1__2_/mux_right_ipin_2/in[1]
set_disable_timing cby_1__2_/mux_right_ipin_7/in[1]
set_disable_timing cby_1__2_/mux_left_ipin_4/in[0]
set_disable_timing cby_1__2_/mux_right_ipin_2/in[0]
set_disable_timing cby_1__2_/mux_right_ipin_7/in[0]
##################################################
# Disable timing for Connection block cby_2__1_
##################################################
set_disable_timing cby_2__1_/chany_bottom_in[0]
set_disable_timing cby_2__1_/chany_top_in[0]
set_disable_timing cby_2__1_/chany_bottom_in[1]
set_disable_timing cby_2__1_/chany_top_in[1]
set_disable_timing cby_2__1_/chany_top_in[2]
set_disable_timing cby_2__1_/chany_bottom_in[3]
set_disable_timing cby_2__1_/chany_top_in[3]
set_disable_timing cby_2__1_/chany_bottom_in[4]
set_disable_timing cby_2__1_/chany_top_in[4]
set_disable_timing cby_2__1_/chany_bottom_out[0]
set_disable_timing cby_2__1_/chany_top_out[0]
set_disable_timing cby_2__1_/chany_bottom_out[1]
set_disable_timing cby_2__1_/chany_top_out[1]
set_disable_timing cby_2__1_/chany_top_out[2]
set_disable_timing cby_2__1_/chany_bottom_out[3]
set_disable_timing cby_2__1_/chany_top_out[3]
set_disable_timing cby_2__1_/chany_bottom_out[4]
set_disable_timing cby_2__1_/chany_top_out[4]
set_disable_timing cby_2__1_/right_grid_left_width_0_height_0_subtile_0__pin_outpad_0_[0]
set_disable_timing cby_2__1_/right_grid_left_width_0_height_0_subtile_1__pin_outpad_0_[0]
set_disable_timing cby_2__1_/right_grid_left_width_0_height_0_subtile_2__pin_outpad_0_[0]
set_disable_timing cby_2__1_/right_grid_left_width_0_height_0_subtile_3__pin_outpad_0_[0]
set_disable_timing cby_2__1_/right_grid_left_width_0_height_0_subtile_4__pin_outpad_0_[0]
set_disable_timing cby_2__1_/right_grid_left_width_0_height_0_subtile_5__pin_outpad_0_[0]
set_disable_timing cby_2__1_/right_grid_left_width_0_height_0_subtile_6__pin_outpad_0_[0]
set_disable_timing cby_2__1_/right_grid_left_width_0_height_0_subtile_7__pin_outpad_0_[0]
set_disable_timing cby_2__1_/left_grid_right_width_0_height_0_subtile_0__pin_I_1_[0]
set_disable_timing cby_2__1_/left_grid_right_width_0_height_0_subtile_0__pin_I_5_[0]
set_disable_timing cby_2__1_/left_grid_right_width_0_height_0_subtile_0__pin_I_9_[0]
set_disable_timing cby_2__1_/left_grid_right_width_0_height_0_subtile_0__pin_I_13_[0]
set_disable_timing cby_2__1_/left_grid_right_width_0_height_0_subtile_0__pin_I_17_[0]
set_disable_timing cby_2__1_/left_grid_right_width_0_height_0_subtile_0__pin_I_21_[0]
set_disable_timing cby_2__1_/left_grid_right_width_0_height_0_subtile_0__pin_I_25_[0]
set_disable_timing cby_2__1_/left_grid_right_width_0_height_0_subtile_0__pin_I_29_[0]
set_disable_timing cby_2__1_/mux_left_ipin_0/in[1]
set_disable_timing cby_2__1_/mux_left_ipin_5/in[1]
set_disable_timing cby_2__1_/mux_right_ipin_2/in[1]
set_disable_timing cby_2__1_/mux_right_ipin_7/in[1]
set_disable_timing cby_2__1_/mux_left_ipin_0/in[0]
set_disable_timing cby_2__1_/mux_left_ipin_5/in[0]
set_disable_timing cby_2__1_/mux_right_ipin_2/in[0]
set_disable_timing cby_2__1_/mux_right_ipin_7/in[0]
set_disable_timing cby_2__1_/mux_left_ipin_1/in[1]
set_disable_timing cby_2__1_/mux_left_ipin_6/in[1]
set_disable_timing cby_2__1_/mux_right_ipin_3/in[1]
set_disable_timing cby_2__1_/mux_left_ipin_1/in[0]
set_disable_timing cby_2__1_/mux_left_ipin_6/in[0]
set_disable_timing cby_2__1_/mux_right_ipin_3/in[0]
set_disable_timing cby_2__1_/mux_left_ipin_2/in[1]
set_disable_timing cby_2__1_/mux_left_ipin_7/in[1]
set_disable_timing cby_2__1_/mux_right_ipin_4/in[1]
set_disable_timing cby_2__1_/mux_left_ipin_2/in[0]
set_disable_timing cby_2__1_/mux_left_ipin_7/in[0]
set_disable_timing cby_2__1_/mux_right_ipin_4/in[0]
set_disable_timing cby_2__1_/mux_left_ipin_3/in[1]
set_disable_timing cby_2__1_/mux_right_ipin_0/in[1]
set_disable_timing cby_2__1_/mux_right_ipin_5/in[1]
set_disable_timing cby_2__1_/mux_left_ipin_3/in[0]
set_disable_timing cby_2__1_/mux_right_ipin_0/in[0]
set_disable_timing cby_2__1_/mux_right_ipin_5/in[0]
set_disable_timing cby_2__1_/mux_left_ipin_4/in[1]
set_disable_timing cby_2__1_/mux_right_ipin_1/in[1]
set_disable_timing cby_2__1_/mux_right_ipin_6/in[1]
set_disable_timing cby_2__1_/mux_left_ipin_4/in[0]
set_disable_timing cby_2__1_/mux_right_ipin_1/in[0]
set_disable_timing cby_2__1_/mux_right_ipin_6/in[0]
##################################################
# Disable timing for Connection block cby_2__1_
##################################################
set_disable_timing cby_2__2_/chany_bottom_in[0]
set_disable_timing cby_2__2_/chany_top_in[0]
set_disable_timing cby_2__2_/chany_bottom_in[1]
set_disable_timing cby_2__2_/chany_top_in[1]
set_disable_timing cby_2__2_/chany_bottom_in[2]
set_disable_timing cby_2__2_/chany_top_in[2]
set_disable_timing cby_2__2_/chany_top_in[3]
set_disable_timing cby_2__2_/chany_bottom_in[4]
set_disable_timing cby_2__2_/chany_top_in[4]
set_disable_timing cby_2__2_/chany_bottom_out[0]
set_disable_timing cby_2__2_/chany_top_out[0]
set_disable_timing cby_2__2_/chany_bottom_out[1]
set_disable_timing cby_2__2_/chany_top_out[1]
set_disable_timing cby_2__2_/chany_bottom_out[2]
set_disable_timing cby_2__2_/chany_top_out[2]
set_disable_timing cby_2__2_/chany_top_out[3]
set_disable_timing cby_2__2_/chany_bottom_out[4]
set_disable_timing cby_2__2_/chany_top_out[4]
set_disable_timing cby_2__2_/right_grid_left_width_0_height_0_subtile_0__pin_outpad_0_[0]
set_disable_timing cby_2__2_/right_grid_left_width_0_height_0_subtile_1__pin_outpad_0_[0]
set_disable_timing cby_2__2_/right_grid_left_width_0_height_0_subtile_2__pin_outpad_0_[0]
set_disable_timing cby_2__2_/right_grid_left_width_0_height_0_subtile_3__pin_outpad_0_[0]
set_disable_timing cby_2__2_/right_grid_left_width_0_height_0_subtile_4__pin_outpad_0_[0]
set_disable_timing cby_2__2_/right_grid_left_width_0_height_0_subtile_5__pin_outpad_0_[0]
set_disable_timing cby_2__2_/right_grid_left_width_0_height_0_subtile_6__pin_outpad_0_[0]
set_disable_timing cby_2__2_/right_grid_left_width_0_height_0_subtile_7__pin_outpad_0_[0]
set_disable_timing cby_2__2_/left_grid_right_width_0_height_0_subtile_0__pin_I_1_[0]
set_disable_timing cby_2__2_/left_grid_right_width_0_height_0_subtile_0__pin_I_5_[0]
set_disable_timing cby_2__2_/left_grid_right_width_0_height_0_subtile_0__pin_I_9_[0]
set_disable_timing cby_2__2_/left_grid_right_width_0_height_0_subtile_0__pin_I_13_[0]
set_disable_timing cby_2__2_/left_grid_right_width_0_height_0_subtile_0__pin_I_17_[0]
set_disable_timing cby_2__2_/left_grid_right_width_0_height_0_subtile_0__pin_I_21_[0]
set_disable_timing cby_2__2_/left_grid_right_width_0_height_0_subtile_0__pin_I_25_[0]
set_disable_timing cby_2__2_/left_grid_right_width_0_height_0_subtile_0__pin_I_29_[0]
set_disable_timing cby_2__2_/mux_left_ipin_0/in[1]
set_disable_timing cby_2__2_/mux_left_ipin_5/in[1]
set_disable_timing cby_2__2_/mux_right_ipin_2/in[1]
set_disable_timing cby_2__2_/mux_right_ipin_7/in[1]
set_disable_timing cby_2__2_/mux_left_ipin_0/in[0]
set_disable_timing cby_2__2_/mux_left_ipin_5/in[0]
set_disable_timing cby_2__2_/mux_right_ipin_2/in[0]
set_disable_timing cby_2__2_/mux_right_ipin_7/in[0]
set_disable_timing cby_2__2_/mux_left_ipin_1/in[1]
set_disable_timing cby_2__2_/mux_left_ipin_6/in[1]
set_disable_timing cby_2__2_/mux_right_ipin_3/in[1]
set_disable_timing cby_2__2_/mux_left_ipin_1/in[0]
set_disable_timing cby_2__2_/mux_left_ipin_6/in[0]
set_disable_timing cby_2__2_/mux_right_ipin_3/in[0]
set_disable_timing cby_2__2_/mux_left_ipin_2/in[1]
set_disable_timing cby_2__2_/mux_left_ipin_7/in[1]
set_disable_timing cby_2__2_/mux_right_ipin_4/in[1]
set_disable_timing cby_2__2_/mux_left_ipin_2/in[0]
set_disable_timing cby_2__2_/mux_left_ipin_7/in[0]
set_disable_timing cby_2__2_/mux_right_ipin_4/in[0]
set_disable_timing cby_2__2_/mux_left_ipin_3/in[1]
set_disable_timing cby_2__2_/mux_right_ipin_0/in[1]
set_disable_timing cby_2__2_/mux_right_ipin_5/in[1]
set_disable_timing cby_2__2_/mux_left_ipin_3/in[0]
set_disable_timing cby_2__2_/mux_right_ipin_0/in[0]
set_disable_timing cby_2__2_/mux_right_ipin_5/in[0]
set_disable_timing cby_2__2_/mux_left_ipin_4/in[1]
set_disable_timing cby_2__2_/mux_right_ipin_1/in[1]
set_disable_timing cby_2__2_/mux_right_ipin_6/in[1]
set_disable_timing cby_2__2_/mux_left_ipin_4/in[0]
set_disable_timing cby_2__2_/mux_right_ipin_1/in[0]
set_disable_timing cby_2__2_/mux_right_ipin_6/in[0]
##################################################
# Disable timing for Switch block sb_0__0_
##################################################
set_disable_timing sb_0__0_/chany_top_out[0]
set_disable_timing sb_0__0_/chany_top_out[1]
set_disable_timing sb_0__0_/chany_top_in[1]
set_disable_timing sb_0__0_/chany_top_out[2]
set_disable_timing sb_0__0_/chany_top_in[2]
set_disable_timing sb_0__0_/chany_top_out[3]
set_disable_timing sb_0__0_/chany_top_in[3]
set_disable_timing sb_0__0_/chany_top_out[4]
set_disable_timing sb_0__0_/chany_top_in[4]
set_disable_timing sb_0__0_/chanx_right_out[0]
set_disable_timing sb_0__0_/chanx_right_in[0]
set_disable_timing sb_0__0_/chanx_right_in[1]
set_disable_timing sb_0__0_/chanx_right_out[2]
set_disable_timing sb_0__0_/chanx_right_in[2]
set_disable_timing sb_0__0_/chanx_right_out[3]
set_disable_timing sb_0__0_/chanx_right_in[3]
set_disable_timing sb_0__0_/chanx_right_out[4]
set_disable_timing sb_0__0_/chanx_right_in[4]
set_disable_timing sb_0__0_/top_left_grid_right_width_0_height_0_subtile_1__pin_inpad_0_[0]
set_disable_timing sb_0__0_/top_left_grid_right_width_0_height_0_subtile_2__pin_inpad_0_[0]
set_disable_timing sb_0__0_/top_left_grid_right_width_0_height_0_subtile_3__pin_inpad_0_[0]
set_disable_timing sb_0__0_/top_left_grid_right_width_0_height_0_subtile_4__pin_inpad_0_[0]
set_disable_timing sb_0__0_/top_left_grid_right_width_0_height_0_subtile_5__pin_inpad_0_[0]
set_disable_timing sb_0__0_/top_left_grid_right_width_0_height_0_subtile_6__pin_inpad_0_[0]
set_disable_timing sb_0__0_/top_left_grid_right_width_0_height_0_subtile_7__pin_inpad_0_[0]
set_disable_timing sb_0__0_/top_right_grid_left_width_0_height_0_subtile_0__pin_O_3_[0]
set_disable_timing sb_0__0_/top_right_grid_left_width_0_height_0_subtile_0__pin_O_7_[0]
set_disable_timing sb_0__0_/right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_2_[0]
set_disable_timing sb_0__0_/right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_6_[0]
set_disable_timing sb_0__0_/right_bottom_grid_top_width_0_height_0_subtile_0__pin_inpad_0_[0]
set_disable_timing sb_0__0_/right_bottom_grid_top_width_0_height_0_subtile_1__pin_inpad_0_[0]
set_disable_timing sb_0__0_/right_bottom_grid_top_width_0_height_0_subtile_2__pin_inpad_0_[0]
set_disable_timing sb_0__0_/right_bottom_grid_top_width_0_height_0_subtile_3__pin_inpad_0_[0]
set_disable_timing sb_0__0_/right_bottom_grid_top_width_0_height_0_subtile_4__pin_inpad_0_[0]
set_disable_timing sb_0__0_/right_bottom_grid_top_width_0_height_0_subtile_5__pin_inpad_0_[0]
set_disable_timing sb_0__0_/right_bottom_grid_top_width_0_height_0_subtile_6__pin_inpad_0_[0]
set_disable_timing sb_0__0_/right_bottom_grid_top_width_0_height_0_subtile_7__pin_inpad_0_[0]
set_disable_timing sb_0__0_/mux_top_track_0/in[0]
set_disable_timing sb_0__0_/mux_top_track_2/in[0]
set_disable_timing sb_0__0_/mux_top_track_4/in[0]
set_disable_timing sb_0__0_/mux_top_track_6/in[0]
set_disable_timing sb_0__0_/mux_top_track_8/in[0]
set_disable_timing sb_0__0_/mux_top_track_0/in[1]
set_disable_timing sb_0__0_/mux_top_track_2/in[1]
set_disable_timing sb_0__0_/mux_top_track_4/in[1]
set_disable_timing sb_0__0_/mux_top_track_6/in[1]
set_disable_timing sb_0__0_/mux_top_track_8/in[1]
set_disable_timing sb_0__0_/mux_right_track_0/in[1]
set_disable_timing sb_0__0_/mux_right_track_2/in[1]
set_disable_timing sb_0__0_/mux_right_track_4/in[1]
set_disable_timing sb_0__0_/mux_right_track_6/in[1]
set_disable_timing sb_0__0_/mux_right_track_8/in[1]
set_disable_timing sb_0__0_/mux_right_track_0/in[2]
set_disable_timing sb_0__0_/mux_right_track_2/in[2]
set_disable_timing sb_0__0_/mux_right_track_4/in[2]
set_disable_timing sb_0__0_/mux_right_track_6/in[2]
set_disable_timing sb_0__0_/mux_right_track_8/in[2]
set_disable_timing sb_0__0_/mux_right_track_4/in[0]
set_disable_timing sb_0__0_/mux_right_track_6/in[0]
set_disable_timing sb_0__0_/mux_right_track_8/in[0]
set_disable_timing sb_0__0_/mux_right_track_0/in[0]
set_disable_timing sb_0__0_/mux_top_track_8/in[2]
set_disable_timing sb_0__0_/mux_top_track_0/in[2]
set_disable_timing sb_0__0_/mux_top_track_2/in[2]
set_disable_timing sb_0__0_/mux_top_track_4/in[2]
set_disable_timing sb_0__0_/mux_top_track_6/in[2]
##################################################
# Disable timing for Switch block sb_0__1_
##################################################
set_disable_timing sb_0__1_/chany_top_out[0]
set_disable_timing sb_0__1_/chany_top_in[0]
set_disable_timing sb_0__1_/chany_top_out[1]
set_disable_timing sb_0__1_/chany_top_in[1]
set_disable_timing sb_0__1_/chany_top_out[2]
set_disable_timing sb_0__1_/chany_top_in[2]
set_disable_timing sb_0__1_/chany_top_out[3]
set_disable_timing sb_0__1_/chany_top_in[3]
set_disable_timing sb_0__1_/chany_top_out[4]
set_disable_timing sb_0__1_/chany_top_in[4]
set_disable_timing sb_0__1_/chanx_right_out[0]
set_disable_timing sb_0__1_/chanx_right_in[0]
set_disable_timing sb_0__1_/chanx_right_out[1]
set_disable_timing sb_0__1_/chanx_right_in[1]
set_disable_timing sb_0__1_/chanx_right_out[2]
set_disable_timing sb_0__1_/chanx_right_in[2]
set_disable_timing sb_0__1_/chanx_right_out[3]
set_disable_timing sb_0__1_/chanx_right_in[3]
set_disable_timing sb_0__1_/chanx_right_out[4]
set_disable_timing sb_0__1_/chanx_right_in[4]
set_disable_timing sb_0__1_/chany_bottom_in[0]
set_disable_timing sb_0__1_/chany_bottom_in[1]
set_disable_timing sb_0__1_/chany_bottom_out[1]
set_disable_timing sb_0__1_/chany_bottom_in[2]
set_disable_timing sb_0__1_/chany_bottom_out[2]
set_disable_timing sb_0__1_/chany_bottom_in[3]
set_disable_timing sb_0__1_/chany_bottom_out[3]
set_disable_timing sb_0__1_/chany_bottom_in[4]
set_disable_timing sb_0__1_/chany_bottom_out[4]
set_disable_timing sb_0__1_/top_left_grid_right_width_0_height_0_subtile_0__pin_inpad_0_[0]
set_disable_timing sb_0__1_/top_left_grid_right_width_0_height_0_subtile_1__pin_inpad_0_[0]
set_disable_timing sb_0__1_/top_left_grid_right_width_0_height_0_subtile_2__pin_inpad_0_[0]
set_disable_timing sb_0__1_/top_left_grid_right_width_0_height_0_subtile_3__pin_inpad_0_[0]
set_disable_timing sb_0__1_/top_left_grid_right_width_0_height_0_subtile_4__pin_inpad_0_[0]
set_disable_timing sb_0__1_/top_left_grid_right_width_0_height_0_subtile_5__pin_inpad_0_[0]
set_disable_timing sb_0__1_/top_left_grid_right_width_0_height_0_subtile_6__pin_inpad_0_[0]
set_disable_timing sb_0__1_/top_left_grid_right_width_0_height_0_subtile_7__pin_inpad_0_[0]
set_disable_timing sb_0__1_/top_right_grid_left_width_0_height_0_subtile_0__pin_O_3_[0]
set_disable_timing sb_0__1_/top_right_grid_left_width_0_height_0_subtile_0__pin_O_7_[0]
set_disable_timing sb_0__1_/right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_2_[0]
set_disable_timing sb_0__1_/right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_6_[0]
set_disable_timing sb_0__1_/right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_0_[0]
set_disable_timing sb_0__1_/right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_4_[0]
set_disable_timing sb_0__1_/right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_8_[0]
set_disable_timing sb_0__1_/bottom_right_grid_left_width_0_height_0_subtile_0__pin_O_3_[0]
set_disable_timing sb_0__1_/bottom_right_grid_left_width_0_height_0_subtile_0__pin_O_7_[0]
set_disable_timing sb_0__1_/bottom_left_grid_right_width_0_height_0_subtile_1__pin_inpad_0_[0]
set_disable_timing sb_0__1_/bottom_left_grid_right_width_0_height_0_subtile_2__pin_inpad_0_[0]
set_disable_timing sb_0__1_/bottom_left_grid_right_width_0_height_0_subtile_3__pin_inpad_0_[0]
set_disable_timing sb_0__1_/bottom_left_grid_right_width_0_height_0_subtile_4__pin_inpad_0_[0]
set_disable_timing sb_0__1_/bottom_left_grid_right_width_0_height_0_subtile_5__pin_inpad_0_[0]
set_disable_timing sb_0__1_/bottom_left_grid_right_width_0_height_0_subtile_6__pin_inpad_0_[0]
set_disable_timing sb_0__1_/bottom_left_grid_right_width_0_height_0_subtile_7__pin_inpad_0_[0]
set_disable_timing sb_0__1_/mux_top_track_0/in[0]
set_disable_timing sb_0__1_/mux_top_track_8/in[0]
set_disable_timing sb_0__1_/mux_top_track_0/in[1]
set_disable_timing sb_0__1_/mux_top_track_8/in[1]
set_disable_timing sb_0__1_/mux_top_track_0/in[2]
set_disable_timing sb_0__1_/mux_top_track_8/in[2]
set_disable_timing sb_0__1_/mux_top_track_0/in[3]
set_disable_timing sb_0__1_/mux_top_track_8/in[3]
set_disable_timing sb_0__1_/mux_top_track_0/in[4]
set_disable_timing sb_0__1_/mux_top_track_8/in[4]
set_disable_timing sb_0__1_/mux_right_track_2/in[2]
set_disable_timing sb_0__1_/mux_right_track_4/in[2]
set_disable_timing sb_0__1_/mux_right_track_6/in[1]
set_disable_timing sb_0__1_/mux_bottom_track_1/in[5]
set_disable_timing sb_0__1_/mux_bottom_track_9/in[3]
set_disable_timing sb_0__1_/mux_bottom_track_9/in[4]
set_disable_timing sb_0__1_/mux_bottom_track_1/in[7]
set_disable_timing sb_0__1_/mux_bottom_track_9/in[5]
set_disable_timing sb_0__1_/mux_bottom_track_1/in[8]
set_disable_timing sb_0__1_/mux_bottom_track_9/in[6]
set_disable_timing sb_0__1_/mux_bottom_track_1/in[9]
set_disable_timing sb_0__1_/mux_bottom_track_9/in[7]
set_disable_timing sb_0__1_/mux_right_track_2/in[0]
set_disable_timing sb_0__1_/mux_bottom_track_1/in[0]
set_disable_timing sb_0__1_/mux_right_track_4/in[0]
set_disable_timing sb_0__1_/mux_bottom_track_9/in[0]
set_disable_timing sb_0__1_/mux_right_track_6/in[0]
set_disable_timing sb_0__1_/mux_bottom_track_1/in[1]
set_disable_timing sb_0__1_/mux_right_track_2/in[1]
set_disable_timing sb_0__1_/mux_right_track_4/in[1]
set_disable_timing sb_0__1_/mux_top_track_8/in[5]
set_disable_timing sb_0__1_/mux_bottom_track_1/in[2]
set_disable_timing sb_0__1_/mux_top_track_0/in[5]
set_disable_timing sb_0__1_/mux_bottom_track_9/in[1]
set_disable_timing sb_0__1_/mux_top_track_8/in[6]
set_disable_timing sb_0__1_/mux_bottom_track_1/in[3]
set_disable_timing sb_0__1_/mux_top_track_0/in[6]
set_disable_timing sb_0__1_/mux_bottom_track_9/in[2]
set_disable_timing sb_0__1_/mux_top_track_8/in[7]
set_disable_timing sb_0__1_/mux_bottom_track_1/in[4]
set_disable_timing sb_0__1_/mux_top_track_0/in[7]
set_disable_timing sb_0__1_/mux_right_track_6/in[2]
set_disable_timing sb_0__1_/mux_top_track_8/in[8]
set_disable_timing sb_0__1_/mux_right_track_4/in[3]
set_disable_timing sb_0__1_/mux_top_track_0/in[8]
set_disable_timing sb_0__1_/mux_right_track_2/in[3]
set_disable_timing sb_0__1_/mux_right_track_6/in[3]
set_disable_timing sb_0__1_/mux_right_track_4/in[4]
##################################################
# Disable timing for Switch block sb_0__2_
##################################################
set_disable_timing sb_0__2_/chanx_right_out[0]
set_disable_timing sb_0__2_/chanx_right_in[0]
set_disable_timing sb_0__2_/chanx_right_out[1]
set_disable_timing sb_0__2_/chanx_right_in[1]
set_disable_timing sb_0__2_/chanx_right_out[2]
set_disable_timing sb_0__2_/chanx_right_in[2]
set_disable_timing sb_0__2_/chanx_right_out[3]
set_disable_timing sb_0__2_/chanx_right_in[3]
set_disable_timing sb_0__2_/chanx_right_out[4]
set_disable_timing sb_0__2_/chanx_right_in[4]
set_disable_timing sb_0__2_/chany_bottom_in[0]
set_disable_timing sb_0__2_/chany_bottom_out[0]
set_disable_timing sb_0__2_/chany_bottom_in[1]
set_disable_timing sb_0__2_/chany_bottom_out[1]
set_disable_timing sb_0__2_/chany_bottom_in[2]
set_disable_timing sb_0__2_/chany_bottom_out[2]
set_disable_timing sb_0__2_/chany_bottom_in[3]
set_disable_timing sb_0__2_/chany_bottom_out[3]
set_disable_timing sb_0__2_/chany_bottom_in[4]
set_disable_timing sb_0__2_/chany_bottom_out[4]
set_disable_timing sb_0__2_/right_top_grid_bottom_width_0_height_0_subtile_0__pin_inpad_0_[0]
set_disable_timing sb_0__2_/right_top_grid_bottom_width_0_height_0_subtile_1__pin_inpad_0_[0]
set_disable_timing sb_0__2_/right_top_grid_bottom_width_0_height_0_subtile_2__pin_inpad_0_[0]
set_disable_timing sb_0__2_/right_top_grid_bottom_width_0_height_0_subtile_3__pin_inpad_0_[0]
set_disable_timing sb_0__2_/right_top_grid_bottom_width_0_height_0_subtile_4__pin_inpad_0_[0]
set_disable_timing sb_0__2_/right_top_grid_bottom_width_0_height_0_subtile_5__pin_inpad_0_[0]
set_disable_timing sb_0__2_/right_top_grid_bottom_width_0_height_0_subtile_6__pin_inpad_0_[0]
set_disable_timing sb_0__2_/right_top_grid_bottom_width_0_height_0_subtile_7__pin_inpad_0_[0]
set_disable_timing sb_0__2_/right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_0_[0]
set_disable_timing sb_0__2_/right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_4_[0]
set_disable_timing sb_0__2_/right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_8_[0]
set_disable_timing sb_0__2_/bottom_right_grid_left_width_0_height_0_subtile_0__pin_O_3_[0]
set_disable_timing sb_0__2_/bottom_right_grid_left_width_0_height_0_subtile_0__pin_O_7_[0]
set_disable_timing sb_0__2_/bottom_left_grid_right_width_0_height_0_subtile_0__pin_inpad_0_[0]
set_disable_timing sb_0__2_/bottom_left_grid_right_width_0_height_0_subtile_1__pin_inpad_0_[0]
set_disable_timing sb_0__2_/bottom_left_grid_right_width_0_height_0_subtile_2__pin_inpad_0_[0]
set_disable_timing sb_0__2_/bottom_left_grid_right_width_0_height_0_subtile_3__pin_inpad_0_[0]
set_disable_timing sb_0__2_/bottom_left_grid_right_width_0_height_0_subtile_4__pin_inpad_0_[0]
set_disable_timing sb_0__2_/bottom_left_grid_right_width_0_height_0_subtile_5__pin_inpad_0_[0]
set_disable_timing sb_0__2_/bottom_left_grid_right_width_0_height_0_subtile_6__pin_inpad_0_[0]
set_disable_timing sb_0__2_/bottom_left_grid_right_width_0_height_0_subtile_7__pin_inpad_0_[0]
set_disable_timing sb_0__2_/mux_right_track_0/in[0]
set_disable_timing sb_0__2_/mux_right_track_2/in[0]
set_disable_timing sb_0__2_/mux_right_track_4/in[0]
set_disable_timing sb_0__2_/mux_right_track_6/in[0]
set_disable_timing sb_0__2_/mux_right_track_8/in[0]
set_disable_timing sb_0__2_/mux_right_track_0/in[1]
set_disable_timing sb_0__2_/mux_right_track_2/in[1]
set_disable_timing sb_0__2_/mux_right_track_4/in[1]
set_disable_timing sb_0__2_/mux_right_track_6/in[1]
set_disable_timing sb_0__2_/mux_right_track_8/in[1]
set_disable_timing sb_0__2_/mux_right_track_0/in[2]
set_disable_timing sb_0__2_/mux_bottom_track_1/in[1]
set_disable_timing sb_0__2_/mux_bottom_track_3/in[1]
set_disable_timing sb_0__2_/mux_bottom_track_5/in[1]
set_disable_timing sb_0__2_/mux_bottom_track_7/in[1]
set_disable_timing sb_0__2_/mux_bottom_track_9/in[1]
set_disable_timing sb_0__2_/mux_bottom_track_1/in[2]
set_disable_timing sb_0__2_/mux_bottom_track_3/in[2]
set_disable_timing sb_0__2_/mux_bottom_track_5/in[2]
set_disable_timing sb_0__2_/mux_bottom_track_7/in[2]
set_disable_timing sb_0__2_/mux_bottom_track_9/in[2]
set_disable_timing sb_0__2_/mux_bottom_track_7/in[0]
set_disable_timing sb_0__2_/mux_bottom_track_5/in[0]
set_disable_timing sb_0__2_/mux_bottom_track_3/in[0]
set_disable_timing sb_0__2_/mux_bottom_track_1/in[0]
set_disable_timing sb_0__2_/mux_bottom_track_9/in[0]
set_disable_timing sb_0__2_/mux_right_track_6/in[2]
set_disable_timing sb_0__2_/mux_right_track_4/in[2]
set_disable_timing sb_0__2_/mux_right_track_2/in[2]
set_disable_timing sb_0__2_/mux_right_track_0/in[3]
set_disable_timing sb_0__2_/mux_right_track_8/in[2]
##################################################
# Disable timing for Switch block sb_1__0_
##################################################
set_disable_timing sb_1__0_/chany_top_out[0]
set_disable_timing sb_1__0_/chany_top_out[1]
set_disable_timing sb_1__0_/chany_top_in[1]
set_disable_timing sb_1__0_/chany_top_out[2]
set_disable_timing sb_1__0_/chany_top_in[2]
set_disable_timing sb_1__0_/chany_top_out[3]
set_disable_timing sb_1__0_/chany_top_in[3]
set_disable_timing sb_1__0_/chany_top_out[4]
set_disable_timing sb_1__0_/chany_top_in[4]
set_disable_timing sb_1__0_/chanx_right_out[0]
set_disable_timing sb_1__0_/chanx_right_in[0]
set_disable_timing sb_1__0_/chanx_right_out[1]
set_disable_timing sb_1__0_/chanx_right_in[1]
set_disable_timing sb_1__0_/chanx_right_in[2]
set_disable_timing sb_1__0_/chanx_right_out[3]
set_disable_timing sb_1__0_/chanx_right_in[3]
set_disable_timing sb_1__0_/chanx_left_in[0]
set_disable_timing sb_1__0_/chanx_left_out[0]
set_disable_timing sb_1__0_/chanx_left_out[1]
set_disable_timing sb_1__0_/chanx_left_in[2]
set_disable_timing sb_1__0_/chanx_left_out[2]
set_disable_timing sb_1__0_/chanx_left_in[3]
set_disable_timing sb_1__0_/chanx_left_out[3]
set_disable_timing sb_1__0_/chanx_left_in[4]
set_disable_timing sb_1__0_/chanx_left_out[4]
set_disable_timing sb_1__0_/top_left_grid_right_width_0_height_0_subtile_0__pin_O_1_[0]
set_disable_timing sb_1__0_/top_left_grid_right_width_0_height_0_subtile_0__pin_O_5_[0]
set_disable_timing sb_1__0_/top_left_grid_right_width_0_height_0_subtile_0__pin_O_9_[0]
set_disable_timing sb_1__0_/top_right_grid_left_width_0_height_0_subtile_0__pin_O_3_[0]
set_disable_timing sb_1__0_/top_right_grid_left_width_0_height_0_subtile_0__pin_O_7_[0]
set_disable_timing sb_1__0_/right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_2_[0]
set_disable_timing sb_1__0_/right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_6_[0]
set_disable_timing sb_1__0_/right_bottom_grid_top_width_0_height_0_subtile_0__pin_inpad_0_[0]
set_disable_timing sb_1__0_/right_bottom_grid_top_width_0_height_0_subtile_1__pin_inpad_0_[0]
set_disable_timing sb_1__0_/right_bottom_grid_top_width_0_height_0_subtile_2__pin_inpad_0_[0]
set_disable_timing sb_1__0_/right_bottom_grid_top_width_0_height_0_subtile_3__pin_inpad_0_[0]
set_disable_timing sb_1__0_/right_bottom_grid_top_width_0_height_0_subtile_4__pin_inpad_0_[0]
set_disable_timing sb_1__0_/right_bottom_grid_top_width_0_height_0_subtile_5__pin_inpad_0_[0]
set_disable_timing sb_1__0_/right_bottom_grid_top_width_0_height_0_subtile_6__pin_inpad_0_[0]
set_disable_timing sb_1__0_/left_top_grid_bottom_width_0_height_0_subtile_0__pin_O_2_[0]
set_disable_timing sb_1__0_/left_top_grid_bottom_width_0_height_0_subtile_0__pin_O_6_[0]
set_disable_timing sb_1__0_/left_bottom_grid_top_width_0_height_0_subtile_0__pin_inpad_0_[0]
set_disable_timing sb_1__0_/left_bottom_grid_top_width_0_height_0_subtile_1__pin_inpad_0_[0]
set_disable_timing sb_1__0_/left_bottom_grid_top_width_0_height_0_subtile_2__pin_inpad_0_[0]
set_disable_timing sb_1__0_/left_bottom_grid_top_width_0_height_0_subtile_3__pin_inpad_0_[0]
set_disable_timing sb_1__0_/left_bottom_grid_top_width_0_height_0_subtile_4__pin_inpad_0_[0]
set_disable_timing sb_1__0_/left_bottom_grid_top_width_0_height_0_subtile_5__pin_inpad_0_[0]
set_disable_timing sb_1__0_/left_bottom_grid_top_width_0_height_0_subtile_6__pin_inpad_0_[0]
set_disable_timing sb_1__0_/left_bottom_grid_top_width_0_height_0_subtile_7__pin_inpad_0_[0]
set_disable_timing sb_1__0_/mux_top_track_0/in[0]
set_disable_timing sb_1__0_/mux_top_track_2/in[0]
set_disable_timing sb_1__0_/mux_top_track_6/in[0]
set_disable_timing sb_1__0_/mux_top_track_8/in[0]
set_disable_timing sb_1__0_/mux_right_track_0/in[2]
set_disable_timing sb_1__0_/mux_right_track_8/in[3]
set_disable_timing sb_1__0_/mux_right_track_0/in[3]
set_disable_timing sb_1__0_/mux_right_track_8/in[4]
set_disable_timing sb_1__0_/mux_right_track_0/in[4]
set_disable_timing sb_1__0_/mux_right_track_8/in[5]
set_disable_timing sb_1__0_/mux_right_track_0/in[5]
set_disable_timing sb_1__0_/mux_right_track_8/in[6]
set_disable_timing sb_1__0_/mux_right_track_0/in[6]
set_disable_timing sb_1__0_/mux_right_track_8/in[7]
set_disable_timing sb_1__0_/mux_left_track_1/in[5]
set_disable_timing sb_1__0_/mux_left_track_9/in[3]
set_disable_timing sb_1__0_/mux_left_track_1/in[6]
set_disable_timing sb_1__0_/mux_left_track_9/in[4]
set_disable_timing sb_1__0_/mux_left_track_1/in[7]
set_disable_timing sb_1__0_/mux_left_track_9/in[5]
set_disable_timing sb_1__0_/mux_left_track_1/in[8]
set_disable_timing sb_1__0_/mux_left_track_9/in[6]
set_disable_timing sb_1__0_/mux_left_track_1/in[9]
set_disable_timing sb_1__0_/mux_left_track_9/in[7]
set_disable_timing sb_1__0_/mux_left_track_1/in[0]
set_disable_timing sb_1__0_/mux_right_track_0/in[0]
set_disable_timing sb_1__0_/mux_left_track_9/in[0]
set_disable_timing sb_1__0_/mux_right_track_8/in[1]
set_disable_timing sb_1__0_/mux_left_track_1/in[1]
set_disable_timing sb_1__0_/mux_right_track_0/in[1]
set_disable_timing sb_1__0_/mux_left_track_9/in[1]
set_disable_timing sb_1__0_/mux_right_track_8/in[2]
set_disable_timing sb_1__0_/mux_left_track_1/in[2]
set_disable_timing sb_1__0_/mux_top_track_8/in[1]
set_disable_timing sb_1__0_/mux_left_track_1/in[3]
set_disable_timing sb_1__0_/mux_top_track_0/in[1]
set_disable_timing sb_1__0_/mux_left_track_9/in[2]
set_disable_timing sb_1__0_/mux_top_track_2/in[1]
set_disable_timing sb_1__0_/mux_left_track_1/in[4]
set_disable_timing sb_1__0_/mux_top_track_8/in[2]
set_disable_timing sb_1__0_/mux_top_track_0/in[2]
set_disable_timing sb_1__0_/mux_top_track_0/in[3]
set_disable_timing sb_1__0_/mux_right_track_0/in[7]
set_disable_timing sb_1__0_/mux_top_track_8/in[3]
set_disable_timing sb_1__0_/mux_right_track_8/in[8]
set_disable_timing sb_1__0_/mux_top_track_6/in[1]
set_disable_timing sb_1__0_/mux_right_track_0/in[8]
set_disable_timing sb_1__0_/mux_top_track_0/in[4]
set_disable_timing sb_1__0_/mux_top_track_8/in[4]
##################################################
# Disable timing for Switch block sb_1__1_
##################################################
set_disable_timing sb_1__1_/chany_top_out[0]
set_disable_timing sb_1__1_/chany_top_in[0]
set_disable_timing sb_1__1_/chany_top_out[1]
set_disable_timing sb_1__1_/chany_top_in[1]
set_disable_timing sb_1__1_/chany_top_out[2]
set_disable_timing sb_1__1_/chany_top_in[2]
set_disable_timing sb_1__1_/chany_top_out[3]
set_disable_timing sb_1__1_/chany_top_in[3]
set_disable_timing sb_1__1_/chany_top_out[4]
set_disable_timing sb_1__1_/chany_top_in[4]
set_disable_timing sb_1__1_/chanx_right_out[0]
set_disable_timing sb_1__1_/chanx_right_in[0]
set_disable_timing sb_1__1_/chanx_right_out[1]
set_disable_timing sb_1__1_/chanx_right_in[1]
set_disable_timing sb_1__1_/chanx_right_out[2]
set_disable_timing sb_1__1_/chanx_right_in[2]
set_disable_timing sb_1__1_/chanx_right_out[3]
set_disable_timing sb_1__1_/chanx_right_out[4]
set_disable_timing sb_1__1_/chanx_right_in[4]
set_disable_timing sb_1__1_/chany_bottom_in[0]
set_disable_timing sb_1__1_/chany_bottom_in[1]
set_disable_timing sb_1__1_/chany_bottom_out[1]
set_disable_timing sb_1__1_/chany_bottom_in[2]
set_disable_timing sb_1__1_/chany_bottom_out[2]
set_disable_timing sb_1__1_/chany_bottom_in[3]
set_disable_timing sb_1__1_/chany_bottom_out[3]
set_disable_timing sb_1__1_/chany_bottom_in[4]
set_disable_timing sb_1__1_/chany_bottom_out[4]
set_disable_timing sb_1__1_/chanx_left_in[0]
set_disable_timing sb_1__1_/chanx_left_out[0]
set_disable_timing sb_1__1_/chanx_left_in[1]
set_disable_timing sb_1__1_/chanx_left_out[1]
set_disable_timing sb_1__1_/chanx_left_in[2]
set_disable_timing sb_1__1_/chanx_left_out[2]
set_disable_timing sb_1__1_/chanx_left_in[3]
set_disable_timing sb_1__1_/chanx_left_out[3]
set_disable_timing sb_1__1_/chanx_left_in[4]
set_disable_timing sb_1__1_/chanx_left_out[4]
set_disable_timing sb_1__1_/top_left_grid_right_width_0_height_0_subtile_0__pin_O_1_[0]
set_disable_timing sb_1__1_/top_left_grid_right_width_0_height_0_subtile_0__pin_O_5_[0]
set_disable_timing sb_1__1_/top_left_grid_right_width_0_height_0_subtile_0__pin_O_9_[0]
set_disable_timing sb_1__1_/top_right_grid_left_width_0_height_0_subtile_0__pin_O_3_[0]
set_disable_timing sb_1__1_/top_right_grid_left_width_0_height_0_subtile_0__pin_O_7_[0]
set_disable_timing sb_1__1_/right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_2_[0]
set_disable_timing sb_1__1_/right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_6_[0]
set_disable_timing sb_1__1_/right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_0_[0]
set_disable_timing sb_1__1_/right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_4_[0]
set_disable_timing sb_1__1_/right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_8_[0]
set_disable_timing sb_1__1_/bottom_right_grid_left_width_0_height_0_subtile_0__pin_O_3_[0]
set_disable_timing sb_1__1_/bottom_right_grid_left_width_0_height_0_subtile_0__pin_O_7_[0]
set_disable_timing sb_1__1_/bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_1_[0]
set_disable_timing sb_1__1_/bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_5_[0]
set_disable_timing sb_1__1_/bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_9_[0]
set_disable_timing sb_1__1_/left_top_grid_bottom_width_0_height_0_subtile_0__pin_O_2_[0]
set_disable_timing sb_1__1_/left_top_grid_bottom_width_0_height_0_subtile_0__pin_O_6_[0]
set_disable_timing sb_1__1_/left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_0_[0]
set_disable_timing sb_1__1_/left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_4_[0]
set_disable_timing sb_1__1_/left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_8_[0]
set_disable_timing sb_1__1_/mux_top_track_0/in[0]
set_disable_timing sb_1__1_/mux_top_track_8/in[0]
set_disable_timing sb_1__1_/mux_top_track_0/in[1]
set_disable_timing sb_1__1_/mux_top_track_8/in[1]
set_disable_timing sb_1__1_/mux_top_track_0/in[2]
set_disable_timing sb_1__1_/mux_right_track_0/in[2]
set_disable_timing sb_1__1_/mux_right_track_8/in[3]
set_disable_timing sb_1__1_/mux_right_track_0/in[3]
set_disable_timing sb_1__1_/mux_right_track_8/in[4]
set_disable_timing sb_1__1_/mux_right_track_0/in[4]
set_disable_timing sb_1__1_/mux_bottom_track_1/in[5]
set_disable_timing sb_1__1_/mux_bottom_track_9/in[3]
set_disable_timing sb_1__1_/mux_bottom_track_1/in[6]
set_disable_timing sb_1__1_/mux_bottom_track_9/in[4]
set_disable_timing sb_1__1_/mux_bottom_track_1/in[7]
set_disable_timing sb_1__1_/mux_left_track_1/in[7]
set_disable_timing sb_1__1_/mux_left_track_9/in[6]
set_disable_timing sb_1__1_/mux_left_track_1/in[8]
set_disable_timing sb_1__1_/mux_left_track_9/in[7]
set_disable_timing sb_1__1_/mux_left_track_1/in[9]
set_disable_timing sb_1__1_/mux_right_track_8/in[0]
set_disable_timing sb_1__1_/mux_bottom_track_1/in[0]
set_disable_timing sb_1__1_/mux_left_track_1/in[0]
set_disable_timing sb_1__1_/mux_right_track_0/in[0]
set_disable_timing sb_1__1_/mux_bottom_track_9/in[0]
set_disable_timing sb_1__1_/mux_left_track_9/in[0]
set_disable_timing sb_1__1_/mux_right_track_8/in[1]
set_disable_timing sb_1__1_/mux_bottom_track_1/in[1]
set_disable_timing sb_1__1_/mux_left_track_1/in[1]
set_disable_timing sb_1__1_/mux_right_track_8/in[2]
set_disable_timing sb_1__1_/mux_left_track_1/in[2]
set_disable_timing sb_1__1_/mux_right_track_0/in[1]
set_disable_timing sb_1__1_/mux_left_track_9/in[1]
set_disable_timing sb_1__1_/mux_top_track_8/in[2]
set_disable_timing sb_1__1_/mux_bottom_track_1/in[2]
set_disable_timing sb_1__1_/mux_left_track_1/in[3]
set_disable_timing sb_1__1_/mux_top_track_0/in[3]
set_disable_timing sb_1__1_/mux_bottom_track_9/in[1]
set_disable_timing sb_1__1_/mux_left_track_9/in[2]
set_disable_timing sb_1__1_/mux_top_track_8/in[3]
set_disable_timing sb_1__1_/mux_bottom_track_1/in[3]
set_disable_timing sb_1__1_/mux_left_track_1/in[4]
set_disable_timing sb_1__1_/mux_top_track_8/in[4]
set_disable_timing sb_1__1_/mux_top_track_0/in[4]
set_disable_timing sb_1__1_/mux_bottom_track_9/in[2]
set_disable_timing sb_1__1_/mux_top_track_0/in[5]
set_disable_timing sb_1__1_/mux_right_track_0/in[5]
set_disable_timing sb_1__1_/mux_left_track_9/in[3]
set_disable_timing sb_1__1_/mux_top_track_8/in[5]
set_disable_timing sb_1__1_/mux_right_track_8/in[5]
set_disable_timing sb_1__1_/mux_left_track_1/in[5]
set_disable_timing sb_1__1_/mux_top_track_0/in[6]
set_disable_timing sb_1__1_/mux_right_track_0/in[6]
set_disable_timing sb_1__1_/mux_left_track_9/in[4]
set_disable_timing sb_1__1_/mux_right_track_0/in[7]
set_disable_timing sb_1__1_/mux_left_track_9/in[5]
set_disable_timing sb_1__1_/mux_right_track_8/in[6]
set_disable_timing sb_1__1_/mux_left_track_1/in[6]
set_disable_timing sb_1__1_/mux_top_track_0/in[7]
set_disable_timing sb_1__1_/mux_right_track_0/in[8]
set_disable_timing sb_1__1_/mux_bottom_track_9/in[5]
set_disable_timing sb_1__1_/mux_top_track_8/in[6]
set_disable_timing sb_1__1_/mux_right_track_8/in[7]
set_disable_timing sb_1__1_/mux_bottom_track_1/in[8]
set_disable_timing sb_1__1_/mux_top_track_0/in[8]
set_disable_timing sb_1__1_/mux_right_track_0/in[9]
set_disable_timing sb_1__1_/mux_bottom_track_9/in[6]
set_disable_timing sb_1__1_/mux_top_track_0/in[9]
set_disable_timing sb_1__1_/mux_bottom_track_9/in[7]
set_disable_timing sb_1__1_/mux_top_track_8/in[7]
set_disable_timing sb_1__1_/mux_bottom_track_1/in[9]
##################################################
# Disable timing for Switch block sb_1__2_
##################################################
set_disable_timing sb_1__2_/chanx_right_out[0]
set_disable_timing sb_1__2_/chanx_right_in[0]
set_disable_timing sb_1__2_/chanx_right_out[1]
set_disable_timing sb_1__2_/chanx_right_in[1]
set_disable_timing sb_1__2_/chanx_right_out[2]
set_disable_timing sb_1__2_/chanx_right_in[2]
set_disable_timing sb_1__2_/chanx_right_out[3]
set_disable_timing sb_1__2_/chanx_right_in[3]
set_disable_timing sb_1__2_/chanx_right_out[4]
set_disable_timing sb_1__2_/chanx_right_in[4]
set_disable_timing sb_1__2_/chany_bottom_in[0]
set_disable_timing sb_1__2_/chany_bottom_out[0]
set_disable_timing sb_1__2_/chany_bottom_in[1]
set_disable_timing sb_1__2_/chany_bottom_out[1]
set_disable_timing sb_1__2_/chany_bottom_in[2]
set_disable_timing sb_1__2_/chany_bottom_out[2]
set_disable_timing sb_1__2_/chany_bottom_in[3]
set_disable_timing sb_1__2_/chany_bottom_out[3]
set_disable_timing sb_1__2_/chany_bottom_in[4]
set_disable_timing sb_1__2_/chany_bottom_out[4]
set_disable_timing sb_1__2_/chanx_left_in[0]
set_disable_timing sb_1__2_/chanx_left_out[0]
set_disable_timing sb_1__2_/chanx_left_in[1]
set_disable_timing sb_1__2_/chanx_left_out[1]
set_disable_timing sb_1__2_/chanx_left_in[2]
set_disable_timing sb_1__2_/chanx_left_out[2]
set_disable_timing sb_1__2_/chanx_left_in[3]
set_disable_timing sb_1__2_/chanx_left_out[3]
set_disable_timing sb_1__2_/chanx_left_in[4]
set_disable_timing sb_1__2_/chanx_left_out[4]
set_disable_timing sb_1__2_/right_top_grid_bottom_width_0_height_0_subtile_0__pin_inpad_0_[0]
set_disable_timing sb_1__2_/right_top_grid_bottom_width_0_height_0_subtile_1__pin_inpad_0_[0]
set_disable_timing sb_1__2_/right_top_grid_bottom_width_0_height_0_subtile_2__pin_inpad_0_[0]
set_disable_timing sb_1__2_/right_top_grid_bottom_width_0_height_0_subtile_3__pin_inpad_0_[0]
set_disable_timing sb_1__2_/right_top_grid_bottom_width_0_height_0_subtile_4__pin_inpad_0_[0]
set_disable_timing sb_1__2_/right_top_grid_bottom_width_0_height_0_subtile_5__pin_inpad_0_[0]
set_disable_timing sb_1__2_/right_top_grid_bottom_width_0_height_0_subtile_6__pin_inpad_0_[0]
set_disable_timing sb_1__2_/right_top_grid_bottom_width_0_height_0_subtile_7__pin_inpad_0_[0]
set_disable_timing sb_1__2_/right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_0_[0]
set_disable_timing sb_1__2_/right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_4_[0]
set_disable_timing sb_1__2_/right_bottom_grid_top_width_0_height_0_subtile_0__pin_O_8_[0]
set_disable_timing sb_1__2_/bottom_right_grid_left_width_0_height_0_subtile_0__pin_O_3_[0]
set_disable_timing sb_1__2_/bottom_right_grid_left_width_0_height_0_subtile_0__pin_O_7_[0]
set_disable_timing sb_1__2_/bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_1_[0]
set_disable_timing sb_1__2_/bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_5_[0]
set_disable_timing sb_1__2_/bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_9_[0]
set_disable_timing sb_1__2_/left_top_grid_bottom_width_0_height_0_subtile_0__pin_inpad_0_[0]
set_disable_timing sb_1__2_/left_top_grid_bottom_width_0_height_0_subtile_1__pin_inpad_0_[0]
set_disable_timing sb_1__2_/left_top_grid_bottom_width_0_height_0_subtile_2__pin_inpad_0_[0]
set_disable_timing sb_1__2_/left_top_grid_bottom_width_0_height_0_subtile_3__pin_inpad_0_[0]
set_disable_timing sb_1__2_/left_top_grid_bottom_width_0_height_0_subtile_4__pin_inpad_0_[0]
set_disable_timing sb_1__2_/left_top_grid_bottom_width_0_height_0_subtile_5__pin_inpad_0_[0]
set_disable_timing sb_1__2_/left_top_grid_bottom_width_0_height_0_subtile_6__pin_inpad_0_[0]
set_disable_timing sb_1__2_/left_top_grid_bottom_width_0_height_0_subtile_7__pin_inpad_0_[0]
set_disable_timing sb_1__2_/left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_0_[0]
set_disable_timing sb_1__2_/left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_4_[0]
set_disable_timing sb_1__2_/left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_8_[0]
set_disable_timing sb_1__2_/mux_right_track_0/in[0]
set_disable_timing sb_1__2_/mux_right_track_8/in[0]
set_disable_timing sb_1__2_/mux_right_track_0/in[1]
set_disable_timing sb_1__2_/mux_right_track_8/in[1]
set_disable_timing sb_1__2_/mux_right_track_0/in[2]
set_disable_timing sb_1__2_/mux_right_track_8/in[2]
set_disable_timing sb_1__2_/mux_right_track_0/in[3]
set_disable_timing sb_1__2_/mux_right_track_8/in[3]
set_disable_timing sb_1__2_/mux_right_track_0/in[4]
set_disable_timing sb_1__2_/mux_right_track_8/in[4]
set_disable_timing sb_1__2_/mux_right_track_0/in[5]
set_disable_timing sb_1__2_/mux_bottom_track_1/in[0]
set_disable_timing sb_1__2_/mux_bottom_track_3/in[1]
set_disable_timing sb_1__2_/mux_bottom_track_5/in[2]
set_disable_timing sb_1__2_/mux_bottom_track_7/in[2]
set_disable_timing sb_1__2_/mux_bottom_track_9/in[0]
set_disable_timing sb_1__2_/mux_left_track_1/in[4]
set_disable_timing sb_1__2_/mux_left_track_9/in[4]
set_disable_timing sb_1__2_/mux_left_track_1/in[5]
set_disable_timing sb_1__2_/mux_left_track_9/in[5]
set_disable_timing sb_1__2_/mux_left_track_1/in[6]
set_disable_timing sb_1__2_/mux_left_track_9/in[6]
set_disable_timing sb_1__2_/mux_left_track_1/in[7]
set_disable_timing sb_1__2_/mux_left_track_9/in[7]
set_disable_timing sb_1__2_/mux_left_track_1/in[8]
set_disable_timing sb_1__2_/mux_left_track_9/in[8]
set_disable_timing sb_1__2_/mux_left_track_1/in[9]
set_disable_timing sb_1__2_/mux_bottom_track_7/in[0]
set_disable_timing sb_1__2_/mux_left_track_1/in[0]
set_disable_timing sb_1__2_/mux_bottom_track_5/in[0]
set_disable_timing sb_1__2_/mux_left_track_9/in[0]
set_disable_timing sb_1__2_/mux_bottom_track_3/in[0]
set_disable_timing sb_1__2_/mux_left_track_1/in[1]
set_disable_timing sb_1__2_/mux_bottom_track_7/in[1]
set_disable_timing sb_1__2_/mux_bottom_track_5/in[1]
set_disable_timing sb_1__2_/mux_right_track_0/in[6]
set_disable_timing sb_1__2_/mux_left_track_9/in[1]
set_disable_timing sb_1__2_/mux_right_track_8/in[5]
set_disable_timing sb_1__2_/mux_left_track_1/in[2]
set_disable_timing sb_1__2_/mux_right_track_0/in[7]
set_disable_timing sb_1__2_/mux_left_track_9/in[2]
set_disable_timing sb_1__2_/mux_right_track_8/in[6]
set_disable_timing sb_1__2_/mux_left_track_1/in[3]
set_disable_timing sb_1__2_/mux_right_track_0/in[8]
set_disable_timing sb_1__2_/mux_left_track_9/in[3]
set_disable_timing sb_1__2_/mux_right_track_0/in[9]
set_disable_timing sb_1__2_/mux_bottom_track_9/in[1]
set_disable_timing sb_1__2_/mux_right_track_8/in[7]
set_disable_timing sb_1__2_/mux_bottom_track_1/in[1]
set_disable_timing sb_1__2_/mux_right_track_0/in[10]
set_disable_timing sb_1__2_/mux_bottom_track_3/in[2]
set_disable_timing sb_1__2_/mux_bottom_track_9/in[2]
set_disable_timing sb_1__2_/mux_bottom_track_1/in[2]
##################################################
# Disable timing for Switch block sb_2__0_
##################################################
set_disable_timing sb_2__0_/chany_top_out[0]
set_disable_timing sb_2__0_/chany_top_in[0]
set_disable_timing sb_2__0_/chany_top_out[1]
set_disable_timing sb_2__0_/chany_top_in[1]
set_disable_timing sb_2__0_/chany_top_in[2]
set_disable_timing sb_2__0_/chany_top_out[3]
set_disable_timing sb_2__0_/chany_top_in[3]
set_disable_timing sb_2__0_/chany_top_out[4]
set_disable_timing sb_2__0_/chany_top_in[4]
set_disable_timing sb_2__0_/chanx_left_in[0]
set_disable_timing sb_2__0_/chanx_left_out[0]
set_disable_timing sb_2__0_/chanx_left_in[1]
set_disable_timing sb_2__0_/chanx_left_out[1]
set_disable_timing sb_2__0_/chanx_left_out[2]
set_disable_timing sb_2__0_/chanx_left_in[3]
set_disable_timing sb_2__0_/chanx_left_out[3]
set_disable_timing sb_2__0_/top_left_grid_right_width_0_height_0_subtile_0__pin_O_1_[0]
set_disable_timing sb_2__0_/top_left_grid_right_width_0_height_0_subtile_0__pin_O_5_[0]
set_disable_timing sb_2__0_/top_right_grid_left_width_0_height_0_subtile_0__pin_inpad_0_[0]
set_disable_timing sb_2__0_/top_right_grid_left_width_0_height_0_subtile_1__pin_inpad_0_[0]
set_disable_timing sb_2__0_/top_right_grid_left_width_0_height_0_subtile_2__pin_inpad_0_[0]
set_disable_timing sb_2__0_/top_right_grid_left_width_0_height_0_subtile_3__pin_inpad_0_[0]
set_disable_timing sb_2__0_/top_right_grid_left_width_0_height_0_subtile_4__pin_inpad_0_[0]
set_disable_timing sb_2__0_/top_right_grid_left_width_0_height_0_subtile_5__pin_inpad_0_[0]
set_disable_timing sb_2__0_/top_right_grid_left_width_0_height_0_subtile_6__pin_inpad_0_[0]
set_disable_timing sb_2__0_/top_right_grid_left_width_0_height_0_subtile_7__pin_inpad_0_[0]
set_disable_timing sb_2__0_/left_top_grid_bottom_width_0_height_0_subtile_0__pin_O_2_[0]
set_disable_timing sb_2__0_/left_top_grid_bottom_width_0_height_0_subtile_0__pin_O_6_[0]
set_disable_timing sb_2__0_/left_bottom_grid_top_width_0_height_0_subtile_0__pin_inpad_0_[0]
set_disable_timing sb_2__0_/left_bottom_grid_top_width_0_height_0_subtile_1__pin_inpad_0_[0]
set_disable_timing sb_2__0_/left_bottom_grid_top_width_0_height_0_subtile_2__pin_inpad_0_[0]
set_disable_timing sb_2__0_/left_bottom_grid_top_width_0_height_0_subtile_3__pin_inpad_0_[0]
set_disable_timing sb_2__0_/left_bottom_grid_top_width_0_height_0_subtile_4__pin_inpad_0_[0]
set_disable_timing sb_2__0_/left_bottom_grid_top_width_0_height_0_subtile_5__pin_inpad_0_[0]
set_disable_timing sb_2__0_/left_bottom_grid_top_width_0_height_0_subtile_6__pin_inpad_0_[0]
set_disable_timing sb_2__0_/mux_top_track_0/in[0]
set_disable_timing sb_2__0_/mux_top_track_2/in[0]
set_disable_timing sb_2__0_/mux_top_track_6/in[0]
set_disable_timing sb_2__0_/mux_top_track_8/in[0]
set_disable_timing sb_2__0_/mux_top_track_0/in[1]
set_disable_timing sb_2__0_/mux_top_track_2/in[1]
set_disable_timing sb_2__0_/mux_top_track_4/in[1]
set_disable_timing sb_2__0_/mux_top_track_6/in[1]
set_disable_timing sb_2__0_/mux_top_track_8/in[1]
set_disable_timing sb_2__0_/mux_top_track_0/in[2]
set_disable_timing sb_2__0_/mux_left_track_1/in[1]
set_disable_timing sb_2__0_/mux_left_track_3/in[1]
set_disable_timing sb_2__0_/mux_left_track_5/in[1]
set_disable_timing sb_2__0_/mux_left_track_7/in[1]
set_disable_timing sb_2__0_/mux_left_track_9/in[1]
set_disable_timing sb_2__0_/mux_left_track_1/in[2]
set_disable_timing sb_2__0_/mux_left_track_3/in[2]
set_disable_timing sb_2__0_/mux_left_track_5/in[2]
set_disable_timing sb_2__0_/mux_left_track_7/in[2]
set_disable_timing sb_2__0_/mux_left_track_1/in[0]
set_disable_timing sb_2__0_/mux_left_track_9/in[0]
set_disable_timing sb_2__0_/mux_left_track_7/in[0]
set_disable_timing sb_2__0_/mux_left_track_5/in[0]
set_disable_timing sb_2__0_/mux_left_track_3/in[0]
set_disable_timing sb_2__0_/mux_top_track_0/in[3]
set_disable_timing sb_2__0_/mux_top_track_8/in[2]
set_disable_timing sb_2__0_/mux_top_track_6/in[2]
set_disable_timing sb_2__0_/mux_top_track_4/in[2]
set_disable_timing sb_2__0_/mux_top_track_2/in[2]
##################################################
# Disable timing for Switch block sb_2__1_
##################################################
set_disable_timing sb_2__1_/chany_top_out[0]
set_disable_timing sb_2__1_/chany_top_in[0]
set_disable_timing sb_2__1_/chany_top_out[1]
set_disable_timing sb_2__1_/chany_top_in[1]
set_disable_timing sb_2__1_/chany_top_out[2]
set_disable_timing sb_2__1_/chany_top_in[2]
set_disable_timing sb_2__1_/chany_top_in[3]
set_disable_timing sb_2__1_/chany_top_out[4]
set_disable_timing sb_2__1_/chany_top_in[4]
set_disable_timing sb_2__1_/chany_bottom_in[0]
set_disable_timing sb_2__1_/chany_bottom_out[0]
set_disable_timing sb_2__1_/chany_bottom_in[1]
set_disable_timing sb_2__1_/chany_bottom_out[1]
set_disable_timing sb_2__1_/chany_bottom_out[2]
set_disable_timing sb_2__1_/chany_bottom_in[3]
set_disable_timing sb_2__1_/chany_bottom_out[3]
set_disable_timing sb_2__1_/chany_bottom_in[4]
set_disable_timing sb_2__1_/chany_bottom_out[4]
set_disable_timing sb_2__1_/chanx_left_in[0]
set_disable_timing sb_2__1_/chanx_left_out[0]
set_disable_timing sb_2__1_/chanx_left_in[1]
set_disable_timing sb_2__1_/chanx_left_out[1]
set_disable_timing sb_2__1_/chanx_left_in[2]
set_disable_timing sb_2__1_/chanx_left_out[2]
set_disable_timing sb_2__1_/chanx_left_in[3]
set_disable_timing sb_2__1_/chanx_left_in[4]
set_disable_timing sb_2__1_/chanx_left_out[4]
set_disable_timing sb_2__1_/top_left_grid_right_width_0_height_0_subtile_0__pin_O_1_[0]
set_disable_timing sb_2__1_/top_left_grid_right_width_0_height_0_subtile_0__pin_O_5_[0]
set_disable_timing sb_2__1_/top_left_grid_right_width_0_height_0_subtile_0__pin_O_9_[0]
set_disable_timing sb_2__1_/top_right_grid_left_width_0_height_0_subtile_0__pin_inpad_0_[0]
set_disable_timing sb_2__1_/top_right_grid_left_width_0_height_0_subtile_1__pin_inpad_0_[0]
set_disable_timing sb_2__1_/top_right_grid_left_width_0_height_0_subtile_2__pin_inpad_0_[0]
set_disable_timing sb_2__1_/top_right_grid_left_width_0_height_0_subtile_3__pin_inpad_0_[0]
set_disable_timing sb_2__1_/top_right_grid_left_width_0_height_0_subtile_4__pin_inpad_0_[0]
set_disable_timing sb_2__1_/top_right_grid_left_width_0_height_0_subtile_5__pin_inpad_0_[0]
set_disable_timing sb_2__1_/top_right_grid_left_width_0_height_0_subtile_6__pin_inpad_0_[0]
set_disable_timing sb_2__1_/top_right_grid_left_width_0_height_0_subtile_7__pin_inpad_0_[0]
set_disable_timing sb_2__1_/bottom_right_grid_left_width_0_height_0_subtile_0__pin_inpad_0_[0]
set_disable_timing sb_2__1_/bottom_right_grid_left_width_0_height_0_subtile_1__pin_inpad_0_[0]
set_disable_timing sb_2__1_/bottom_right_grid_left_width_0_height_0_subtile_2__pin_inpad_0_[0]
set_disable_timing sb_2__1_/bottom_right_grid_left_width_0_height_0_subtile_3__pin_inpad_0_[0]
set_disable_timing sb_2__1_/bottom_right_grid_left_width_0_height_0_subtile_4__pin_inpad_0_[0]
set_disable_timing sb_2__1_/bottom_right_grid_left_width_0_height_0_subtile_5__pin_inpad_0_[0]
set_disable_timing sb_2__1_/bottom_right_grid_left_width_0_height_0_subtile_6__pin_inpad_0_[0]
set_disable_timing sb_2__1_/bottom_right_grid_left_width_0_height_0_subtile_7__pin_inpad_0_[0]
set_disable_timing sb_2__1_/bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_1_[0]
set_disable_timing sb_2__1_/bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_5_[0]
set_disable_timing sb_2__1_/left_top_grid_bottom_width_0_height_0_subtile_0__pin_O_2_[0]
set_disable_timing sb_2__1_/left_top_grid_bottom_width_0_height_0_subtile_0__pin_O_6_[0]
set_disable_timing sb_2__1_/left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_0_[0]
set_disable_timing sb_2__1_/left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_4_[0]
set_disable_timing sb_2__1_/left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_8_[0]
set_disable_timing sb_2__1_/mux_top_track_0/in[0]
set_disable_timing sb_2__1_/mux_top_track_8/in[0]
set_disable_timing sb_2__1_/mux_top_track_0/in[1]
set_disable_timing sb_2__1_/mux_top_track_8/in[1]
set_disable_timing sb_2__1_/mux_top_track_0/in[2]
set_disable_timing sb_2__1_/mux_top_track_8/in[2]
set_disable_timing sb_2__1_/mux_top_track_0/in[3]
set_disable_timing sb_2__1_/mux_top_track_8/in[3]
set_disable_timing sb_2__1_/mux_top_track_0/in[4]
set_disable_timing sb_2__1_/mux_top_track_8/in[4]
set_disable_timing sb_2__1_/mux_top_track_0/in[5]
set_disable_timing sb_2__1_/mux_bottom_track_1/in[2]
set_disable_timing sb_2__1_/mux_bottom_track_9/in[1]
set_disable_timing sb_2__1_/mux_bottom_track_1/in[3]
set_disable_timing sb_2__1_/mux_bottom_track_9/in[2]
set_disable_timing sb_2__1_/mux_bottom_track_1/in[4]
set_disable_timing sb_2__1_/mux_bottom_track_9/in[3]
set_disable_timing sb_2__1_/mux_bottom_track_1/in[5]
set_disable_timing sb_2__1_/mux_bottom_track_9/in[4]
set_disable_timing sb_2__1_/mux_bottom_track_1/in[6]
set_disable_timing sb_2__1_/mux_bottom_track_9/in[5]
set_disable_timing sb_2__1_/mux_bottom_track_1/in[7]
set_disable_timing sb_2__1_/mux_left_track_1/in[2]
set_disable_timing sb_2__1_/mux_left_track_3/in[2]
set_disable_timing sb_2__1_/mux_left_track_5/in[2]
set_disable_timing sb_2__1_/mux_left_track_7/in[2]
set_disable_timing sb_2__1_/mux_left_track_9/in[2]
set_disable_timing sb_2__1_/mux_bottom_track_1/in[0]
set_disable_timing sb_2__1_/mux_left_track_1/in[0]
set_disable_timing sb_2__1_/mux_bottom_track_9/in[0]
set_disable_timing sb_2__1_/mux_left_track_9/in[0]
set_disable_timing sb_2__1_/mux_bottom_track_1/in[1]
set_disable_timing sb_2__1_/mux_left_track_7/in[0]
set_disable_timing sb_2__1_/mux_left_track_1/in[1]
set_disable_timing sb_2__1_/mux_left_track_9/in[1]
set_disable_timing sb_2__1_/mux_top_track_0/in[6]
set_disable_timing sb_2__1_/mux_left_track_3/in[0]
set_disable_timing sb_2__1_/mux_top_track_8/in[5]
set_disable_timing sb_2__1_/mux_left_track_5/in[0]
set_disable_timing sb_2__1_/mux_top_track_0/in[7]
set_disable_timing sb_2__1_/mux_left_track_3/in[1]
set_disable_timing sb_2__1_/mux_left_track_5/in[1]
set_disable_timing sb_2__1_/mux_top_track_0/in[8]
set_disable_timing sb_2__1_/mux_bottom_track_9/in[6]
set_disable_timing sb_2__1_/mux_top_track_8/in[6]
set_disable_timing sb_2__1_/mux_bottom_track_1/in[8]
set_disable_timing sb_2__1_/mux_top_track_0/in[9]
set_disable_timing sb_2__1_/mux_bottom_track_9/in[7]
set_disable_timing sb_2__1_/mux_top_track_8/in[7]
set_disable_timing sb_2__1_/mux_bottom_track_1/in[9]
set_disable_timing sb_2__1_/mux_top_track_0/in[10]
set_disable_timing sb_2__1_/mux_bottom_track_9/in[8]
##################################################
# Disable timing for Switch block sb_2__2_
##################################################
set_disable_timing sb_2__2_/chany_bottom_in[0]
set_disable_timing sb_2__2_/chany_bottom_out[0]
set_disable_timing sb_2__2_/chany_bottom_in[1]
set_disable_timing sb_2__2_/chany_bottom_out[1]
set_disable_timing sb_2__2_/chany_bottom_in[2]
set_disable_timing sb_2__2_/chany_bottom_out[2]
set_disable_timing sb_2__2_/chany_bottom_out[3]
set_disable_timing sb_2__2_/chany_bottom_in[4]
set_disable_timing sb_2__2_/chany_bottom_out[4]
set_disable_timing sb_2__2_/chanx_left_in[0]
set_disable_timing sb_2__2_/chanx_left_out[0]
set_disable_timing sb_2__2_/chanx_left_in[1]
set_disable_timing sb_2__2_/chanx_left_out[1]
set_disable_timing sb_2__2_/chanx_left_in[2]
set_disable_timing sb_2__2_/chanx_left_out[2]
set_disable_timing sb_2__2_/chanx_left_in[3]
set_disable_timing sb_2__2_/chanx_left_out[3]
set_disable_timing sb_2__2_/chanx_left_in[4]
set_disable_timing sb_2__2_/chanx_left_out[4]
set_disable_timing sb_2__2_/bottom_right_grid_left_width_0_height_0_subtile_0__pin_inpad_0_[0]
set_disable_timing sb_2__2_/bottom_right_grid_left_width_0_height_0_subtile_1__pin_inpad_0_[0]
set_disable_timing sb_2__2_/bottom_right_grid_left_width_0_height_0_subtile_2__pin_inpad_0_[0]
set_disable_timing sb_2__2_/bottom_right_grid_left_width_0_height_0_subtile_3__pin_inpad_0_[0]
set_disable_timing sb_2__2_/bottom_right_grid_left_width_0_height_0_subtile_4__pin_inpad_0_[0]
set_disable_timing sb_2__2_/bottom_right_grid_left_width_0_height_0_subtile_5__pin_inpad_0_[0]
set_disable_timing sb_2__2_/bottom_right_grid_left_width_0_height_0_subtile_6__pin_inpad_0_[0]
set_disable_timing sb_2__2_/bottom_right_grid_left_width_0_height_0_subtile_7__pin_inpad_0_[0]
set_disable_timing sb_2__2_/bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_1_[0]
set_disable_timing sb_2__2_/bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_5_[0]
set_disable_timing sb_2__2_/bottom_left_grid_right_width_0_height_0_subtile_0__pin_O_9_[0]
set_disable_timing sb_2__2_/left_top_grid_bottom_width_0_height_0_subtile_0__pin_inpad_0_[0]
set_disable_timing sb_2__2_/left_top_grid_bottom_width_0_height_0_subtile_1__pin_inpad_0_[0]
set_disable_timing sb_2__2_/left_top_grid_bottom_width_0_height_0_subtile_2__pin_inpad_0_[0]
set_disable_timing sb_2__2_/left_top_grid_bottom_width_0_height_0_subtile_3__pin_inpad_0_[0]
set_disable_timing sb_2__2_/left_top_grid_bottom_width_0_height_0_subtile_4__pin_inpad_0_[0]
set_disable_timing sb_2__2_/left_top_grid_bottom_width_0_height_0_subtile_5__pin_inpad_0_[0]
set_disable_timing sb_2__2_/left_top_grid_bottom_width_0_height_0_subtile_6__pin_inpad_0_[0]
set_disable_timing sb_2__2_/left_top_grid_bottom_width_0_height_0_subtile_7__pin_inpad_0_[0]
set_disable_timing sb_2__2_/left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_0_[0]
set_disable_timing sb_2__2_/left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_4_[0]
set_disable_timing sb_2__2_/left_bottom_grid_top_width_0_height_0_subtile_0__pin_O_8_[0]
set_disable_timing sb_2__2_/mux_bottom_track_1/in[0]
set_disable_timing sb_2__2_/mux_bottom_track_3/in[0]
set_disable_timing sb_2__2_/mux_bottom_track_5/in[0]
set_disable_timing sb_2__2_/mux_bottom_track_7/in[0]
set_disable_timing sb_2__2_/mux_bottom_track_9/in[0]
set_disable_timing sb_2__2_/mux_bottom_track_1/in[1]
set_disable_timing sb_2__2_/mux_bottom_track_3/in[1]
set_disable_timing sb_2__2_/mux_bottom_track_5/in[1]
set_disable_timing sb_2__2_/mux_bottom_track_7/in[1]
set_disable_timing sb_2__2_/mux_bottom_track_9/in[1]
set_disable_timing sb_2__2_/mux_bottom_track_1/in[2]
set_disable_timing sb_2__2_/mux_left_track_1/in[1]
set_disable_timing sb_2__2_/mux_left_track_3/in[1]
set_disable_timing sb_2__2_/mux_left_track_5/in[1]
set_disable_timing sb_2__2_/mux_left_track_7/in[1]
set_disable_timing sb_2__2_/mux_left_track_9/in[1]
set_disable_timing sb_2__2_/mux_left_track_1/in[2]
set_disable_timing sb_2__2_/mux_left_track_3/in[2]
set_disable_timing sb_2__2_/mux_left_track_5/in[2]
set_disable_timing sb_2__2_/mux_left_track_7/in[2]
set_disable_timing sb_2__2_/mux_left_track_9/in[2]
set_disable_timing sb_2__2_/mux_left_track_1/in[3]
set_disable_timing sb_2__2_/mux_left_track_3/in[0]
set_disable_timing sb_2__2_/mux_left_track_5/in[0]
set_disable_timing sb_2__2_/mux_left_track_7/in[0]
set_disable_timing sb_2__2_/mux_left_track_9/in[0]
set_disable_timing sb_2__2_/mux_left_track_1/in[0]
set_disable_timing sb_2__2_/mux_bottom_track_9/in[2]
set_disable_timing sb_2__2_/mux_bottom_track_1/in[3]
set_disable_timing sb_2__2_/mux_bottom_track_3/in[2]
set_disable_timing sb_2__2_/mux_bottom_track_5/in[2]
set_disable_timing sb_2__2_/mux_bottom_track_7/in[2]
#######################################
# Disable Timing for grid[1][1]
#######################################
#######################################
# Disable Timing for unused grid[1][1][0]
#######################################
#######################################
# Disable all the ports for pb_graph_node clb[0]
#######################################
set_disable_timing grid_clb_1__1_/logical_tile_clb_mode_clb__0/*
#######################################
# Disable all the ports for pb_graph_node fle[0]
#######################################
set_disable_timing grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/*
#######################################
# Disable all the ports for pb_graph_node ble6[0]
#######################################
set_disable_timing grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/*
#######################################
# Disable all the ports for pb_graph_node lut6[0]
#######################################
set_disable_timing grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/*
#######################################
# Disable all the ports for pb_graph_node ff[0]
#######################################
set_disable_timing grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/*
#######################################
# Disable all the ports for pb_graph_node fle[1]
#######################################
set_disable_timing grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1/*
#######################################
# Disable all the ports for pb_graph_node ble6[0]
#######################################
set_disable_timing grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/*
#######################################
# Disable all the ports for pb_graph_node lut6[0]
#######################################
set_disable_timing grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/*
#######################################
# Disable all the ports for pb_graph_node ff[0]
#######################################
set_disable_timing grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/*
#######################################
# Disable all the ports for pb_graph_node fle[2]
#######################################
set_disable_timing grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2/*
#######################################
# Disable all the ports for pb_graph_node ble6[0]
#######################################
set_disable_timing grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/*
#######################################
# Disable all the ports for pb_graph_node lut6[0]
#######################################
set_disable_timing grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/*
#######################################
# Disable all the ports for pb_graph_node ff[0]
#######################################
set_disable_timing grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/*
#######################################
# Disable all the ports for pb_graph_node fle[3]
#######################################
set_disable_timing grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3/*
#######################################
# Disable all the ports for pb_graph_node ble6[0]
#######################################
set_disable_timing grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/*
#######################################
# Disable all the ports for pb_graph_node lut6[0]
#######################################
set_disable_timing grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/*
#######################################
# Disable all the ports for pb_graph_node ff[0]
#######################################
set_disable_timing grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/*
#######################################
# Disable all the ports for pb_graph_node fle[4]
#######################################
set_disable_timing grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4/*
#######################################
# Disable all the ports for pb_graph_node ble6[0]
#######################################
set_disable_timing grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/*
#######################################
# Disable all the ports for pb_graph_node lut6[0]
#######################################
set_disable_timing grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/*
#######################################
# Disable all the ports for pb_graph_node ff[0]
#######################################
set_disable_timing grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/*
#######################################
# Disable all the ports for pb_graph_node fle[5]
#######################################
set_disable_timing grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5/*
#######################################
# Disable all the ports for pb_graph_node ble6[0]
#######################################
set_disable_timing grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/*
#######################################
# Disable all the ports for pb_graph_node lut6[0]
#######################################
set_disable_timing grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/*
#######################################
# Disable all the ports for pb_graph_node ff[0]
#######################################
set_disable_timing grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/*
#######################################
# Disable all the ports for pb_graph_node fle[6]
#######################################
set_disable_timing grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6/*
#######################################
# Disable all the ports for pb_graph_node ble6[0]
#######################################
set_disable_timing grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/*
#######################################
# Disable all the ports for pb_graph_node lut6[0]
#######################################
set_disable_timing grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/*
#######################################
# Disable all the ports for pb_graph_node ff[0]
#######################################
set_disable_timing grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/*
#######################################
# Disable all the ports for pb_graph_node fle[7]
#######################################
set_disable_timing grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/*
#######################################
# Disable all the ports for pb_graph_node ble6[0]
#######################################
set_disable_timing grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/*
#######################################
# Disable all the ports for pb_graph_node lut6[0]
#######################################
set_disable_timing grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/*
#######################################
# Disable all the ports for pb_graph_node ff[0]
#######################################
set_disable_timing grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/*
#######################################
# Disable all the ports for pb_graph_node fle[8]
#######################################
set_disable_timing grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/*
#######################################
# Disable all the ports for pb_graph_node ble6[0]
#######################################
set_disable_timing grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/*
#######################################
# Disable all the ports for pb_graph_node lut6[0]
#######################################
set_disable_timing grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/*
#######################################
# Disable all the ports for pb_graph_node ff[0]
#######################################
set_disable_timing grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/*
#######################################
# Disable all the ports for pb_graph_node fle[9]
#######################################
set_disable_timing grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_9/*
#######################################
# Disable all the ports for pb_graph_node ble6[0]
#######################################
set_disable_timing grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_9/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/*
#######################################
# Disable all the ports for pb_graph_node lut6[0]
#######################################
set_disable_timing grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_9/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/*
#######################################
# Disable all the ports for pb_graph_node ff[0]
#######################################
set_disable_timing grid_clb_1__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_9/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/*
#######################################
# Disable Timing for grid[1][2]
#######################################
#######################################
# Disable Timing for unused grid[1][2][0]
#######################################
#######################################
# Disable all the ports for pb_graph_node clb[0]
#######################################
set_disable_timing grid_clb_1__2_/logical_tile_clb_mode_clb__0/*
#######################################
# Disable all the ports for pb_graph_node fle[0]
#######################################
set_disable_timing grid_clb_1__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/*
#######################################
# Disable all the ports for pb_graph_node ble6[0]
#######################################
set_disable_timing grid_clb_1__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/*
#######################################
# Disable all the ports for pb_graph_node lut6[0]
#######################################
set_disable_timing grid_clb_1__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/*
#######################################
# Disable all the ports for pb_graph_node ff[0]
#######################################
set_disable_timing grid_clb_1__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/*
#######################################
# Disable all the ports for pb_graph_node fle[1]
#######################################
set_disable_timing grid_clb_1__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1/*
#######################################
# Disable all the ports for pb_graph_node ble6[0]
#######################################
set_disable_timing grid_clb_1__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/*
#######################################
# Disable all the ports for pb_graph_node lut6[0]
#######################################
set_disable_timing grid_clb_1__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/*
#######################################
# Disable all the ports for pb_graph_node ff[0]
#######################################
set_disable_timing grid_clb_1__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/*
#######################################
# Disable all the ports for pb_graph_node fle[2]
#######################################
set_disable_timing grid_clb_1__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2/*
#######################################
# Disable all the ports for pb_graph_node ble6[0]
#######################################
set_disable_timing grid_clb_1__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/*
#######################################
# Disable all the ports for pb_graph_node lut6[0]
#######################################
set_disable_timing grid_clb_1__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/*
#######################################
# Disable all the ports for pb_graph_node ff[0]
#######################################
set_disable_timing grid_clb_1__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/*
#######################################
# Disable all the ports for pb_graph_node fle[3]
#######################################
set_disable_timing grid_clb_1__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3/*
#######################################
# Disable all the ports for pb_graph_node ble6[0]
#######################################
set_disable_timing grid_clb_1__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/*
#######################################
# Disable all the ports for pb_graph_node lut6[0]
#######################################
set_disable_timing grid_clb_1__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/*
#######################################
# Disable all the ports for pb_graph_node ff[0]
#######################################
set_disable_timing grid_clb_1__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/*
#######################################
# Disable all the ports for pb_graph_node fle[4]
#######################################
set_disable_timing grid_clb_1__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4/*
#######################################
# Disable all the ports for pb_graph_node ble6[0]
#######################################
set_disable_timing grid_clb_1__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/*
#######################################
# Disable all the ports for pb_graph_node lut6[0]
#######################################
set_disable_timing grid_clb_1__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/*
#######################################
# Disable all the ports for pb_graph_node ff[0]
#######################################
set_disable_timing grid_clb_1__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/*
#######################################
# Disable all the ports for pb_graph_node fle[5]
#######################################
set_disable_timing grid_clb_1__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5/*
#######################################
# Disable all the ports for pb_graph_node ble6[0]
#######################################
set_disable_timing grid_clb_1__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/*
#######################################
# Disable all the ports for pb_graph_node lut6[0]
#######################################
set_disable_timing grid_clb_1__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/*
#######################################
# Disable all the ports for pb_graph_node ff[0]
#######################################
set_disable_timing grid_clb_1__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/*
#######################################
# Disable all the ports for pb_graph_node fle[6]
#######################################
set_disable_timing grid_clb_1__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6/*
#######################################
# Disable all the ports for pb_graph_node ble6[0]
#######################################
set_disable_timing grid_clb_1__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/*
#######################################
# Disable all the ports for pb_graph_node lut6[0]
#######################################
set_disable_timing grid_clb_1__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/*
#######################################
# Disable all the ports for pb_graph_node ff[0]
#######################################
set_disable_timing grid_clb_1__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/*
#######################################
# Disable all the ports for pb_graph_node fle[7]
#######################################
set_disable_timing grid_clb_1__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/*
#######################################
# Disable all the ports for pb_graph_node ble6[0]
#######################################
set_disable_timing grid_clb_1__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/*
#######################################
# Disable all the ports for pb_graph_node lut6[0]
#######################################
set_disable_timing grid_clb_1__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/*
#######################################
# Disable all the ports for pb_graph_node ff[0]
#######################################
set_disable_timing grid_clb_1__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/*
#######################################
# Disable all the ports for pb_graph_node fle[8]
#######################################
set_disable_timing grid_clb_1__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/*
#######################################
# Disable all the ports for pb_graph_node ble6[0]
#######################################
set_disable_timing grid_clb_1__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/*
#######################################
# Disable all the ports for pb_graph_node lut6[0]
#######################################
set_disable_timing grid_clb_1__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/*
#######################################
# Disable all the ports for pb_graph_node ff[0]
#######################################
set_disable_timing grid_clb_1__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/*
#######################################
# Disable all the ports for pb_graph_node fle[9]
#######################################
set_disable_timing grid_clb_1__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_9/*
#######################################
# Disable all the ports for pb_graph_node ble6[0]
#######################################
set_disable_timing grid_clb_1__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_9/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/*
#######################################
# Disable all the ports for pb_graph_node lut6[0]
#######################################
set_disable_timing grid_clb_1__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_9/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/*
#######################################
# Disable all the ports for pb_graph_node ff[0]
#######################################
set_disable_timing grid_clb_1__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_9/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/*
#######################################
# Disable Timing for grid[2][1]
#######################################
#######################################
# Disable Timing for unused resources in grid[2][1][0]
#######################################
#######################################
# Disable unused pins for pb_graph_node clb[0]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_I[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_I[1]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_I[2]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_I[3]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_I[4]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_I[5]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_I[6]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_I[7]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_I[8]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_I[9]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_I[11]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_I[12]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_I[13]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_I[14]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_I[15]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_I[16]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_I[17]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_I[19]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_I[20]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_I[21]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_I[22]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_I[23]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_I[24]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_I[25]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_I[26]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_I[27]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_I[28]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_I[29]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_I[30]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_I[31]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_I[32]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_I[33]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_I[34]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_I[35]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_I[36]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_I[37]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_I[38]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_I[39]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_O[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_O[1]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_O[2]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_O[3]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_O[4]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_O[5]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_O[6]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_O[7]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_O[8]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_O[10]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_O[11]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_O[12]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_O[13]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_O[14]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_O[15]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_O[16]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_O[17]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_O[18]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_O[19]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/clb_clk[0]
#######################################
# Disable unused mux_inputs for pb_graph_node clb[0]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0//mux_fle_9_in_5/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0//mux_fle_9_in_5/in[1]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0//mux_fle_9_in_5/in[2]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0//mux_fle_9_in_5/in[3]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0//mux_fle_9_in_5/in[4]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0//mux_fle_9_in_5/in[5]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0//mux_fle_9_in_5/in[6]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0//mux_fle_9_in_5/in[7]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0//mux_fle_9_in_5/in[8]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0//mux_fle_9_in_5/in[9]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0//mux_fle_9_in_5/in[11]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0//mux_fle_9_in_5/in[12]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0//mux_fle_9_in_5/in[13]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0//mux_fle_9_in_5/in[14]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0//mux_fle_9_in_5/in[15]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0//mux_fle_9_in_5/in[16]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0//mux_fle_9_in_5/in[17]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0//mux_fle_9_in_5/in[18]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0//mux_fle_9_in_5/in[19]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0//mux_fle_9_in_5/in[20]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0//mux_fle_9_in_5/in[21]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0//mux_fle_9_in_5/in[22]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0//mux_fle_9_in_5/in[23]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0//mux_fle_9_in_5/in[24]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0//mux_fle_9_in_5/in[25]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0//mux_fle_9_in_5/in[26]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0//mux_fle_9_in_5/in[27]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0//mux_fle_9_in_5/in[28]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0//mux_fle_9_in_5/in[29]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0//mux_fle_9_in_5/in[30]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0//mux_fle_9_in_5/in[31]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0//mux_fle_9_in_5/in[32]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0//mux_fle_9_in_5/in[33]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0//mux_fle_9_in_5/in[34]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0//mux_fle_9_in_5/in[35]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0//mux_fle_9_in_5/in[36]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0//mux_fle_9_in_5/in[37]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0//mux_fle_9_in_5/in[38]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0//mux_fle_9_in_5/in[39]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0//direct_interc_19_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0//mux_fle_9_in_5/in[40]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0//mux_fle_9_in_5/in[41]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0//mux_fle_9_in_5/in[42]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0//mux_fle_9_in_5/in[43]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0//mux_fle_9_in_5/in[44]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0//mux_fle_9_in_5/in[45]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0//mux_fle_9_in_5/in[46]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0//mux_fle_9_in_5/in[47]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0//mux_fle_9_in_5/in[48]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0//mux_fle_9_in_5/in[49]
#######################################
# Disable unused pins for pb_graph_node fle[0]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/fle_in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/fle_in[1]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/fle_in[2]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/fle_in[3]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/fle_in[4]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/fle_in[5]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/fle_out[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/fle_clk[0]
#######################################
# Disable unused mux_inputs for pb_graph_node fle[0]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0//direct_interc_1_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0//direct_interc_2_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0//direct_interc_3_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0//direct_interc_4_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0//direct_interc_5_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0//direct_interc_6_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0//direct_interc_7_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0//direct_interc_0_/in[0]
#######################################
# Disable unused pins for pb_graph_node ble6[0]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[1]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[2]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[3]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[4]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[5]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_out[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_clk[0]
#######################################
# Disable unused mux_inputs for pb_graph_node ble6[0]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_0_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_1_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_2_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_3_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_4_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_5_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_7_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_6_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//mux_ble6_out_0/in[0]
#######################################
# Disable unused pins for pb_graph_node lut6[0]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[1]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[2]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[3]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[4]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[5]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_out[0]
#######################################
# Disable unused pins for pb_graph_node ff[0]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/ff_D[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/ff_Q[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/ff_clk[0]
#######################################
# Disable unused pins for pb_graph_node fle[1]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1/fle_in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1/fle_in[1]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1/fle_in[2]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1/fle_in[3]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1/fle_in[4]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1/fle_in[5]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1/fle_out[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1/fle_clk[0]
#######################################
# Disable unused mux_inputs for pb_graph_node fle[1]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1//direct_interc_1_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1//direct_interc_2_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1//direct_interc_3_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1//direct_interc_4_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1//direct_interc_5_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1//direct_interc_6_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1//direct_interc_7_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1//direct_interc_0_/in[0]
#######################################
# Disable unused pins for pb_graph_node ble6[0]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[1]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[2]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[3]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[4]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[5]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_out[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_clk[0]
#######################################
# Disable unused mux_inputs for pb_graph_node ble6[0]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_0_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_1_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_2_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_3_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_4_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_5_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_7_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_6_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//mux_ble6_out_0/in[0]
#######################################
# Disable unused pins for pb_graph_node lut6[0]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[1]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[2]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[3]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[4]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[5]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_out[0]
#######################################
# Disable unused pins for pb_graph_node ff[0]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/ff_D[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/ff_Q[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/ff_clk[0]
#######################################
# Disable unused pins for pb_graph_node fle[2]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2/fle_in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2/fle_in[1]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2/fle_in[2]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2/fle_in[3]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2/fle_in[4]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2/fle_in[5]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2/fle_out[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2/fle_clk[0]
#######################################
# Disable unused mux_inputs for pb_graph_node fle[2]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2//direct_interc_1_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2//direct_interc_2_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2//direct_interc_3_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2//direct_interc_4_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2//direct_interc_5_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2//direct_interc_6_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2//direct_interc_7_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2//direct_interc_0_/in[0]
#######################################
# Disable unused pins for pb_graph_node ble6[0]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[1]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[2]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[3]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[4]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[5]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_out[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_clk[0]
#######################################
# Disable unused mux_inputs for pb_graph_node ble6[0]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_0_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_1_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_2_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_3_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_4_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_5_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_7_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_6_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//mux_ble6_out_0/in[0]
#######################################
# Disable unused pins for pb_graph_node lut6[0]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[1]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[2]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[3]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[4]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[5]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_out[0]
#######################################
# Disable unused pins for pb_graph_node ff[0]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/ff_D[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/ff_Q[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/ff_clk[0]
#######################################
# Disable unused pins for pb_graph_node fle[3]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3/fle_in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3/fle_in[1]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3/fle_in[2]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3/fle_in[3]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3/fle_in[4]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3/fle_in[5]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3/fle_out[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3/fle_clk[0]
#######################################
# Disable unused mux_inputs for pb_graph_node fle[3]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3//direct_interc_1_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3//direct_interc_2_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3//direct_interc_3_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3//direct_interc_4_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3//direct_interc_5_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3//direct_interc_6_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3//direct_interc_7_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3//direct_interc_0_/in[0]
#######################################
# Disable unused pins for pb_graph_node ble6[0]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[1]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[2]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[3]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[4]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[5]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_out[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_clk[0]
#######################################
# Disable unused mux_inputs for pb_graph_node ble6[0]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_0_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_1_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_2_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_3_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_4_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_5_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_7_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_6_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//mux_ble6_out_0/in[0]
#######################################
# Disable unused pins for pb_graph_node lut6[0]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[1]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[2]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[3]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[4]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[5]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_out[0]
#######################################
# Disable unused pins for pb_graph_node ff[0]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/ff_D[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/ff_Q[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/ff_clk[0]
#######################################
# Disable unused pins for pb_graph_node fle[4]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4/fle_in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4/fle_in[1]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4/fle_in[2]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4/fle_in[3]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4/fle_in[4]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4/fle_in[5]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4/fle_out[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4/fle_clk[0]
#######################################
# Disable unused mux_inputs for pb_graph_node fle[4]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4//direct_interc_1_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4//direct_interc_2_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4//direct_interc_3_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4//direct_interc_4_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4//direct_interc_5_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4//direct_interc_6_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4//direct_interc_7_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4//direct_interc_0_/in[0]
#######################################
# Disable unused pins for pb_graph_node ble6[0]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[1]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[2]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[3]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[4]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[5]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_out[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_clk[0]
#######################################
# Disable unused mux_inputs for pb_graph_node ble6[0]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_0_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_1_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_2_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_3_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_4_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_5_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_7_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_6_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//mux_ble6_out_0/in[0]
#######################################
# Disable unused pins for pb_graph_node lut6[0]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[1]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[2]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[3]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[4]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[5]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_out[0]
#######################################
# Disable unused pins for pb_graph_node ff[0]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/ff_D[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/ff_Q[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/ff_clk[0]
#######################################
# Disable unused pins for pb_graph_node fle[5]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5/fle_in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5/fle_in[1]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5/fle_in[2]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5/fle_in[3]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5/fle_in[4]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5/fle_in[5]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5/fle_out[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5/fle_clk[0]
#######################################
# Disable unused mux_inputs for pb_graph_node fle[5]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5//direct_interc_1_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5//direct_interc_2_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5//direct_interc_3_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5//direct_interc_4_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5//direct_interc_5_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5//direct_interc_6_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5//direct_interc_7_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5//direct_interc_0_/in[0]
#######################################
# Disable unused pins for pb_graph_node ble6[0]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[1]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[2]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[3]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[4]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[5]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_out[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_clk[0]
#######################################
# Disable unused mux_inputs for pb_graph_node ble6[0]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_0_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_1_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_2_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_3_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_4_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_5_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_7_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_6_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//mux_ble6_out_0/in[0]
#######################################
# Disable unused pins for pb_graph_node lut6[0]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[1]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[2]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[3]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[4]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[5]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_out[0]
#######################################
# Disable unused pins for pb_graph_node ff[0]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/ff_D[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/ff_Q[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/ff_clk[0]
#######################################
# Disable unused pins for pb_graph_node fle[6]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6/fle_in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6/fle_in[1]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6/fle_in[2]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6/fle_in[3]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6/fle_in[4]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6/fle_in[5]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6/fle_out[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6/fle_clk[0]
#######################################
# Disable unused mux_inputs for pb_graph_node fle[6]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6//direct_interc_1_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6//direct_interc_2_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6//direct_interc_3_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6//direct_interc_4_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6//direct_interc_5_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6//direct_interc_6_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6//direct_interc_7_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6//direct_interc_0_/in[0]
#######################################
# Disable unused pins for pb_graph_node ble6[0]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[1]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[2]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[3]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[4]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[5]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_out[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_clk[0]
#######################################
# Disable unused mux_inputs for pb_graph_node ble6[0]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_0_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_1_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_2_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_3_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_4_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_5_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_7_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_6_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//mux_ble6_out_0/in[0]
#######################################
# Disable unused pins for pb_graph_node lut6[0]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[1]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[2]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[3]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[4]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[5]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_out[0]
#######################################
# Disable unused pins for pb_graph_node ff[0]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/ff_D[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/ff_Q[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/ff_clk[0]
#######################################
# Disable unused pins for pb_graph_node fle[7]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/fle_in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/fle_in[1]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/fle_in[2]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/fle_in[3]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/fle_in[4]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/fle_in[5]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/fle_out[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/fle_clk[0]
#######################################
# Disable unused mux_inputs for pb_graph_node fle[7]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7//direct_interc_1_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7//direct_interc_2_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7//direct_interc_3_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7//direct_interc_4_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7//direct_interc_5_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7//direct_interc_6_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7//direct_interc_7_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7//direct_interc_0_/in[0]
#######################################
# Disable unused pins for pb_graph_node ble6[0]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[1]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[2]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[3]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[4]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[5]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_out[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_clk[0]
#######################################
# Disable unused mux_inputs for pb_graph_node ble6[0]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_0_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_1_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_2_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_3_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_4_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_5_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_7_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_6_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//mux_ble6_out_0/in[0]
#######################################
# Disable unused pins for pb_graph_node lut6[0]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[1]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[2]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[3]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[4]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[5]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_out[0]
#######################################
# Disable unused pins for pb_graph_node ff[0]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/ff_D[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/ff_Q[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/ff_clk[0]
#######################################
# Disable unused pins for pb_graph_node fle[8]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/fle_in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/fle_in[1]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/fle_in[2]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/fle_in[3]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/fle_in[4]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/fle_in[5]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/fle_out[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/fle_clk[0]
#######################################
# Disable unused mux_inputs for pb_graph_node fle[8]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8//direct_interc_1_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8//direct_interc_2_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8//direct_interc_3_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8//direct_interc_4_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8//direct_interc_5_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8//direct_interc_6_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8//direct_interc_7_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8//direct_interc_0_/in[0]
#######################################
# Disable unused pins for pb_graph_node ble6[0]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[1]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[2]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[3]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[4]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[5]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_out[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_clk[0]
#######################################
# Disable unused mux_inputs for pb_graph_node ble6[0]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_0_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_1_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_2_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_3_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_4_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_5_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_7_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_6_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//mux_ble6_out_0/in[0]
#######################################
# Disable unused pins for pb_graph_node lut6[0]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[1]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[2]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[3]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[4]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[5]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_out[0]
#######################################
# Disable unused pins for pb_graph_node ff[0]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/ff_D[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/ff_Q[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/ff_clk[0]
#######################################
# Disable unused pins for pb_graph_node fle[9]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_9/fle_in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_9/fle_in[1]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_9/fle_in[2]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_9/fle_in[4]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_9/fle_clk[0]
#######################################
# Disable unused mux_inputs for pb_graph_node fle[9]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_9//direct_interc_1_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_9//direct_interc_2_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_9//direct_interc_3_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_9//direct_interc_5_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_9//direct_interc_7_/in[0]
#######################################
# Disable unused pins for pb_graph_node ble6[0]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_9/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_9/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[1]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_9/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[2]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_9/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_in[4]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_9/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_clk[0]
#######################################
# Disable unused mux_inputs for pb_graph_node ble6[0]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_9/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_0_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_9/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_1_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_9/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_2_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_9/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_4_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_9/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//direct_interc_7_/in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_9/logical_tile_clb_mode_default__fle_mode_physical__ble6_0//mux_ble6_out_0/in[0]
#######################################
# Disable unused pins for pb_graph_node lut6[0]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_9/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_9/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[1]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_9/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[2]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_9/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_in[4]
#######################################
# Disable unused pins for pb_graph_node ff[0]
#######################################
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_9/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/ff_D[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_9/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/ff_Q[0]
set_disable_timing grid_clb_2__1_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_9/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/ff_clk[0]
#######################################
# Disable Timing for grid[2][2]
#######################################
#######################################
# Disable Timing for unused grid[2][2][0]
#######################################
#######################################
# Disable all the ports for pb_graph_node clb[0]
#######################################
set_disable_timing grid_clb_2__2_/logical_tile_clb_mode_clb__0/*
#######################################
# Disable all the ports for pb_graph_node fle[0]
#######################################
set_disable_timing grid_clb_2__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/*
#######################################
# Disable all the ports for pb_graph_node ble6[0]
#######################################
set_disable_timing grid_clb_2__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/*
#######################################
# Disable all the ports for pb_graph_node lut6[0]
#######################################
set_disable_timing grid_clb_2__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/*
#######################################
# Disable all the ports for pb_graph_node ff[0]
#######################################
set_disable_timing grid_clb_2__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/*
#######################################
# Disable all the ports for pb_graph_node fle[1]
#######################################
set_disable_timing grid_clb_2__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1/*
#######################################
# Disable all the ports for pb_graph_node ble6[0]
#######################################
set_disable_timing grid_clb_2__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/*
#######################################
# Disable all the ports for pb_graph_node lut6[0]
#######################################
set_disable_timing grid_clb_2__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/*
#######################################
# Disable all the ports for pb_graph_node ff[0]
#######################################
set_disable_timing grid_clb_2__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_1/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/*
#######################################
# Disable all the ports for pb_graph_node fle[2]
#######################################
set_disable_timing grid_clb_2__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2/*
#######################################
# Disable all the ports for pb_graph_node ble6[0]
#######################################
set_disable_timing grid_clb_2__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/*
#######################################
# Disable all the ports for pb_graph_node lut6[0]
#######################################
set_disable_timing grid_clb_2__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/*
#######################################
# Disable all the ports for pb_graph_node ff[0]
#######################################
set_disable_timing grid_clb_2__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_2/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/*
#######################################
# Disable all the ports for pb_graph_node fle[3]
#######################################
set_disable_timing grid_clb_2__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3/*
#######################################
# Disable all the ports for pb_graph_node ble6[0]
#######################################
set_disable_timing grid_clb_2__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/*
#######################################
# Disable all the ports for pb_graph_node lut6[0]
#######################################
set_disable_timing grid_clb_2__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/*
#######################################
# Disable all the ports for pb_graph_node ff[0]
#######################################
set_disable_timing grid_clb_2__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_3/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/*
#######################################
# Disable all the ports for pb_graph_node fle[4]
#######################################
set_disable_timing grid_clb_2__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4/*
#######################################
# Disable all the ports for pb_graph_node ble6[0]
#######################################
set_disable_timing grid_clb_2__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/*
#######################################
# Disable all the ports for pb_graph_node lut6[0]
#######################################
set_disable_timing grid_clb_2__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/*
#######################################
# Disable all the ports for pb_graph_node ff[0]
#######################################
set_disable_timing grid_clb_2__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_4/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/*
#######################################
# Disable all the ports for pb_graph_node fle[5]
#######################################
set_disable_timing grid_clb_2__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5/*
#######################################
# Disable all the ports for pb_graph_node ble6[0]
#######################################
set_disable_timing grid_clb_2__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/*
#######################################
# Disable all the ports for pb_graph_node lut6[0]
#######################################
set_disable_timing grid_clb_2__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/*
#######################################
# Disable all the ports for pb_graph_node ff[0]
#######################################
set_disable_timing grid_clb_2__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_5/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/*
#######################################
# Disable all the ports for pb_graph_node fle[6]
#######################################
set_disable_timing grid_clb_2__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6/*
#######################################
# Disable all the ports for pb_graph_node ble6[0]
#######################################
set_disable_timing grid_clb_2__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/*
#######################################
# Disable all the ports for pb_graph_node lut6[0]
#######################################
set_disable_timing grid_clb_2__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/*
#######################################
# Disable all the ports for pb_graph_node ff[0]
#######################################
set_disable_timing grid_clb_2__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_6/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/*
#######################################
# Disable all the ports for pb_graph_node fle[7]
#######################################
set_disable_timing grid_clb_2__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/*
#######################################
# Disable all the ports for pb_graph_node ble6[0]
#######################################
set_disable_timing grid_clb_2__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/*
#######################################
# Disable all the ports for pb_graph_node lut6[0]
#######################################
set_disable_timing grid_clb_2__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/*
#######################################
# Disable all the ports for pb_graph_node ff[0]
#######################################
set_disable_timing grid_clb_2__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_7/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/*
#######################################
# Disable all the ports for pb_graph_node fle[8]
#######################################
set_disable_timing grid_clb_2__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/*
#######################################
# Disable all the ports for pb_graph_node ble6[0]
#######################################
set_disable_timing grid_clb_2__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/*
#######################################
# Disable all the ports for pb_graph_node lut6[0]
#######################################
set_disable_timing grid_clb_2__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/*
#######################################
# Disable all the ports for pb_graph_node ff[0]
#######################################
set_disable_timing grid_clb_2__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_8/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/*
#######################################
# Disable all the ports for pb_graph_node fle[9]
#######################################
set_disable_timing grid_clb_2__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_9/*
#######################################
# Disable all the ports for pb_graph_node ble6[0]
#######################################
set_disable_timing grid_clb_2__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_9/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/*
#######################################
# Disable all the ports for pb_graph_node lut6[0]
#######################################
set_disable_timing grid_clb_2__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_9/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/*
#######################################
# Disable all the ports for pb_graph_node ff[0]
#######################################
set_disable_timing grid_clb_2__2_/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_9/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/*
#######################################
# Disable Timing for grid[1][3]
#######################################
#######################################
# Disable Timing for unused grid[1][3][0]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_top_1__3_/logical_tile_io_mode_io__0/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_top_1__3_/logical_tile_io_mode_io__0/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[1][3][1]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_top_1__3_/logical_tile_io_mode_io__1/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_top_1__3_/logical_tile_io_mode_io__1/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[1][3][2]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_top_1__3_/logical_tile_io_mode_io__2/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_top_1__3_/logical_tile_io_mode_io__2/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[1][3][3]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_top_1__3_/logical_tile_io_mode_io__3/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_top_1__3_/logical_tile_io_mode_io__3/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[1][3][4]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_top_1__3_/logical_tile_io_mode_io__4/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_top_1__3_/logical_tile_io_mode_io__4/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[1][3][5]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_top_1__3_/logical_tile_io_mode_io__5/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_top_1__3_/logical_tile_io_mode_io__5/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[1][3][6]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_top_1__3_/logical_tile_io_mode_io__6/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_top_1__3_/logical_tile_io_mode_io__6/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[1][3][7]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_top_1__3_/logical_tile_io_mode_io__7/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_top_1__3_/logical_tile_io_mode_io__7/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for grid[2][3]
#######################################
#######################################
# Disable Timing for unused grid[2][3][0]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_top_2__3_/logical_tile_io_mode_io__0/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_top_2__3_/logical_tile_io_mode_io__0/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[2][3][1]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_top_2__3_/logical_tile_io_mode_io__1/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_top_2__3_/logical_tile_io_mode_io__1/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[2][3][2]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_top_2__3_/logical_tile_io_mode_io__2/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_top_2__3_/logical_tile_io_mode_io__2/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[2][3][3]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_top_2__3_/logical_tile_io_mode_io__3/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_top_2__3_/logical_tile_io_mode_io__3/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[2][3][4]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_top_2__3_/logical_tile_io_mode_io__4/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_top_2__3_/logical_tile_io_mode_io__4/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[2][3][5]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_top_2__3_/logical_tile_io_mode_io__5/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_top_2__3_/logical_tile_io_mode_io__5/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[2][3][6]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_top_2__3_/logical_tile_io_mode_io__6/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_top_2__3_/logical_tile_io_mode_io__6/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[2][3][7]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_top_2__3_/logical_tile_io_mode_io__7/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_top_2__3_/logical_tile_io_mode_io__7/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for grid[3][2]
#######################################
#######################################
# Disable Timing for unused grid[3][2][0]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_right_3__2_/logical_tile_io_mode_io__0/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_right_3__2_/logical_tile_io_mode_io__0/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[3][2][1]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_right_3__2_/logical_tile_io_mode_io__1/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_right_3__2_/logical_tile_io_mode_io__1/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[3][2][2]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_right_3__2_/logical_tile_io_mode_io__2/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_right_3__2_/logical_tile_io_mode_io__2/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[3][2][3]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_right_3__2_/logical_tile_io_mode_io__3/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_right_3__2_/logical_tile_io_mode_io__3/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[3][2][4]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_right_3__2_/logical_tile_io_mode_io__4/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_right_3__2_/logical_tile_io_mode_io__4/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[3][2][5]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_right_3__2_/logical_tile_io_mode_io__5/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_right_3__2_/logical_tile_io_mode_io__5/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[3][2][6]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_right_3__2_/logical_tile_io_mode_io__6/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_right_3__2_/logical_tile_io_mode_io__6/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[3][2][7]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_right_3__2_/logical_tile_io_mode_io__7/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_right_3__2_/logical_tile_io_mode_io__7/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for grid[3][1]
#######################################
#######################################
# Disable Timing for unused grid[3][1][0]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_right_3__1_/logical_tile_io_mode_io__0/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_right_3__1_/logical_tile_io_mode_io__0/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[3][1][1]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_right_3__1_/logical_tile_io_mode_io__1/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_right_3__1_/logical_tile_io_mode_io__1/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[3][1][2]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_right_3__1_/logical_tile_io_mode_io__2/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_right_3__1_/logical_tile_io_mode_io__2/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[3][1][3]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_right_3__1_/logical_tile_io_mode_io__3/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_right_3__1_/logical_tile_io_mode_io__3/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[3][1][4]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_right_3__1_/logical_tile_io_mode_io__4/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_right_3__1_/logical_tile_io_mode_io__4/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[3][1][5]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_right_3__1_/logical_tile_io_mode_io__5/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_right_3__1_/logical_tile_io_mode_io__5/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[3][1][6]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_right_3__1_/logical_tile_io_mode_io__6/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_right_3__1_/logical_tile_io_mode_io__6/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[3][1][7]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_right_3__1_/logical_tile_io_mode_io__7/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_right_3__1_/logical_tile_io_mode_io__7/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for grid[2][0]
#######################################
#######################################
# Disable Timing for unused grid[2][0][0]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_bottom_2__0_/logical_tile_io_mode_io__0/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_bottom_2__0_/logical_tile_io_mode_io__0/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[2][0][1]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_bottom_2__0_/logical_tile_io_mode_io__1/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_bottom_2__0_/logical_tile_io_mode_io__1/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused resources in grid[2][0][2]
#######################################
#######################################
# Disable unused pins for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_bottom_2__0_/logical_tile_io_mode_io__2/io_inpad[0]
#######################################
# Disable unused mux_inputs for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_bottom_2__0_/logical_tile_io_mode_io__2//direct_interc_0_/in[0]
#######################################
# Disable unused pins for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_bottom_2__0_/logical_tile_io_mode_io__2/logical_tile_io_mode_physical__iopad_0/iopad_inpad[0]
#######################################
# Disable Timing for unused grid[2][0][3]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_bottom_2__0_/logical_tile_io_mode_io__3/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_bottom_2__0_/logical_tile_io_mode_io__3/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[2][0][4]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_bottom_2__0_/logical_tile_io_mode_io__4/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_bottom_2__0_/logical_tile_io_mode_io__4/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[2][0][5]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_bottom_2__0_/logical_tile_io_mode_io__5/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_bottom_2__0_/logical_tile_io_mode_io__5/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[2][0][6]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_bottom_2__0_/logical_tile_io_mode_io__6/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_bottom_2__0_/logical_tile_io_mode_io__6/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused resources in grid[2][0][7]
#######################################
#######################################
# Disable unused pins for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_bottom_2__0_/logical_tile_io_mode_io__7/io_outpad[0]
#######################################
# Disable unused mux_inputs for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_bottom_2__0_/logical_tile_io_mode_io__7//direct_interc_1_/in[0]
#######################################
# Disable unused pins for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_bottom_2__0_/logical_tile_io_mode_io__7/logical_tile_io_mode_physical__iopad_0/iopad_outpad[0]
#######################################
# Disable Timing for grid[1][0]
#######################################
#######################################
# Disable Timing for unused grid[1][0][0]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_bottom_1__0_/logical_tile_io_mode_io__0/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_bottom_1__0_/logical_tile_io_mode_io__0/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[1][0][1]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_bottom_1__0_/logical_tile_io_mode_io__1/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_bottom_1__0_/logical_tile_io_mode_io__1/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[1][0][2]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_bottom_1__0_/logical_tile_io_mode_io__2/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_bottom_1__0_/logical_tile_io_mode_io__2/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[1][0][3]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_bottom_1__0_/logical_tile_io_mode_io__3/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_bottom_1__0_/logical_tile_io_mode_io__3/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[1][0][4]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_bottom_1__0_/logical_tile_io_mode_io__4/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_bottom_1__0_/logical_tile_io_mode_io__4/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[1][0][5]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_bottom_1__0_/logical_tile_io_mode_io__5/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_bottom_1__0_/logical_tile_io_mode_io__5/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[1][0][6]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_bottom_1__0_/logical_tile_io_mode_io__6/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_bottom_1__0_/logical_tile_io_mode_io__6/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[1][0][7]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_bottom_1__0_/logical_tile_io_mode_io__7/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_bottom_1__0_/logical_tile_io_mode_io__7/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for grid[0][1]
#######################################
#######################################
# Disable Timing for unused resources in grid[0][1][0]
#######################################
#######################################
# Disable unused pins for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_left_0__1_/logical_tile_io_mode_io__0/io_outpad[0]
#######################################
# Disable unused mux_inputs for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_left_0__1_/logical_tile_io_mode_io__0//direct_interc_1_/in[0]
#######################################
# Disable unused pins for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_left_0__1_/logical_tile_io_mode_io__0/logical_tile_io_mode_physical__iopad_0/iopad_outpad[0]
#######################################
# Disable Timing for unused grid[0][1][1]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_left_0__1_/logical_tile_io_mode_io__1/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_left_0__1_/logical_tile_io_mode_io__1/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[0][1][2]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_left_0__1_/logical_tile_io_mode_io__2/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_left_0__1_/logical_tile_io_mode_io__2/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[0][1][3]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_left_0__1_/logical_tile_io_mode_io__3/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_left_0__1_/logical_tile_io_mode_io__3/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[0][1][4]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_left_0__1_/logical_tile_io_mode_io__4/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_left_0__1_/logical_tile_io_mode_io__4/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[0][1][5]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_left_0__1_/logical_tile_io_mode_io__5/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_left_0__1_/logical_tile_io_mode_io__5/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[0][1][6]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_left_0__1_/logical_tile_io_mode_io__6/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_left_0__1_/logical_tile_io_mode_io__6/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[0][1][7]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_left_0__1_/logical_tile_io_mode_io__7/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_left_0__1_/logical_tile_io_mode_io__7/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for grid[0][2]
#######################################
#######################################
# Disable Timing for unused grid[0][2][0]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_left_0__2_/logical_tile_io_mode_io__0/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_left_0__2_/logical_tile_io_mode_io__0/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[0][2][1]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_left_0__2_/logical_tile_io_mode_io__1/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_left_0__2_/logical_tile_io_mode_io__1/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[0][2][2]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_left_0__2_/logical_tile_io_mode_io__2/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_left_0__2_/logical_tile_io_mode_io__2/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[0][2][3]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_left_0__2_/logical_tile_io_mode_io__3/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_left_0__2_/logical_tile_io_mode_io__3/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[0][2][4]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_left_0__2_/logical_tile_io_mode_io__4/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_left_0__2_/logical_tile_io_mode_io__4/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[0][2][5]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_left_0__2_/logical_tile_io_mode_io__5/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_left_0__2_/logical_tile_io_mode_io__5/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[0][2][6]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_left_0__2_/logical_tile_io_mode_io__6/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_left_0__2_/logical_tile_io_mode_io__6/logical_tile_io_mode_physical__iopad_0/*
#######################################
# Disable Timing for unused grid[0][2][7]
#######################################
#######################################
# Disable all the ports for pb_graph_node io[0]
#######################################
set_disable_timing grid_io_left_0__2_/logical_tile_io_mode_io__7/*
#######################################
# Disable all the ports for pb_graph_node iopad[0]
#######################################
set_disable_timing grid_io_left_0__2_/logical_tile_io_mode_io__7/logical_tile_io_mode_physical__iopad_0/*