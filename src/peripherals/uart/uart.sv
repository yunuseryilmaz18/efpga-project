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
module uart #(parameter integer DEFAULT_DIV = 1) (
	input clk,
	input resetn,

	output ser_tx,
	input  ser_rx,

    input  wb_h2d_t wb_uart_i,
    output wb_d2h_t wb_uart_o
);

	reg   [3:0] reg_div_we;
	reg  [31:0] reg_div_di;
	wire [31:0] reg_div_do;

	reg         reg_dat_we;
	reg         reg_dat_re;
	reg  [31:0] reg_dat_di;
	wire [31:0] reg_dat_do;
	wire        reg_dat_wait;

    wire write_en;
    wire read_en;
    
    
	reg [31:0] cfg_divider;

	reg [3:0] recv_state;
	reg [31:0] recv_divcnt;
	reg [7:0] recv_pattern;
	reg [7:0] recv_buf_data;
	reg recv_buf_valid;

	reg [9:0] send_pattern;
	reg [3:0] send_bitcnt;
	reg [31:0] send_divcnt;
	reg send_dummy;
    
    assign write_en = wb_uart_i.a_stb & wb_uart_i.a_cyc & wb_uart_i.a_we;
    assign read_en = wb_uart_i.a_stb & wb_uart_i.a_cyc & !wb_uart_i.a_we;

    assign reg_dat_re = read_en;

    always @(posedge clk) begin
        if (!resetn) begin
            reg_dat_we <= 0;
            reg_dat_di <= 0;
            reg_div_we <= 0;
            reg_div_di <= 0;       
        end else if (write_en && wb_uart_i.a_adr[3:0] == 4'h0) begin
            reg_dat_we <= wb_uart_i.a_sel[0];
            reg_dat_di <= wb_uart_i.a_dat;
        end else if (write_en && wb_uart_i.a_adr[3:0] == 4'h4) begin
            reg_div_we <= wb_uart_i.a_sel;
            reg_div_di <= wb_uart_i.a_dat;
        end else begin
            reg_dat_we <= 0;
            reg_dat_di <= 0;
            reg_div_we <= 0;
            reg_div_di <= 0;
        end
    end 

    always @(posedge clk) begin
        if (!resetn) begin
            wb_uart_o.d_dat <= 0; 
        end else if (read_en) begin
            case(wb_uart_i.a_adr[3:0])
                4'h0 : wb_uart_o.d_dat <= reg_dat_do; 
                4'h4 : wb_uart_o.d_dat <= reg_div_do;
                default : wb_uart_o.d_dat <= 0;
            endcase 
        end
    end 
    reg ack_flag_re;
    reg ack_flag_we;
    always @(posedge clk) begin
        if (!resetn) begin
            wb_uart_o.d_ack <= 0; 
        end else begin
            ack_flag_we <= write_en;
            ack_flag_re <= read_en; 
            wb_uart_o.d_ack <= (ack_flag_we && !reg_dat_wait) || (ack_flag_re && recv_buf_valid); 
        end
    end  


	assign reg_div_do = cfg_divider;

	assign reg_dat_wait = reg_dat_we && (send_bitcnt || send_dummy);
	assign reg_dat_do = recv_buf_valid ? recv_buf_data : ~0;

	always @(posedge clk) begin
		if (!resetn) begin
			cfg_divider <= DEFAULT_DIV;
		end else begin
			if (reg_div_we[0]) cfg_divider[ 7: 0] <= reg_div_di[ 7: 0];
			if (reg_div_we[1]) cfg_divider[15: 8] <= reg_div_di[15: 8];
			if (reg_div_we[2]) cfg_divider[23:16] <= reg_div_di[23:16];
			if (reg_div_we[3]) cfg_divider[31:24] <= reg_div_di[31:24];
		end
	end

	always @(posedge clk) begin
		if (!resetn) begin
			recv_state <= 0;
			recv_divcnt <= 0;
			recv_pattern <= 0;
			recv_buf_data <= 0;
			recv_buf_valid <= 0;
		end else begin
			recv_divcnt <= recv_divcnt + 1;
			if (reg_dat_re)
				recv_buf_valid <= 0;
			case (recv_state)
				0: begin
					if (!ser_rx)
						recv_state <= 1;
					recv_divcnt <= 0;
				end
				1: begin
					if (2*recv_divcnt > cfg_divider) begin
						recv_state <= 2;
						recv_divcnt <= 0;
					end
				end
				10: begin
					if (recv_divcnt > cfg_divider) begin
						recv_buf_data <= recv_pattern;
						recv_buf_valid <= 1;
						recv_state <= 0;
					end
				end
				default: begin
					if (recv_divcnt > cfg_divider) begin
						recv_pattern <= {ser_rx, recv_pattern[7:1]};
						recv_state <= recv_state + 1;
						recv_divcnt <= 0;
					end
				end
			endcase
		end
	end

	assign ser_tx = send_pattern[0];

	always @(posedge clk) begin
		if (reg_div_we)
			send_dummy <= 1;
		    send_divcnt <= send_divcnt + 1;
		if (!resetn) begin
			send_pattern <= ~0;
			send_bitcnt <= 0;
			send_divcnt <= 0;
			send_dummy <= 1;
		end else begin
			if (send_dummy && !send_bitcnt) begin
				send_pattern <= ~0;
				send_bitcnt <= 15;
				send_divcnt <= 0;
				send_dummy <= 0;
			end else
			if (reg_dat_we && !send_bitcnt) begin
				send_pattern <= {1'b1, reg_dat_di[7:0], 1'b0};
				send_bitcnt <= 10;
				send_divcnt <= 0;
			end else
			if (send_divcnt > cfg_divider && send_bitcnt) begin
				send_pattern <= {1'b1, send_pattern[9:1]};
				send_bitcnt <= send_bitcnt - 1;
				send_divcnt <= 0;
			end
		end
	end
endmodule
