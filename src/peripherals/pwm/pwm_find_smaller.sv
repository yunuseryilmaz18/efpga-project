`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:     TUTEL
// Project:     INCI
// Engineer:    Serdar Unal
//*************************************************************************************************************************************************// 
// Create Date: 13/04/2022
// Module Name: pwm_find_smaller
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

module pwm_find_smaller #(
  parameter Resolution = 16
) (
  input        [Resolution-1:0]   number_1,
  input        [Resolution-1:0]   number_2,
  output logic [Resolution-1:0]   smaller_number,
  output logic [Resolution-1:0]   larger_number
);
  // simple module two sort two numbers
  // written as separated module to improve reusability 
  assign smaller_number = (number_1 <= number_2) ? number_1 : number_2;
  assign larger_number  = (number_1 > number_2)  ? number_1 : number_2;

endmodule
