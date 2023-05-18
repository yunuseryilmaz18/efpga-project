`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:     TUTEL
// Project:     INCI
// Engineer:    Serdar Unal
//*************************************************************************************************************************************************// 
// Create Date: 13/04/2022
// Module Name: pwm_standard_mode
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


module pwm_standard_mode #(
  parameter Resolution     = 16,
  parameter StepResolution = 8
) (
  input                            clk_i,
  input                            rst_ni,
  input       [Resolution-1:0]     threshold_counter,
  input       [Resolution-1:0]     period_counter,
  input       [StepResolution-1:0] step,
  output logic                     pwm_signal
);

  reg                    output_q;
  reg   [Resolution-1:0] counter;
  
  assign pwm_signal = output_q;
  
  always_ff @(posedge clk_i) begin
    if (rst_ni == 0  | threshold_counter == 0) begin
      counter   <= 0;
      output_q  <= 0;
    end else begin
      if (counter < threshold_counter) begin
        // the signal stays at 1 until threshold
        output_q <= 1;
        counter  <= counter + step;
      end else if (counter >= threshold_counter && counter < period_counter) begin
        // between threshold and full period, the signal stays 0
        output_q <= 0;
        if (counter >= period_counter - step) begin
          // counter is reset to create new PWM signal  
          counter <= 0;
        end else begin
          counter <= counter + step;
        end
      end else begin
        output_q  <= 0;
        counter   <= 0;
      end
    end
        
        
  end
    
  
endmodule
