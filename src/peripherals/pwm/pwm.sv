`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:     TUTEL
// Project:     INCI
// Engineer:    Serdar Unal
//*************************************************************************************************************************************************// 
// Create Date: 13/04/2022
// Module Name: pwm
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

module pwm #(

) (
  input           clk_i,
  input           rst_ni,
  // Bus Interface
  input            picorv32_pkg::wb_h2d_t wb_i,  
  output           picorv32_pkg::wb_d2h_t wb_o,   
  // Generic IO
  output logic    pwm0_o,
  output logic    pwm1_o
);

   (* MARK_DEBUG="true" *)tluh_32_pkg::tl_h2d_t tl_i;
   (* MARK_DEBUG="true" *)tluh_32_pkg::tl_d2h_t tl_o;
 
wb_adapter_tl u_wb_adapter_tl(
    .wb_i,
    .wb_o,
    .tl_i,
    .tl_o
);

  localparam     Resolution = 32;
  localparam     StepResolution = 12;
  localparam int RegAw = 8;
  localparam int RegDw = 32; // Shall be matched with TL_DW
  localparam int RegBw = RegDw/8;
  localparam     IDLE = 3'b000;
  localparam     STANDARD  = 3'b001;
  localparam     HEARTBEAT = 3'b010;

  reg  [2:0]             pwm0_state_select_q; // choose between modes
  reg  [2:0]             pwm1_state_select_q; // choose between modes

  reg  [Resolution-1:0]      pwm0_period_counter_q;
  reg  [Resolution-1:0]      pwm1_period_counter_q;
  
  reg  [Resolution-1:0]      pwm0_threshold_counter_1_q; 
  reg  [Resolution-1:0]      pwm0_threshold_counter_2_q;
  
  reg  [Resolution-1:0]      pwm1_threshold_counter_1_q; 
  reg  [Resolution-1:0]      pwm1_threshold_counter_2_q;
  
  reg  [Resolution-1:0]      pwm0_step_q;
  reg  [Resolution-1:0]      pwm1_step_q;

  
  logic                    pwm0_output_wire_standard;
  logic                    pwm0_output_wire_heartbeat;
  logic                    pwm1_output_wire_standard;
  logic                    pwm1_output_wire_heartbeat;
  reg                      pwm0_o_q;
  reg                      pwm1_o_q;
  reg    [3:0]             pwm0_enable_pwm; // one hot encoded version of state_select
  reg    [3:0]             pwm1_enable_pwm; // one hot encoded version of state_select
  
  // Register interface
  logic             re_o;
  logic             we_o;
  logic [RegAw-1:0] addr_o;
  logic [RegDw-1:0] wdata_o;
  logic [RegDw-1:0] rdata_i;
  
 tluh_32_pkg::tl_h2d_t tl_reg_h2d;
 tluh_32_pkg::tl_d2h_t tl_reg_d2h;
  
  assign tl_reg_h2d = tl_i;
  assign tl_o = tl_reg_d2h;
  
  pwm_reg_top #(
    .RegAw   (RegAw),
    .RegDw   (RegDw) // Shall be matched with TL_DW
  ) pwm_reg (
    .clk_i   (clk_i),
    .rst_ni  (rst_ni),
  // Bus Interface
    .tl_i    (tl_reg_h2d),
    .tl_o    (tl_reg_d2h),
  // Register interface
    .re_o    (re_o),
    .we_o    (we_o),
    .addr_o  (addr_o),
    .wdata_o (wdata_o),
    .rdata_i (rdata_i)
  );

  // Register file
  // register file approach was not changed because there is no excessive utilization similar to PLIC where there are many couple of bits wide register
  // that are not optimized away
  logic [3:0]       addr_register_file;
  assign addr_register_file = addr_o[7:0] >> 2; // addr_o is divided by four since register addresses increases four by four
  
  assign pwm0_o = pwm0_o_q;
  assign pwm1_o = pwm1_o_q;
  
  integer k;
  
  always_ff @(posedge clk_i) begin
    if (rst_ni == 0) begin
      // registers are initialized to 0
      pwm0_state_select_q                  <= '0;
      pwm1_state_select_q                  <= '0;
      pwm0_period_counter_q                <= '0;
      pwm1_period_counter_q                <= '0;
      pwm0_threshold_counter_1_q           <= '0;
      pwm0_threshold_counter_2_q           <= '0;
      pwm1_threshold_counter_1_q           <= '0;
      pwm1_threshold_counter_2_q           <= '0;
      pwm0_step_q                          <= '0;
      pwm1_step_q                          <= '0;
    end else begin
      if (we_o) begin
        // regular write operation when write enable is 1, nothing special
        case (addr_register_file)
          0:  pwm0_state_select_q             <= wdata_o;
          1:  pwm1_state_select_q             <= wdata_o;
          2:  pwm0_period_counter_q           <= wdata_o;
          3:  pwm1_period_counter_q           <= wdata_o;
          4:  pwm0_threshold_counter_1_q      <= wdata_o;
          5:  pwm0_threshold_counter_2_q      <= wdata_o;
          6:  pwm1_threshold_counter_1_q      <= wdata_o;
          7:  pwm1_threshold_counter_2_q      <= wdata_o;
          8:  pwm0_step_q                     <= wdata_o;
          9:  pwm1_step_q                     <= wdata_o;
          default: begin
            pwm0_state_select_q  <= pwm0_state_select_q;
            pwm1_state_select_q  <= pwm1_state_select_q;
          end
        endcase
      end
    end
  end
  
  always_comb begin
    if (re_o) begin
      // regular read operation when read enable is 1, nothing special
      case (addr_register_file)
        0:  rdata_i = pwm0_state_select_q;
        1:  rdata_i = pwm1_state_select_q;
        2:  rdata_i = pwm0_period_counter_q;
        3:  rdata_i = pwm1_period_counter_q;
        4:  rdata_i = pwm0_threshold_counter_1_q;
        5:  rdata_i = pwm0_threshold_counter_2_q;
        6:  rdata_i = pwm1_threshold_counter_1_q;
        7:  rdata_i = pwm1_threshold_counter_2_q;
        8:  rdata_i = pwm0_step_q;
        9:  rdata_i = pwm1_step_q;
        10: rdata_i = pwm0_o_q;
        11: rdata_i = pwm1_o_q;
        default: rdata_i = 0;
      endcase
    end else begin
      rdata_i = 0;
    end
  end
  
  // small setup to merge pwm_standard_mode with the pwm_standard_mode inside the pwm_heartbeat_mode
  // not convinced whether this resulted in important amount of improvement 
  logic  [Resolution-1:0]     pwm0_threshold_counter_standard_mux;
  logic  [Resolution-1:0]     pwm0_period_counter_standard_mux;
  logic  [Resolution-1:0]     pwm0_threshold_counter_heartbeat_o;
  logic                       pwm0_output_wire_standard_mux;
  
  logic  [Resolution-1:0]     pwm1_threshold_counter_standard_mux;
  logic  [Resolution-1:0]     pwm1_period_counter_standard_mux;
  logic  [Resolution-1:0]     pwm1_threshold_counter_heartbeat_o;
  logic                       pwm1_output_wire_standard_mux;
  
  // standard pwm hardware is used for standard mode in default case. its output is directed to other modes if the mode is heartbeat
  // inputs to the pwm_standard_mode is also determined there according to the mode
  always_comb begin
    case (pwm0_state_select_q)
      IDLE: begin    // Idle mode
        pwm0_output_wire_standard  = 0;
        pwm0_output_wire_heartbeat = 0;
        pwm0_threshold_counter_standard_mux = pwm0_threshold_counter_1_q;
        pwm0_period_counter_standard_mux = pwm0_period_counter_q;
      end
      STANDARD: begin   // Standard mode
        pwm0_output_wire_standard  = pwm0_output_wire_standard_mux;
        pwm0_output_wire_heartbeat = 0;
        pwm0_threshold_counter_standard_mux = pwm0_threshold_counter_1_q;
        pwm0_period_counter_standard_mux = pwm0_period_counter_q;
      end
      HEARTBEAT: begin  // Heartbeat mode
        pwm0_output_wire_standard  = 0;
        pwm0_output_wire_heartbeat = pwm0_output_wire_standard_mux;
        pwm0_threshold_counter_standard_mux = pwm0_threshold_counter_heartbeat_o;
        pwm0_period_counter_standard_mux = pwm0_period_counter_q;
      end
      default: begin
        pwm0_output_wire_standard  = 0;
        pwm0_output_wire_heartbeat = 0;
        pwm0_threshold_counter_standard_mux = pwm0_threshold_counter_1_q;
        pwm0_period_counter_standard_mux = pwm0_period_counter_q;
      end
    endcase
  end
  
  always_comb begin
    case (pwm1_state_select_q)
      IDLE: begin    // Idle mode
        pwm1_output_wire_standard  = 0;
        pwm1_output_wire_heartbeat = 0;
        pwm1_threshold_counter_standard_mux = pwm1_threshold_counter_1_q;
        pwm1_period_counter_standard_mux = pwm1_period_counter_q;
      end
      STANDARD: begin   // Standard mode
        pwm1_output_wire_standard  = pwm1_output_wire_standard_mux;
        pwm1_output_wire_heartbeat = 0;
        pwm1_threshold_counter_standard_mux = pwm1_threshold_counter_1_q;
        pwm1_period_counter_standard_mux = pwm1_period_counter_q;
      end
      HEARTBEAT: begin  // Heartbeat mode
        pwm1_output_wire_standard  = 0;
        pwm1_output_wire_heartbeat = pwm1_output_wire_standard_mux;
        pwm1_threshold_counter_standard_mux = pwm1_threshold_counter_heartbeat_o;
        pwm1_period_counter_standard_mux = pwm1_period_counter_q;
      end
      default: begin
        pwm1_output_wire_standard  = 0;
        pwm1_output_wire_heartbeat = 0;
        pwm1_threshold_counter_standard_mux = pwm1_threshold_counter_1_q;
        pwm1_period_counter_standard_mux = pwm1_period_counter_q;
      end
    endcase
  end
  
  // particular modules are enabled/disabled according to the mode (hardware is there but hold in reset)
  // pwm_standard_mode is active in all modes except idle 
  pwm_standard_mode #(
    .Resolution          (Resolution),
    .StepResolution      (StepResolution)
  ) standard_mode_pwm0 (  
    .clk_i               (clk_i),
    .rst_ni              (rst_ni & (pwm0_enable_pwm[STANDARD] | pwm0_enable_pwm[HEARTBEAT])),
    .threshold_counter   (pwm0_threshold_counter_standard_mux),
    .period_counter      (pwm0_period_counter_q),
    .step                (12'b1),
    .pwm_signal          (pwm0_output_wire_standard_mux)
  );
  
  
  pwm_heartbeat_mode #(
    .Resolution          (Resolution),
    .StepResolution      (StepResolution)
  ) heartbeat_mode_pwm0 (
    .clk_i               (clk_i),
    .rst_ni              (rst_ni & pwm0_enable_pwm[HEARTBEAT]),
    .threshold_counter_1 (pwm0_threshold_counter_1_q),
    .threshold_counter_2 (pwm0_threshold_counter_2_q),
    .period_counter      (pwm0_period_counter_q),
    .increment_step      (pwm0_step_q),
    // exported counter value is used as a threshold for standart mode pwm
    .counter             (pwm0_threshold_counter_heartbeat_o)
  );

  pwm_standard_mode #(
    .Resolution          (Resolution),
    .StepResolution      (StepResolution)
  ) standard_mode_pwm1 (  
    .clk_i               (clk_i),
    .rst_ni              (rst_ni & (pwm1_enable_pwm[STANDARD] | pwm1_enable_pwm[HEARTBEAT])),
    .threshold_counter   (pwm1_threshold_counter_standard_mux),
    .period_counter      (pwm1_period_counter_q),
    .step                (12'b1),
    .pwm_signal          (pwm1_output_wire_standard_mux)
  );
  
  
  pwm_heartbeat_mode #(
    .Resolution          (Resolution),
    .StepResolution      (StepResolution)
  ) heartbeat_mode_pwm1 (
    .clk_i               (clk_i),
    .rst_ni              (rst_ni & pwm1_enable_pwm[HEARTBEAT]),
    .threshold_counter_1 (pwm1_threshold_counter_1_q),
    .threshold_counter_2 (pwm1_threshold_counter_2_q),
    .period_counter      (pwm1_period_counter_q),
    .increment_step      (pwm1_step_q),
    // exported counter value is used as a threshold for standart mode pwm
    .counter             (pwm1_threshold_counter_heartbeat_o)
  );

  
  // one-hot encoding enable pwm
  always_ff @(posedge clk_i) begin
    if (rst_ni == 0) begin
      pwm0_o_q     <= 0;
      pwm0_enable_pwm      <= 4'b0000;
    end else begin
      case (pwm0_state_select_q)
        IDLE: begin    // Idle mode
          // all sub hardware belonging to the other three modes are disabled at the idle mode
          pwm0_o_q <= 0;
          pwm0_enable_pwm  <= 4'b0000;
        end
        STANDARD: begin   // Standard mode
          pwm0_o_q <= pwm0_output_wire_standard;
          pwm0_enable_pwm  <= 4'b0010;
        end
        HEARTBEAT: begin  // Heartbeat mode
          pwm0_o_q <= pwm0_output_wire_heartbeat;
          pwm0_enable_pwm  <= 4'b0100;
        end
        default: begin // Idle mode
          // all hardware belonging to the other three modes are disabled at the idle mode
          pwm0_o_q <= 0;
          pwm0_enable_pwm  <= 4'b0000;
        end
      endcase
    end
  end    
  
    // one-hot encoding enable pwm
  always_ff @(posedge clk_i) begin
    if (rst_ni == 0) begin
      pwm1_o_q     <= 0;
      pwm1_enable_pwm      <= 4'b0000;
    end else begin
      case (pwm1_state_select_q)
        IDLE: begin    // Idle mode
          // all sub hardware belonging to the other three modes are disabled at the idle mode
          pwm1_o_q <= 0;
          pwm1_enable_pwm  <= 4'b0000;
        end
        STANDARD: begin   // Standard mode
          pwm1_o_q <= pwm1_output_wire_standard;
          pwm1_enable_pwm  <= 4'b0010;
        end
        HEARTBEAT: begin  // Heartbeat mode
          pwm1_o_q <= pwm1_output_wire_heartbeat;
          pwm1_enable_pwm  <= 4'b0100;
        end
        default: begin // Idle mode
          // all hardware belonging to the other three modes are disabled at the idle mode
          pwm1_o_q <= 0;
          pwm1_enable_pwm  <= 4'b0000;
        end
      endcase
    end
  end  
  
endmodule