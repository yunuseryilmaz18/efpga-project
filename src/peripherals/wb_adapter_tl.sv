`timescale 1ns / 1ps

import picorv32_pkg::*;
import tluh_32_pkg::*;
module wb_adapter_tl(
    input  wb_h2d_t wb_i,
    output wb_d2h_t wb_o,
    output tl_h2d_t tl_i,
    input  tl_d2h_t tl_o
);
 
assign tl_i.a_user    = 0;
assign tl_i.a_param   = 0;
assign tl_i.a_source  = 0;
assign tl_i.a_size    = 4'h2;
assign tl_i.a_mask    = 4'hf;
assign tl_i.a_opcode  = (wb_i.a_we) ? PutFullData : Get;
assign tl_i.a_address = wb_i.a_adr;
assign tl_i.a_data    = wb_i.a_dat;
assign tl_i.a_valid   = wb_i.a_stb && wb_i.a_cyc; 
assign tl_i.d_ready   = 1'b1;

assign wb_o.d_dat = tl_o.d_data;
assign wb_o.d_ack = tl_o.d_valid;    

endmodule
