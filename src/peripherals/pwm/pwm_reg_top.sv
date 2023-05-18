`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:     TUTEL
// Project:     INCI
// Engineer:    Serdar Unal
//*************************************************************************************************************************************************// 
// Create Date: 13/04/2022
// Module Name: pwm_reg_top
//
// Description: 
//
//*************************************************************************************************************************************************// 
//              TODO:
//    MAJOR     --> 
//    MINOR     --> 
//     ADD      --> 
//    CHECK     --> 
//         
//*************************************************************************************************************************************************// 
// Copyright 2022 TUTEL (IC Design and Training Center - TUBITAK).
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

import tluh_32_pkg::*;

module pwm_reg_top #(
  parameter  int RegAw = 8,
  parameter  int RegDw = 32, // Shall be matched with TL_DW
  localparam int RegBw = RegDw/8  
) (
  input                    clk_i,
  input                    rst_ni,
  // Bus Interface
  input  tl_h2d_t          tl_i,
  output tl_d2h_t          tl_o,
  // Register interface
  output logic             re_o,
  output logic             we_o,
  output logic [RegAw-1:0] addr_o,
  output logic [RegDw-1:0] wdata_o,
  input        [RegDw-1:0] rdata_i
);
  
    
  tl_h2d_t tl_reg_h2d;
  tl_d2h_t tl_reg_d2h;
  assign tl_reg_h2d = tl_i;
  assign tl_o = tl_reg_d2h;
  
  tlul_adapter_reg #(
  
  ) adapter (
    .clk_i      (clk_i),
    .rst_ni     (rst_ni),
  // TL-UL interface
    .tl_i       (tl_reg_h2d),
    .tl_o       (tl_reg_d2h),
  // Register interface
    .re_o       (re_o),
    .we_o       (we_o),
    .addr_o     (addr_o),
    .wdata_o    (wdata_o),
    .be_o       (),
    .busy_i     (1'b0),
    .rdata_i    (rdata_i),
    .error_i    (1'b0)
  );
  
endmodule
