#############################################
#	Synopsys Design Constraints (SDC)
#	For FPGA fabric 
#	Description: Constrain timing of Switch Block sb_0__0_ for PnR
#	Author: Xifan TANG 
#	Organization: University of Utah 
#	Date: Thu Jul  6 16:45:25 2023
#############################################

#############################################
#	Define time unit 
#############################################
set_units -time s

set_max_delay -from fpga_top/sb_0__0_/top_left_grid_right_width_0_height_0_subtile_0__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chany_top_out[0] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_right_grid_left_width_0_height_0_subtile_0__pin_O_11_[0] -to fpga_top/sb_0__0_/chany_top_out[0] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chanx_right_in[1] -to fpga_top/sb_0__0_/chany_top_out[0] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_left_grid_right_width_0_height_0_subtile_1__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chany_top_out[1] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_right_grid_left_width_0_height_0_subtile_0__pin_O_15_[0] -to fpga_top/sb_0__0_/chany_top_out[1] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chanx_right_in[2] -to fpga_top/sb_0__0_/chany_top_out[1] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_left_grid_right_width_0_height_0_subtile_2__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chany_top_out[2] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_right_grid_left_width_0_height_0_subtile_0__pin_O_19_[0] -to fpga_top/sb_0__0_/chany_top_out[2] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chanx_right_in[3] -to fpga_top/sb_0__0_/chany_top_out[2] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_left_grid_right_width_0_height_0_subtile_3__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chany_top_out[3] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chanx_right_in[4] -to fpga_top/sb_0__0_/chany_top_out[3] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_left_grid_right_width_0_height_0_subtile_4__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chany_top_out[4] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chanx_right_in[5] -to fpga_top/sb_0__0_/chany_top_out[4] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_left_grid_right_width_0_height_0_subtile_5__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chany_top_out[5] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chanx_right_in[6] -to fpga_top/sb_0__0_/chany_top_out[5] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_left_grid_right_width_0_height_0_subtile_6__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chany_top_out[6] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chanx_right_in[7] -to fpga_top/sb_0__0_/chany_top_out[6] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_left_grid_right_width_0_height_0_subtile_7__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chany_top_out[7] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chanx_right_in[8] -to fpga_top/sb_0__0_/chany_top_out[7] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_right_grid_left_width_0_height_0_subtile_0__pin_O_3_[0] -to fpga_top/sb_0__0_/chany_top_out[8] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chanx_right_in[9] -to fpga_top/sb_0__0_/chany_top_out[8] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_right_grid_left_width_0_height_0_subtile_0__pin_O_7_[0] -to fpga_top/sb_0__0_/chany_top_out[9] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chanx_right_in[10] -to fpga_top/sb_0__0_/chany_top_out[9] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_left_grid_right_width_0_height_0_subtile_0__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chany_top_out[10] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_right_grid_left_width_0_height_0_subtile_0__pin_O_11_[0] -to fpga_top/sb_0__0_/chany_top_out[10] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chanx_right_in[11] -to fpga_top/sb_0__0_/chany_top_out[10] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_left_grid_right_width_0_height_0_subtile_1__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chany_top_out[11] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_right_grid_left_width_0_height_0_subtile_0__pin_O_15_[0] -to fpga_top/sb_0__0_/chany_top_out[11] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chanx_right_in[12] -to fpga_top/sb_0__0_/chany_top_out[11] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_left_grid_right_width_0_height_0_subtile_2__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chany_top_out[12] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_right_grid_left_width_0_height_0_subtile_0__pin_O_19_[0] -to fpga_top/sb_0__0_/chany_top_out[12] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chanx_right_in[13] -to fpga_top/sb_0__0_/chany_top_out[12] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_left_grid_right_width_0_height_0_subtile_3__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chany_top_out[13] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chanx_right_in[14] -to fpga_top/sb_0__0_/chany_top_out[13] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_left_grid_right_width_0_height_0_subtile_4__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chany_top_out[14] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chanx_right_in[15] -to fpga_top/sb_0__0_/chany_top_out[14] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_left_grid_right_width_0_height_0_subtile_5__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chany_top_out[15] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chanx_right_in[16] -to fpga_top/sb_0__0_/chany_top_out[15] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_left_grid_right_width_0_height_0_subtile_6__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chany_top_out[16] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chanx_right_in[17] -to fpga_top/sb_0__0_/chany_top_out[16] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_left_grid_right_width_0_height_0_subtile_7__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chany_top_out[17] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chanx_right_in[18] -to fpga_top/sb_0__0_/chany_top_out[17] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_right_grid_left_width_0_height_0_subtile_0__pin_O_3_[0] -to fpga_top/sb_0__0_/chany_top_out[18] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chanx_right_in[19] -to fpga_top/sb_0__0_/chany_top_out[18] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_right_grid_left_width_0_height_0_subtile_0__pin_O_7_[0] -to fpga_top/sb_0__0_/chany_top_out[19] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chanx_right_in[20] -to fpga_top/sb_0__0_/chany_top_out[19] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_left_grid_right_width_0_height_0_subtile_0__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chany_top_out[20] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_right_grid_left_width_0_height_0_subtile_0__pin_O_11_[0] -to fpga_top/sb_0__0_/chany_top_out[20] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chanx_right_in[21] -to fpga_top/sb_0__0_/chany_top_out[20] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_left_grid_right_width_0_height_0_subtile_1__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chany_top_out[21] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_right_grid_left_width_0_height_0_subtile_0__pin_O_15_[0] -to fpga_top/sb_0__0_/chany_top_out[21] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chanx_right_in[22] -to fpga_top/sb_0__0_/chany_top_out[21] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_left_grid_right_width_0_height_0_subtile_2__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chany_top_out[22] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_right_grid_left_width_0_height_0_subtile_0__pin_O_19_[0] -to fpga_top/sb_0__0_/chany_top_out[22] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chanx_right_in[23] -to fpga_top/sb_0__0_/chany_top_out[22] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_left_grid_right_width_0_height_0_subtile_3__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chany_top_out[23] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chanx_right_in[24] -to fpga_top/sb_0__0_/chany_top_out[23] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_left_grid_right_width_0_height_0_subtile_4__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chany_top_out[24] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chanx_right_in[25] -to fpga_top/sb_0__0_/chany_top_out[24] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_left_grid_right_width_0_height_0_subtile_5__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chany_top_out[25] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chanx_right_in[26] -to fpga_top/sb_0__0_/chany_top_out[25] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_left_grid_right_width_0_height_0_subtile_6__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chany_top_out[26] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chanx_right_in[27] -to fpga_top/sb_0__0_/chany_top_out[26] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_left_grid_right_width_0_height_0_subtile_7__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chany_top_out[27] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chanx_right_in[28] -to fpga_top/sb_0__0_/chany_top_out[27] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_right_grid_left_width_0_height_0_subtile_0__pin_O_3_[0] -to fpga_top/sb_0__0_/chany_top_out[28] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chanx_right_in[29] -to fpga_top/sb_0__0_/chany_top_out[28] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_right_grid_left_width_0_height_0_subtile_0__pin_O_7_[0] -to fpga_top/sb_0__0_/chany_top_out[29] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chanx_right_in[30] -to fpga_top/sb_0__0_/chany_top_out[29] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_left_grid_right_width_0_height_0_subtile_0__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chany_top_out[30] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_right_grid_left_width_0_height_0_subtile_0__pin_O_11_[0] -to fpga_top/sb_0__0_/chany_top_out[30] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chanx_right_in[31] -to fpga_top/sb_0__0_/chany_top_out[30] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_left_grid_right_width_0_height_0_subtile_1__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chany_top_out[31] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_right_grid_left_width_0_height_0_subtile_0__pin_O_15_[0] -to fpga_top/sb_0__0_/chany_top_out[31] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chanx_right_in[32] -to fpga_top/sb_0__0_/chany_top_out[31] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_left_grid_right_width_0_height_0_subtile_2__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chany_top_out[32] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_right_grid_left_width_0_height_0_subtile_0__pin_O_19_[0] -to fpga_top/sb_0__0_/chany_top_out[32] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chanx_right_in[33] -to fpga_top/sb_0__0_/chany_top_out[32] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_left_grid_right_width_0_height_0_subtile_3__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chany_top_out[33] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chanx_right_in[34] -to fpga_top/sb_0__0_/chany_top_out[33] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_left_grid_right_width_0_height_0_subtile_4__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chany_top_out[34] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chanx_right_in[35] -to fpga_top/sb_0__0_/chany_top_out[34] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_left_grid_right_width_0_height_0_subtile_5__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chany_top_out[35] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chanx_right_in[36] -to fpga_top/sb_0__0_/chany_top_out[35] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_left_grid_right_width_0_height_0_subtile_6__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chany_top_out[36] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chanx_right_in[37] -to fpga_top/sb_0__0_/chany_top_out[36] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_left_grid_right_width_0_height_0_subtile_7__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chany_top_out[37] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chanx_right_in[38] -to fpga_top/sb_0__0_/chany_top_out[37] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_right_grid_left_width_0_height_0_subtile_0__pin_O_3_[0] -to fpga_top/sb_0__0_/chany_top_out[38] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chanx_right_in[39] -to fpga_top/sb_0__0_/chany_top_out[38] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_right_grid_left_width_0_height_0_subtile_0__pin_O_7_[0] -to fpga_top/sb_0__0_/chany_top_out[39] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chanx_right_in[40] -to fpga_top/sb_0__0_/chany_top_out[39] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_left_grid_right_width_0_height_0_subtile_0__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chany_top_out[40] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_right_grid_left_width_0_height_0_subtile_0__pin_O_11_[0] -to fpga_top/sb_0__0_/chany_top_out[40] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chanx_right_in[41] -to fpga_top/sb_0__0_/chany_top_out[40] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_left_grid_right_width_0_height_0_subtile_1__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chany_top_out[41] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_right_grid_left_width_0_height_0_subtile_0__pin_O_15_[0] -to fpga_top/sb_0__0_/chany_top_out[41] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chanx_right_in[42] -to fpga_top/sb_0__0_/chany_top_out[41] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_left_grid_right_width_0_height_0_subtile_2__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chany_top_out[42] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_right_grid_left_width_0_height_0_subtile_0__pin_O_19_[0] -to fpga_top/sb_0__0_/chany_top_out[42] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chanx_right_in[43] -to fpga_top/sb_0__0_/chany_top_out[42] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_left_grid_right_width_0_height_0_subtile_3__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chany_top_out[43] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chanx_right_in[44] -to fpga_top/sb_0__0_/chany_top_out[43] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_left_grid_right_width_0_height_0_subtile_4__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chany_top_out[44] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chanx_right_in[45] -to fpga_top/sb_0__0_/chany_top_out[44] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_left_grid_right_width_0_height_0_subtile_5__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chany_top_out[45] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chanx_right_in[46] -to fpga_top/sb_0__0_/chany_top_out[45] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_left_grid_right_width_0_height_0_subtile_6__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chany_top_out[46] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chanx_right_in[47] -to fpga_top/sb_0__0_/chany_top_out[46] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_left_grid_right_width_0_height_0_subtile_7__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chany_top_out[47] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chanx_right_in[48] -to fpga_top/sb_0__0_/chany_top_out[47] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_right_grid_left_width_0_height_0_subtile_0__pin_O_3_[0] -to fpga_top/sb_0__0_/chany_top_out[48] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chanx_right_in[49] -to fpga_top/sb_0__0_/chany_top_out[48] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/top_right_grid_left_width_0_height_0_subtile_0__pin_O_7_[0] -to fpga_top/sb_0__0_/chany_top_out[49] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chanx_right_in[0] -to fpga_top/sb_0__0_/chany_top_out[49] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_bottom_grid_top_width_0_height_0_subtile_5__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chanx_right_out[0] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_2_[0] -to fpga_top/sb_0__0_/chanx_right_out[0] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chany_top_in[49] -to fpga_top/sb_0__0_/chanx_right_out[0] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_bottom_grid_top_width_0_height_0_subtile_6__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chanx_right_out[1] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_6_[0] -to fpga_top/sb_0__0_/chanx_right_out[1] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chany_top_in[0] -to fpga_top/sb_0__0_/chanx_right_out[1] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_bottom_grid_top_width_0_height_0_subtile_7__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chanx_right_out[2] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_10_[0] -to fpga_top/sb_0__0_/chanx_right_out[2] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chany_top_in[1] -to fpga_top/sb_0__0_/chanx_right_out[2] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_14_[0] -to fpga_top/sb_0__0_/chanx_right_out[3] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chany_top_in[2] -to fpga_top/sb_0__0_/chanx_right_out[3] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_18_[0] -to fpga_top/sb_0__0_/chanx_right_out[4] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chany_top_in[3] -to fpga_top/sb_0__0_/chanx_right_out[4] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_bottom_grid_top_width_0_height_0_subtile_0__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chanx_right_out[5] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chany_top_in[4] -to fpga_top/sb_0__0_/chanx_right_out[5] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_bottom_grid_top_width_0_height_0_subtile_1__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chanx_right_out[6] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chany_top_in[5] -to fpga_top/sb_0__0_/chanx_right_out[6] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_bottom_grid_top_width_0_height_0_subtile_2__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chanx_right_out[7] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chany_top_in[6] -to fpga_top/sb_0__0_/chanx_right_out[7] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_bottom_grid_top_width_0_height_0_subtile_3__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chanx_right_out[8] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chany_top_in[7] -to fpga_top/sb_0__0_/chanx_right_out[8] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_bottom_grid_top_width_0_height_0_subtile_4__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chanx_right_out[9] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chany_top_in[8] -to fpga_top/sb_0__0_/chanx_right_out[9] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_bottom_grid_top_width_0_height_0_subtile_5__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chanx_right_out[10] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_2_[0] -to fpga_top/sb_0__0_/chanx_right_out[10] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chany_top_in[9] -to fpga_top/sb_0__0_/chanx_right_out[10] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_bottom_grid_top_width_0_height_0_subtile_6__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chanx_right_out[11] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_6_[0] -to fpga_top/sb_0__0_/chanx_right_out[11] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chany_top_in[10] -to fpga_top/sb_0__0_/chanx_right_out[11] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_bottom_grid_top_width_0_height_0_subtile_7__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chanx_right_out[12] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_10_[0] -to fpga_top/sb_0__0_/chanx_right_out[12] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chany_top_in[11] -to fpga_top/sb_0__0_/chanx_right_out[12] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_14_[0] -to fpga_top/sb_0__0_/chanx_right_out[13] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chany_top_in[12] -to fpga_top/sb_0__0_/chanx_right_out[13] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_18_[0] -to fpga_top/sb_0__0_/chanx_right_out[14] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chany_top_in[13] -to fpga_top/sb_0__0_/chanx_right_out[14] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_bottom_grid_top_width_0_height_0_subtile_0__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chanx_right_out[15] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chany_top_in[14] -to fpga_top/sb_0__0_/chanx_right_out[15] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_bottom_grid_top_width_0_height_0_subtile_1__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chanx_right_out[16] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chany_top_in[15] -to fpga_top/sb_0__0_/chanx_right_out[16] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_bottom_grid_top_width_0_height_0_subtile_2__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chanx_right_out[17] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chany_top_in[16] -to fpga_top/sb_0__0_/chanx_right_out[17] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_bottom_grid_top_width_0_height_0_subtile_3__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chanx_right_out[18] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chany_top_in[17] -to fpga_top/sb_0__0_/chanx_right_out[18] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_bottom_grid_top_width_0_height_0_subtile_4__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chanx_right_out[19] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chany_top_in[18] -to fpga_top/sb_0__0_/chanx_right_out[19] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_bottom_grid_top_width_0_height_0_subtile_5__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chanx_right_out[20] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_2_[0] -to fpga_top/sb_0__0_/chanx_right_out[20] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chany_top_in[19] -to fpga_top/sb_0__0_/chanx_right_out[20] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_bottom_grid_top_width_0_height_0_subtile_6__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chanx_right_out[21] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_6_[0] -to fpga_top/sb_0__0_/chanx_right_out[21] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chany_top_in[20] -to fpga_top/sb_0__0_/chanx_right_out[21] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_bottom_grid_top_width_0_height_0_subtile_7__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chanx_right_out[22] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_10_[0] -to fpga_top/sb_0__0_/chanx_right_out[22] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chany_top_in[21] -to fpga_top/sb_0__0_/chanx_right_out[22] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_14_[0] -to fpga_top/sb_0__0_/chanx_right_out[23] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chany_top_in[22] -to fpga_top/sb_0__0_/chanx_right_out[23] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_18_[0] -to fpga_top/sb_0__0_/chanx_right_out[24] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chany_top_in[23] -to fpga_top/sb_0__0_/chanx_right_out[24] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_bottom_grid_top_width_0_height_0_subtile_0__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chanx_right_out[25] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chany_top_in[24] -to fpga_top/sb_0__0_/chanx_right_out[25] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_bottom_grid_top_width_0_height_0_subtile_1__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chanx_right_out[26] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chany_top_in[25] -to fpga_top/sb_0__0_/chanx_right_out[26] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_bottom_grid_top_width_0_height_0_subtile_2__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chanx_right_out[27] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chany_top_in[26] -to fpga_top/sb_0__0_/chanx_right_out[27] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_bottom_grid_top_width_0_height_0_subtile_3__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chanx_right_out[28] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chany_top_in[27] -to fpga_top/sb_0__0_/chanx_right_out[28] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_bottom_grid_top_width_0_height_0_subtile_4__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chanx_right_out[29] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chany_top_in[28] -to fpga_top/sb_0__0_/chanx_right_out[29] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_bottom_grid_top_width_0_height_0_subtile_5__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chanx_right_out[30] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_2_[0] -to fpga_top/sb_0__0_/chanx_right_out[30] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chany_top_in[29] -to fpga_top/sb_0__0_/chanx_right_out[30] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_bottom_grid_top_width_0_height_0_subtile_6__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chanx_right_out[31] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_6_[0] -to fpga_top/sb_0__0_/chanx_right_out[31] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chany_top_in[30] -to fpga_top/sb_0__0_/chanx_right_out[31] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_bottom_grid_top_width_0_height_0_subtile_7__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chanx_right_out[32] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_10_[0] -to fpga_top/sb_0__0_/chanx_right_out[32] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chany_top_in[31] -to fpga_top/sb_0__0_/chanx_right_out[32] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_14_[0] -to fpga_top/sb_0__0_/chanx_right_out[33] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chany_top_in[32] -to fpga_top/sb_0__0_/chanx_right_out[33] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_18_[0] -to fpga_top/sb_0__0_/chanx_right_out[34] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chany_top_in[33] -to fpga_top/sb_0__0_/chanx_right_out[34] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_bottom_grid_top_width_0_height_0_subtile_0__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chanx_right_out[35] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chany_top_in[34] -to fpga_top/sb_0__0_/chanx_right_out[35] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_bottom_grid_top_width_0_height_0_subtile_1__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chanx_right_out[36] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chany_top_in[35] -to fpga_top/sb_0__0_/chanx_right_out[36] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_bottom_grid_top_width_0_height_0_subtile_2__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chanx_right_out[37] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chany_top_in[36] -to fpga_top/sb_0__0_/chanx_right_out[37] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_bottom_grid_top_width_0_height_0_subtile_3__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chanx_right_out[38] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chany_top_in[37] -to fpga_top/sb_0__0_/chanx_right_out[38] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_bottom_grid_top_width_0_height_0_subtile_4__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chanx_right_out[39] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chany_top_in[38] -to fpga_top/sb_0__0_/chanx_right_out[39] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_bottom_grid_top_width_0_height_0_subtile_5__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chanx_right_out[40] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_2_[0] -to fpga_top/sb_0__0_/chanx_right_out[40] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chany_top_in[39] -to fpga_top/sb_0__0_/chanx_right_out[40] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_bottom_grid_top_width_0_height_0_subtile_6__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chanx_right_out[41] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_6_[0] -to fpga_top/sb_0__0_/chanx_right_out[41] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chany_top_in[40] -to fpga_top/sb_0__0_/chanx_right_out[41] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_bottom_grid_top_width_0_height_0_subtile_7__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chanx_right_out[42] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_10_[0] -to fpga_top/sb_0__0_/chanx_right_out[42] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chany_top_in[41] -to fpga_top/sb_0__0_/chanx_right_out[42] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_14_[0] -to fpga_top/sb_0__0_/chanx_right_out[43] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chany_top_in[42] -to fpga_top/sb_0__0_/chanx_right_out[43] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_18_[0] -to fpga_top/sb_0__0_/chanx_right_out[44] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chany_top_in[43] -to fpga_top/sb_0__0_/chanx_right_out[44] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_bottom_grid_top_width_0_height_0_subtile_0__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chanx_right_out[45] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chany_top_in[44] -to fpga_top/sb_0__0_/chanx_right_out[45] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_bottom_grid_top_width_0_height_0_subtile_1__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chanx_right_out[46] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chany_top_in[45] -to fpga_top/sb_0__0_/chanx_right_out[46] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_bottom_grid_top_width_0_height_0_subtile_2__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chanx_right_out[47] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chany_top_in[46] -to fpga_top/sb_0__0_/chanx_right_out[47] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_bottom_grid_top_width_0_height_0_subtile_3__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chanx_right_out[48] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chany_top_in[47] -to fpga_top/sb_0__0_/chanx_right_out[48] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/right_bottom_grid_top_width_0_height_0_subtile_4__pin_inpad_0_[0] -to fpga_top/sb_0__0_/chanx_right_out[49] 6.020400151e-11
set_max_delay -from fpga_top/sb_0__0_/chany_top_in[48] -to fpga_top/sb_0__0_/chanx_right_out[49] 6.020400151e-11
