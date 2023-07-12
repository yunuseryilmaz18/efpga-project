//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: FPGA Verilog Testbench for Formal Top-level netlist of Design: lpffir_core
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Mon Jul 10 14:22:37 2023
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

//----- Default net type -----
`default_nettype none

module lpffir_core_top_formal_verification_random_tb;
// ----- Default clock port is added here since benchmark does not contain one -------
	reg [0:0] clk_i;

// ----- Shared inputs -------
	reg [0:0] rstn_i;
	reg [0:0] en_i;
	reg [0:0] x_i_0_;
	reg [0:0] x_i_1_;
	reg [0:0] x_i_2_;
	reg [0:0] x_i_3_;
	reg [0:0] x_i_4_;
	reg [0:0] x_i_5_;
	reg [0:0] x_i_6_;
	reg [0:0] x_i_7_;
	reg [0:0] x_i_8_;
	reg [0:0] x_i_9_;
	reg [0:0] x_i_10_;
	reg [0:0] x_i_11_;
	reg [0:0] x_i_12_;
	reg [0:0] x_i_13_;
	reg [0:0] x_i_14_;
	reg [0:0] x_i_15_;

// ----- FPGA fabric outputs -------
	wire [0:0] y_o_0__gfpga;
	wire [0:0] y_o_1__gfpga;
	wire [0:0] y_o_2__gfpga;
	wire [0:0] y_o_3__gfpga;
	wire [0:0] y_o_4__gfpga;
	wire [0:0] y_o_5__gfpga;
	wire [0:0] y_o_6__gfpga;
	wire [0:0] y_o_7__gfpga;
	wire [0:0] y_o_8__gfpga;
	wire [0:0] y_o_9__gfpga;
	wire [0:0] y_o_10__gfpga;
	wire [0:0] y_o_11__gfpga;
	wire [0:0] y_o_12__gfpga;
	wire [0:0] y_o_13__gfpga;
	wire [0:0] y_o_14__gfpga;
	wire [0:0] y_o_15__gfpga;

// ----- Benchmark outputs -------
	wire [0:0] y_o_0__bench;
	wire [0:0] y_o_1__bench;
	wire [0:0] y_o_2__bench;
	wire [0:0] y_o_3__bench;
	wire [0:0] y_o_4__bench;
	wire [0:0] y_o_5__bench;
	wire [0:0] y_o_6__bench;
	wire [0:0] y_o_7__bench;
	wire [0:0] y_o_8__bench;
	wire [0:0] y_o_9__bench;
	wire [0:0] y_o_10__bench;
	wire [0:0] y_o_11__bench;
	wire [0:0] y_o_12__bench;
	wire [0:0] y_o_13__bench;
	wire [0:0] y_o_14__bench;
	wire [0:0] y_o_15__bench;

// ----- Output vectors checking flags -------
	reg [0:0] y_o_0__flag;
	reg [0:0] y_o_1__flag;
	reg [0:0] y_o_2__flag;
	reg [0:0] y_o_3__flag;
	reg [0:0] y_o_4__flag;
	reg [0:0] y_o_5__flag;
	reg [0:0] y_o_6__flag;
	reg [0:0] y_o_7__flag;
	reg [0:0] y_o_8__flag;
	reg [0:0] y_o_9__flag;
	reg [0:0] y_o_10__flag;
	reg [0:0] y_o_11__flag;
	reg [0:0] y_o_12__flag;
	reg [0:0] y_o_13__flag;
	reg [0:0] y_o_14__flag;
	reg [0:0] y_o_15__flag;

// ----- Error counter -------
	integer nb_error= 0;

// ----- FPGA fabric instanciation -------
	lpffir_core_top_formal_verification FPGA_DUT(
		.clk_i(clk_i),
		.rstn_i(rstn_i),
		.en_i(en_i),
		.x_i_0_(x_i_0_),
		.x_i_1_(x_i_1_),
		.x_i_2_(x_i_2_),
		.x_i_3_(x_i_3_),
		.x_i_4_(x_i_4_),
		.x_i_5_(x_i_5_),
		.x_i_6_(x_i_6_),
		.x_i_7_(x_i_7_),
		.x_i_8_(x_i_8_),
		.x_i_9_(x_i_9_),
		.x_i_10_(x_i_10_),
		.x_i_11_(x_i_11_),
		.x_i_12_(x_i_12_),
		.x_i_13_(x_i_13_),
		.x_i_14_(x_i_14_),
		.x_i_15_(x_i_15_),
		.y_o_0_(y_o_0__gfpga),
		.y_o_1_(y_o_1__gfpga),
		.y_o_2_(y_o_2__gfpga),
		.y_o_3_(y_o_3__gfpga),
		.y_o_4_(y_o_4__gfpga),
		.y_o_5_(y_o_5__gfpga),
		.y_o_6_(y_o_6__gfpga),
		.y_o_7_(y_o_7__gfpga),
		.y_o_8_(y_o_8__gfpga),
		.y_o_9_(y_o_9__gfpga),
		.y_o_10_(y_o_10__gfpga),
		.y_o_11_(y_o_11__gfpga),
		.y_o_12_(y_o_12__gfpga),
		.y_o_13_(y_o_13__gfpga),
		.y_o_14_(y_o_14__gfpga),
		.y_o_15_(y_o_15__gfpga)
	);
// ----- End FPGA Fabric Instanication -------

// ----- Reference Benchmark Instanication -------
	lpffir_core REF_DUT(
		.clk_i(clk_i),
		.rstn_i(rstn_i),
		.en_i(en_i),
		.x_i_0_(x_i_0_),
		.x_i_1_(x_i_1_),
		.x_i_2_(x_i_2_),
		.x_i_3_(x_i_3_),
		.x_i_4_(x_i_4_),
		.x_i_5_(x_i_5_),
		.x_i_6_(x_i_6_),
		.x_i_7_(x_i_7_),
		.x_i_8_(x_i_8_),
		.x_i_9_(x_i_9_),
		.x_i_10_(x_i_10_),
		.x_i_11_(x_i_11_),
		.x_i_12_(x_i_12_),
		.x_i_13_(x_i_13_),
		.x_i_14_(x_i_14_),
		.x_i_15_(x_i_15_),
		.y_o_0_(y_o_0__bench),
		.y_o_1_(y_o_1__bench),
		.y_o_2_(y_o_2__bench),
		.y_o_3_(y_o_3__bench),
		.y_o_4_(y_o_4__bench),
		.y_o_5_(y_o_5__bench),
		.y_o_6_(y_o_6__bench),
		.y_o_7_(y_o_7__bench),
		.y_o_8_(y_o_8__bench),
		.y_o_9_(y_o_9__bench),
		.y_o_10_(y_o_10__bench),
		.y_o_11_(y_o_11__bench),
		.y_o_12_(y_o_12__bench),
		.y_o_13_(y_o_13__bench),
		.y_o_14_(y_o_14__bench),
		.y_o_15_(y_o_15__bench)
	);
// ----- End reference Benchmark Instanication -------

// ----- Clock 'clk_i' Initialization -------
	initial begin
		clk_i[0] <= 1'b0;
		while(1) begin
			#1
			clk_i[0] <= !clk_i[0];
		end
	end

// ----- Begin reset signal generation -----
// ----- End reset signal generation -----

// ----- Input Initialization -------
	initial begin
		rstn_i <= 1'b0;
		en_i <= 1'b0;
		x_i_0_ <= 1'b0;
		x_i_1_ <= 1'b0;
		x_i_2_ <= 1'b0;
		x_i_3_ <= 1'b0;
		x_i_4_ <= 1'b0;
		x_i_5_ <= 1'b0;
		x_i_6_ <= 1'b0;
		x_i_7_ <= 1'b0;
		x_i_8_ <= 1'b0;
		x_i_9_ <= 1'b0;
		x_i_10_ <= 1'b0;
		x_i_11_ <= 1'b0;
		x_i_12_ <= 1'b0;
		x_i_13_ <= 1'b0;
		x_i_14_ <= 1'b0;
		x_i_15_ <= 1'b0;

		y_o_0__flag[0] <= 1'b0;
		y_o_1__flag[0] <= 1'b0;
		y_o_2__flag[0] <= 1'b0;
		y_o_3__flag[0] <= 1'b0;
		y_o_4__flag[0] <= 1'b0;
		y_o_5__flag[0] <= 1'b0;
		y_o_6__flag[0] <= 1'b0;
		y_o_7__flag[0] <= 1'b0;
		y_o_8__flag[0] <= 1'b0;
		y_o_9__flag[0] <= 1'b0;
		y_o_10__flag[0] <= 1'b0;
		y_o_11__flag[0] <= 1'b0;
		y_o_12__flag[0] <= 1'b0;
		y_o_13__flag[0] <= 1'b0;
		y_o_14__flag[0] <= 1'b0;
		y_o_15__flag[0] <= 1'b0;
	end

// ----- Input Stimulus -------
	always@(negedge clk_i[0]) begin
		rstn_i <= $random;
		en_i <= $random;
		x_i_0_ <= $random;
		x_i_1_ <= $random;
		x_i_2_ <= $random;
		x_i_3_ <= $random;
		x_i_4_ <= $random;
		x_i_5_ <= $random;
		x_i_6_ <= $random;
		x_i_7_ <= $random;
		x_i_8_ <= $random;
		x_i_9_ <= $random;
		x_i_10_ <= $random;
		x_i_11_ <= $random;
		x_i_12_ <= $random;
		x_i_13_ <= $random;
		x_i_14_ <= $random;
		x_i_15_ <= $random;
	end

// ----- Begin checking output vectors -------
// ----- Skip the first falling edge of clock, it is for initialization -------
	reg [0:0] sim_start;

	always@(negedge clk_i[0]) begin
		if (1'b1 == sim_start[0]) begin
			sim_start[0] <= ~sim_start[0];
		end else 
begin
			if(!(y_o_0__gfpga === y_o_0__bench) && !(y_o_0__bench === 1'bx)) begin
				y_o_0__flag <= 1'b1;
			end else begin
				y_o_0__flag<= 1'b0;
			end
			if(!(y_o_1__gfpga === y_o_1__bench) && !(y_o_1__bench === 1'bx)) begin
				y_o_1__flag <= 1'b1;
			end else begin
				y_o_1__flag<= 1'b0;
			end
			if(!(y_o_2__gfpga === y_o_2__bench) && !(y_o_2__bench === 1'bx)) begin
				y_o_2__flag <= 1'b1;
			end else begin
				y_o_2__flag<= 1'b0;
			end
			if(!(y_o_3__gfpga === y_o_3__bench) && !(y_o_3__bench === 1'bx)) begin
				y_o_3__flag <= 1'b1;
			end else begin
				y_o_3__flag<= 1'b0;
			end
			if(!(y_o_4__gfpga === y_o_4__bench) && !(y_o_4__bench === 1'bx)) begin
				y_o_4__flag <= 1'b1;
			end else begin
				y_o_4__flag<= 1'b0;
			end
			if(!(y_o_5__gfpga === y_o_5__bench) && !(y_o_5__bench === 1'bx)) begin
				y_o_5__flag <= 1'b1;
			end else begin
				y_o_5__flag<= 1'b0;
			end
			if(!(y_o_6__gfpga === y_o_6__bench) && !(y_o_6__bench === 1'bx)) begin
				y_o_6__flag <= 1'b1;
			end else begin
				y_o_6__flag<= 1'b0;
			end
			if(!(y_o_7__gfpga === y_o_7__bench) && !(y_o_7__bench === 1'bx)) begin
				y_o_7__flag <= 1'b1;
			end else begin
				y_o_7__flag<= 1'b0;
			end
			if(!(y_o_8__gfpga === y_o_8__bench) && !(y_o_8__bench === 1'bx)) begin
				y_o_8__flag <= 1'b1;
			end else begin
				y_o_8__flag<= 1'b0;
			end
			if(!(y_o_9__gfpga === y_o_9__bench) && !(y_o_9__bench === 1'bx)) begin
				y_o_9__flag <= 1'b1;
			end else begin
				y_o_9__flag<= 1'b0;
			end
			if(!(y_o_10__gfpga === y_o_10__bench) && !(y_o_10__bench === 1'bx)) begin
				y_o_10__flag <= 1'b1;
			end else begin
				y_o_10__flag<= 1'b0;
			end
			if(!(y_o_11__gfpga === y_o_11__bench) && !(y_o_11__bench === 1'bx)) begin
				y_o_11__flag <= 1'b1;
			end else begin
				y_o_11__flag<= 1'b0;
			end
			if(!(y_o_12__gfpga === y_o_12__bench) && !(y_o_12__bench === 1'bx)) begin
				y_o_12__flag <= 1'b1;
			end else begin
				y_o_12__flag<= 1'b0;
			end
			if(!(y_o_13__gfpga === y_o_13__bench) && !(y_o_13__bench === 1'bx)) begin
				y_o_13__flag <= 1'b1;
			end else begin
				y_o_13__flag<= 1'b0;
			end
			if(!(y_o_14__gfpga === y_o_14__bench) && !(y_o_14__bench === 1'bx)) begin
				y_o_14__flag <= 1'b1;
			end else begin
				y_o_14__flag<= 1'b0;
			end
			if(!(y_o_15__gfpga === y_o_15__bench) && !(y_o_15__bench === 1'bx)) begin
				y_o_15__flag <= 1'b1;
			end else begin
				y_o_15__flag<= 1'b0;
			end
		end
	end

	always@(posedge y_o_0__flag) begin
		if(y_o_0__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on y_o_0__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge y_o_1__flag) begin
		if(y_o_1__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on y_o_1__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge y_o_2__flag) begin
		if(y_o_2__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on y_o_2__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge y_o_3__flag) begin
		if(y_o_3__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on y_o_3__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge y_o_4__flag) begin
		if(y_o_4__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on y_o_4__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge y_o_5__flag) begin
		if(y_o_5__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on y_o_5__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge y_o_6__flag) begin
		if(y_o_6__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on y_o_6__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge y_o_7__flag) begin
		if(y_o_7__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on y_o_7__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge y_o_8__flag) begin
		if(y_o_8__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on y_o_8__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge y_o_9__flag) begin
		if(y_o_9__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on y_o_9__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge y_o_10__flag) begin
		if(y_o_10__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on y_o_10__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge y_o_11__flag) begin
		if(y_o_11__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on y_o_11__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge y_o_12__flag) begin
		if(y_o_12__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on y_o_12__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge y_o_13__flag) begin
		if(y_o_13__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on y_o_13__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge y_o_14__flag) begin
		if(y_o_14__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on y_o_14__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge y_o_15__flag) begin
		if(y_o_15__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on y_o_15__gfpga at time = %t", $realtime);
		end
	end


// ----- Begin output waveform to VCD file-------
	initial begin
		$dumpfile("lpffir_core_formal.vcd");
		$dumpvars(1, lpffir_core_top_formal_verification_random_tb);
	end
// ----- END output waveform to VCD file -------

initial begin
	sim_start[0] <= 1'b1;
	$timeformat(-9, 2, "ns", 20);
	$display("Simulation start");
// ----- Can be changed by the user for his/her need -------
	#20
	if(nb_error == 0) begin
		$display("Simulation Succeed");
	end else begin
		$display("Simulation Failed with %d error(s)", nb_error);
	end
	$finish;
end

endmodule
// ----- END Verilog module for lpffir_core_top_formal_verification_random_tb -----

//----- Default net type -----
`default_nettype none

