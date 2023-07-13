#############################################
#	Synopsys Design Constraints (SDC)
#	For FPGA fabric 
#	Description: Timing constraints for Grid logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6 in PnR
#	Author: Xifan TANG 
#	Organization: University of Utah 
#	Date: Thu Jul 13 15:42:57 2023
#############################################

#############################################
#	Define time unit 
#############################################
set_units -time s

set_max_delay -from fpga_top/grid_clb/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6/lut6_in[0] -to fpga_top/grid_clb/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6/lut6_out[0] 2.609999994e-10
set_min_delay -from fpga_top/grid_clb/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6/lut6_in[0] -to fpga_top/grid_clb/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6/lut6_out[0] 2.609999994e-10
set_max_delay -from fpga_top/grid_clb/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6/lut6_in[1] -to fpga_top/grid_clb/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6/lut6_out[0] 2.609999994e-10
set_min_delay -from fpga_top/grid_clb/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6/lut6_in[1] -to fpga_top/grid_clb/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6/lut6_out[0] 2.609999994e-10
set_max_delay -from fpga_top/grid_clb/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6/lut6_in[2] -to fpga_top/grid_clb/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6/lut6_out[0] 2.609999994e-10
set_min_delay -from fpga_top/grid_clb/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6/lut6_in[2] -to fpga_top/grid_clb/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6/lut6_out[0] 2.609999994e-10
set_max_delay -from fpga_top/grid_clb/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6/lut6_in[3] -to fpga_top/grid_clb/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6/lut6_out[0] 2.609999994e-10
set_min_delay -from fpga_top/grid_clb/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6/lut6_in[3] -to fpga_top/grid_clb/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6/lut6_out[0] 2.609999994e-10
set_max_delay -from fpga_top/grid_clb/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6/lut6_in[4] -to fpga_top/grid_clb/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6/lut6_out[0] 2.609999994e-10
set_min_delay -from fpga_top/grid_clb/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6/lut6_in[4] -to fpga_top/grid_clb/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6/lut6_out[0] 2.609999994e-10
set_max_delay -from fpga_top/grid_clb/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6/lut6_in[5] -to fpga_top/grid_clb/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6/lut6_out[0] 2.609999994e-10
set_min_delay -from fpga_top/grid_clb/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6/lut6_in[5] -to fpga_top/grid_clb/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6/lut6_out[0] 2.609999994e-10
