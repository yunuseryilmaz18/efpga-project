// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
// File is modified later.


//////////////////////////////////

package tluh_32_pkg;

  // this can be either PPC or BINTREE
  // there is no functional difference, but timing and area behavior is different
  // between the two instances. PPC can result in smaller implementations when timing
  // is not critical, whereas BINTREE is favorable when timing pressure is high (but this
  // may also result in a larger implementation). on FPGA targets, BINTREE is favorable
  // both in terms of area and timing.
parameter ArbiterImpl = "BINTREE";

localparam int TL_AW=32;
localparam int TL_DW=32;    // = TL_DBW * 8; TL_DBW must be a power-of-two
localparam int TL_AIW=4;    // a_source, d_source
localparam int TL_DIW=1;    // d_sink
localparam int TL_DUW=16;   // d_user
localparam int TL_DBW=(TL_DW>>3);
localparam int TL_SZW=4;

 /// TL-UH OPCODES /// 
  typedef enum logic [2:0] {
    PutFullData    = 3'h 0,
    PutPartialData = 3'h 1,
    Get            = 3'h 4
  } tl_a_op_e;    
	
	  typedef enum logic [2:0] {
    AccessAck     = 3'h 0,
    AccessAckData = 3'h 1
  } tl_d_op_e;
  typedef struct packed {
    logic [6:0] rsvd1; // Reserved for future use
    logic       parity_en;
    logic [7:0] parity; // Use only lower TL_DBW bit
  } tl_a_user_t;


  typedef struct packed {
    logic                         a_valid  ;
    tl_a_op_e     a_opcode ;
    logic        [2:0]            a_param  ;
    logic [TL_SZW-1:0]            a_size   ;
    logic [TL_AIW-1:0]            a_source ;
    logic  [TL_AW-1:0]            a_address;
    logic [TL_DBW-1:0]            a_mask   ;
    logic  [TL_DW-1:0]            a_data   ;
    tl_a_user_t   a_user   ;
    logic                         d_ready  ;
  } tl_h2d_t;

  typedef struct packed {
    logic                       d_valid ;
    tl_d_op_e   d_opcode;
    logic        [2:0]          d_param ;
    logic [TL_SZW-1:0]          d_size  ;
    logic [TL_AIW-1:0]          d_source;
    logic [TL_DIW-1:0]          d_sink  ;
    logic  [TL_DW-1:0]          d_data  ;
    logic [TL_DUW-1:0]          d_user  ;
    logic                       d_error ;
    logic                       a_ready ;
  } tl_d2h_t;

endpackage
