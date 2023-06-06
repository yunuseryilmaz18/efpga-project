/*
 *  PicoSoC - A simple example SoC using PicoRV32
 *
 *  Copyright (C) 2017  Claire Xenia Wolf <claire@yosyshq.com>
 *
 *  Permission to use, copy, modify, and/or distribute this software for any
 *  purpose with or without fee is hereby granted, provided that the above
 *  copyright notice and this permission notice appear in all copies.
 *
 *  THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 *  WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 *  MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 *  ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 *  WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 *  ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 *  OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 * 
 */
import picorv32_pkg::*;
module timer (
	input clk_i,
	input rst_ni,

    input  wb_h2d_t wb_timer_i,
    output wb_d2h_t wb_timer_o
);

wire read_en;
assign read_en = wb_timer_i.a_stb & wb_timer_i.a_cyc & !wb_timer_i.a_we;

reg [63:0] timer;
always @(posedge clk_i) begin
  if (!rst_ni) begin
    timer <= 64'h0;
  end else begin
    timer <= timer + 64'h1;
  end
end 

always @(posedge clk_i) begin
    if (!rst_ni) begin
        wb_timer_o.d_dat <= 0;
        wb_timer_o.d_ack <= 0;    
    end else if (read_en && wb_timer_i.a_adr[3:0] == 4'h0) begin
        wb_timer_o.d_dat <= timer[31:0];
        wb_timer_o.d_ack <= 1'b1;
    end else if (read_en && wb_timer_i.a_adr[3:0] == 4'h4) begin
        wb_timer_o.d_dat <= timer[63:32];
        wb_timer_o.d_ack <= 1'b1;
    end else  begin
        wb_timer_o.d_dat <= 0;
        wb_timer_o.d_ack <= 0;
    end
end


endmodule
