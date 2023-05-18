#############################################
#	Synopsys Design Constraints (SDC)
#	For FPGA fabric 
#	Description: Timing constraints for Grid logical_tile_clb_mode_default__fle_mode_physical__ble6 in PnR
#	Author: Xifan TANG 
#	Organization: University of Utah 
#	Date: Wed May 17 00:09:22 2023
#############################################

#############################################
#	Define time unit 
#############################################
set_units -time s

set_max_delay -from fpga_top/grid_clb/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__ff_0/ff_Q[0] -to fpga_top/grid_clb/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_out[0] 4.500000025e-11
set_max_delay -from fpga_top/grid_clb/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_mode_default__lut6_0/lut6_out[0] -to fpga_top/grid_clb/logical_tile_clb_mode_clb__0/logical_tile_clb_mode_default__fle_0/logical_tile_clb_mode_default__fle_mode_physical__ble6_0/ble6_out[0] 2.500000033e-11
