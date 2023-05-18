`timescale 1ns / 1ps

module fpga_config
(
	input wire [0:0]	clk			,
	input wire	[0:0]	rst			,
	output	reg	[0:0] fpga_rst		,
	output	reg	[0:0]	prog_rst		,
	output	reg	[0:0]	prog			,
//	output			[0:0]	prog			,
	output	reg	[0:0]	config_done	
);

localparam BITSTREAM_LENGTH = 14'd7286;

reg	[0:0] fpga_rst_next		;
reg	[0:0] prog_rst_next		;
reg 	[0:0]	config_done_next	;

reg	[$clog2(BITSTREAM_LENGTH):0]	addr_cnt			;
reg	[$clog2(BITSTREAM_LENGTH):0]	addr_cnt_next	;

reg	[1:0] state			;
reg 	[1:0] state_next	;
localparam 	SETTLE_PHASE			= 2'b00,
				CONFIGURATION_PHASE	= 2'b01,
				OPERATING_PHASE		= 2'b10;

localparam SETTLE_TIME = 4'hF	;
reg	[3:0] settle_cnt			;
reg	[3:0] settle_cnt_next	;

wire prog_next;

bitstream
#(
	.BITSTREAM_LENGTH(BITSTREAM_LENGTH)
)
BITSTREAM 
(
	.addrRd(addr_cnt	),
	.dataRd(prog_next	)
//	.dataRd(prog		)
);

reg rst_d;
wire rst_posedge;

always @(posedge clk) begin
	rst_d <= rst;
end
assign rst_posedge = ~rst_d & rst;

always @(posedge clk) begin
	state 		<=	state_next			;
	settle_cnt	<=	settle_cnt_next	;
	prog_rst		<=	prog_rst_next		;
	fpga_rst		<= fpga_rst_next		;
	config_done	<= config_done_next	;
	prog			<=	prog_next			;
	addr_cnt		<= addr_cnt_next		;
end

always @(*) begin
	state_next			=	state			;
	settle_cnt_next	=	settle_cnt	;
	prog_rst_next		=	prog_rst		;
	fpga_rst_next		=	fpga_rst		;
	config_done_next	=	config_done	;
	addr_cnt_next		=	addr_cnt		;
	
	if(rst_posedge) begin
		state_next			= SETTLE_PHASE	;
		settle_cnt_next	= 4'b0			;
		prog_rst_next 		= 1'b1			;
		fpga_rst_next		= 1'b1			;
		config_done_next	= 1'b0			;
		addr_cnt_next		= 0				;
	end
	else begin
		case(state)
			SETTLE_PHASE: begin
				config_done_next = 1'b0;
				if(SETTLE_TIME == settle_cnt) begin
					state_next = CONFIGURATION_PHASE;
				end
				else begin
					settle_cnt_next = settle_cnt + 1'b1;
				end
			end
			CONFIGURATION_PHASE: begin
				prog_rst_next = 1'b0;
				if(BITSTREAM_LENGTH == addr_cnt) begin
					state_next 		= OPERATING_PHASE	;
					fpga_rst_next 	= 1'b0				;
				end
				else begin
					addr_cnt_next = addr_cnt + 1'b1;
				end
			end
			OPERATING_PHASE: begin
				config_done_next 	= 1'b1				;
				state_next 			= OPERATING_PHASE	;	
			end
			default: begin
				state_next = state;
			end
		endcase
	end

end

endmodule
