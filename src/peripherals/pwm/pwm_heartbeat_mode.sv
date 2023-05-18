`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:     TUTEL
// Project:     INCI
// Engineer:    Serdar Unal
//*************************************************************************************************************************************************// 
// Create Date: 13/04/2022
// Module Name: pwm_heartbeat_mode
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


module pwm_heartbeat_mode #(
  parameter Resolution = 16,
  parameter StepResolution = 8
) (
  input                          clk_i,
  input                          rst_ni,
  input        [Resolution-1:0]  threshold_counter_1,
  input        [Resolution-1:0]  threshold_counter_2,
  input        [Resolution-1:0]  period_counter,
  input        [Resolution-1:0]  increment_step,
  output logic [Resolution-1:0]  counter
);

  reg                      direction;
  reg   [Resolution-1:0]   counter_q;
  reg   [Resolution-1:0]   counter_temp;
  reg   [Resolution-1:0]   smaller_number_q;
  reg   [Resolution-1:0]   larger_number_q;
  logic [Resolution-1:0]   smaller_number;
  logic [Resolution-1:0]   larger_number;
  
  assign counter = counter_q;  
 
  pwm_find_smaller #(
    .Resolution         (Resolution)
  ) find_smaller_number (
    .number_1           (threshold_counter_1),
    .number_2           (threshold_counter_2),
    .smaller_number     (smaller_number),
    .larger_number      (larger_number)
  );
  
  always_ff @(posedge clk_i) begin
    if (rst_ni == 0) begin
      smaller_number_q <= 0;
      larger_number_q  <= 0;
    end else begin
      smaller_number_q <= smaller_number;
      larger_number_q  <= larger_number;
    end
  end
  
  // the threshold is initially goes from smaller number to larger number, later the direction is reversed
  // the threshold is updated after a period_counter
  always_ff @(posedge clk_i) begin
    if (rst_ni == 0) begin
      counter_temp <= 0;
      counter_q    <= 0;
      direction    <= 0;
    end else begin
      if (counter_temp < period_counter) begin
        counter_temp <= counter_temp + 1;
        counter_q    <= counter_q;
        direction    <= direction;
      end else begin
        counter_temp <= 0;
        if (counter_q == 0 || smaller_number_q != smaller_number || larger_number_q != larger_number) begin
          counter_q <= smaller_number;
          direction <= 0;
        end else begin
          if (counter_q > (larger_number_q-increment_step) && direction == 0) begin
            // if the counter_q reaches larger_number_q, the direction is reversed
            counter_q <= counter_q - increment_step;
            direction <= 1;
          end else if (counter_q < (smaller_number_q+increment_step) && direction == 1) begin
            // if the counter_q reaches smaller_number_q, the direction is reversed
            counter_q <= counter_q + increment_step;
            direction <= 0;
          end else begin
            if (direction == 0) begin
              // from lower to higher
              counter_q <= counter_q + increment_step;
            end else begin
              // from higher to lower
              counter_q <= counter_q - increment_step;
            end
          end
        end
      end
    end       
  end
endmodule


