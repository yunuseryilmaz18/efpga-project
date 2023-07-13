//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: FPGA Verilog Testbench for Formal Top-level netlist of Design: crc
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Thu Jul 13 15:42:57 2023
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

//----- Default net type -----
`default_nettype none

module crc_top_formal_verification_random_tb;
// ----- Default clock port is added here since benchmark does not contain one -------
	reg [0:0] clk;

// ----- Shared inputs -------
	reg [0:0] crcIn_0_;
	reg [0:0] crcIn_1_;
	reg [0:0] crcIn_2_;
	reg [0:0] crcIn_3_;
	reg [0:0] crcIn_4_;
	reg [0:0] crcIn_5_;
	reg [0:0] crcIn_6_;
	reg [0:0] crcIn_7_;
	reg [0:0] crcIn_8_;
	reg [0:0] crcIn_9_;
	reg [0:0] crcIn_10_;
	reg [0:0] crcIn_11_;
	reg [0:0] crcIn_12_;
	reg [0:0] crcIn_13_;
	reg [0:0] crcIn_14_;
	reg [0:0] crcIn_15_;
	reg [0:0] crcIn_16_;
	reg [0:0] crcIn_17_;
	reg [0:0] crcIn_18_;
	reg [0:0] crcIn_19_;
	reg [0:0] crcIn_20_;
	reg [0:0] crcIn_21_;
	reg [0:0] crcIn_22_;
	reg [0:0] crcIn_23_;
	reg [0:0] crcIn_24_;
	reg [0:0] crcIn_25_;
	reg [0:0] crcIn_26_;
	reg [0:0] crcIn_27_;
	reg [0:0] crcIn_28_;
	reg [0:0] crcIn_29_;
	reg [0:0] crcIn_30_;
	reg [0:0] crcIn_31_;
	reg [0:0] data_0_;
	reg [0:0] data_1_;
	reg [0:0] data_2_;
	reg [0:0] data_3_;
	reg [0:0] data_4_;
	reg [0:0] data_5_;
	reg [0:0] data_6_;
	reg [0:0] data_7_;

// ----- FPGA fabric outputs -------
	wire [0:0] crc_0__gfpga;
	wire [0:0] crc_1__gfpga;
	wire [0:0] crc_2__gfpga;
	wire [0:0] crc_3__gfpga;
	wire [0:0] crc_4__gfpga;
	wire [0:0] crc_5__gfpga;
	wire [0:0] crc_6__gfpga;
	wire [0:0] crc_7__gfpga;
	wire [0:0] crc_8__gfpga;
	wire [0:0] crc_9__gfpga;
	wire [0:0] crc_10__gfpga;
	wire [0:0] crc_11__gfpga;
	wire [0:0] crc_12__gfpga;
	wire [0:0] crc_13__gfpga;
	wire [0:0] crc_14__gfpga;
	wire [0:0] crc_15__gfpga;
	wire [0:0] crc_16__gfpga;
	wire [0:0] crc_17__gfpga;
	wire [0:0] crc_18__gfpga;
	wire [0:0] crc_19__gfpga;
	wire [0:0] crc_20__gfpga;
	wire [0:0] crc_21__gfpga;
	wire [0:0] crc_22__gfpga;
	wire [0:0] crc_23__gfpga;
	wire [0:0] crc_24__gfpga;
	wire [0:0] crc_25__gfpga;
	wire [0:0] crc_26__gfpga;
	wire [0:0] crc_27__gfpga;
	wire [0:0] crc_28__gfpga;
	wire [0:0] crc_29__gfpga;
	wire [0:0] crc_30__gfpga;
	wire [0:0] crc_31__gfpga;

// ----- Benchmark outputs -------
	wire [0:0] crc_0__bench;
	wire [0:0] crc_1__bench;
	wire [0:0] crc_2__bench;
	wire [0:0] crc_3__bench;
	wire [0:0] crc_4__bench;
	wire [0:0] crc_5__bench;
	wire [0:0] crc_6__bench;
	wire [0:0] crc_7__bench;
	wire [0:0] crc_8__bench;
	wire [0:0] crc_9__bench;
	wire [0:0] crc_10__bench;
	wire [0:0] crc_11__bench;
	wire [0:0] crc_12__bench;
	wire [0:0] crc_13__bench;
	wire [0:0] crc_14__bench;
	wire [0:0] crc_15__bench;
	wire [0:0] crc_16__bench;
	wire [0:0] crc_17__bench;
	wire [0:0] crc_18__bench;
	wire [0:0] crc_19__bench;
	wire [0:0] crc_20__bench;
	wire [0:0] crc_21__bench;
	wire [0:0] crc_22__bench;
	wire [0:0] crc_23__bench;
	wire [0:0] crc_24__bench;
	wire [0:0] crc_25__bench;
	wire [0:0] crc_26__bench;
	wire [0:0] crc_27__bench;
	wire [0:0] crc_28__bench;
	wire [0:0] crc_29__bench;
	wire [0:0] crc_30__bench;
	wire [0:0] crc_31__bench;

// ----- Output vectors checking flags -------
	reg [0:0] crc_0__flag;
	reg [0:0] crc_1__flag;
	reg [0:0] crc_2__flag;
	reg [0:0] crc_3__flag;
	reg [0:0] crc_4__flag;
	reg [0:0] crc_5__flag;
	reg [0:0] crc_6__flag;
	reg [0:0] crc_7__flag;
	reg [0:0] crc_8__flag;
	reg [0:0] crc_9__flag;
	reg [0:0] crc_10__flag;
	reg [0:0] crc_11__flag;
	reg [0:0] crc_12__flag;
	reg [0:0] crc_13__flag;
	reg [0:0] crc_14__flag;
	reg [0:0] crc_15__flag;
	reg [0:0] crc_16__flag;
	reg [0:0] crc_17__flag;
	reg [0:0] crc_18__flag;
	reg [0:0] crc_19__flag;
	reg [0:0] crc_20__flag;
	reg [0:0] crc_21__flag;
	reg [0:0] crc_22__flag;
	reg [0:0] crc_23__flag;
	reg [0:0] crc_24__flag;
	reg [0:0] crc_25__flag;
	reg [0:0] crc_26__flag;
	reg [0:0] crc_27__flag;
	reg [0:0] crc_28__flag;
	reg [0:0] crc_29__flag;
	reg [0:0] crc_30__flag;
	reg [0:0] crc_31__flag;

// ----- Error counter -------
	integer nb_error= 0;

// ----- FPGA fabric instanciation -------
	crc_top_formal_verification FPGA_DUT(
		.crcIn_0_(crcIn_0_),
		.crcIn_1_(crcIn_1_),
		.crcIn_2_(crcIn_2_),
		.crcIn_3_(crcIn_3_),
		.crcIn_4_(crcIn_4_),
		.crcIn_5_(crcIn_5_),
		.crcIn_6_(crcIn_6_),
		.crcIn_7_(crcIn_7_),
		.crcIn_8_(crcIn_8_),
		.crcIn_9_(crcIn_9_),
		.crcIn_10_(crcIn_10_),
		.crcIn_11_(crcIn_11_),
		.crcIn_12_(crcIn_12_),
		.crcIn_13_(crcIn_13_),
		.crcIn_14_(crcIn_14_),
		.crcIn_15_(crcIn_15_),
		.crcIn_16_(crcIn_16_),
		.crcIn_17_(crcIn_17_),
		.crcIn_18_(crcIn_18_),
		.crcIn_19_(crcIn_19_),
		.crcIn_20_(crcIn_20_),
		.crcIn_21_(crcIn_21_),
		.crcIn_22_(crcIn_22_),
		.crcIn_23_(crcIn_23_),
		.crcIn_24_(crcIn_24_),
		.crcIn_25_(crcIn_25_),
		.crcIn_26_(crcIn_26_),
		.crcIn_27_(crcIn_27_),
		.crcIn_28_(crcIn_28_),
		.crcIn_29_(crcIn_29_),
		.crcIn_30_(crcIn_30_),
		.crcIn_31_(crcIn_31_),
		.data_0_(data_0_),
		.data_1_(data_1_),
		.data_2_(data_2_),
		.data_3_(data_3_),
		.data_4_(data_4_),
		.data_5_(data_5_),
		.data_6_(data_6_),
		.data_7_(data_7_),
		.crc_0_(crc_0__gfpga),
		.crc_1_(crc_1__gfpga),
		.crc_2_(crc_2__gfpga),
		.crc_3_(crc_3__gfpga),
		.crc_4_(crc_4__gfpga),
		.crc_5_(crc_5__gfpga),
		.crc_6_(crc_6__gfpga),
		.crc_7_(crc_7__gfpga),
		.crc_8_(crc_8__gfpga),
		.crc_9_(crc_9__gfpga),
		.crc_10_(crc_10__gfpga),
		.crc_11_(crc_11__gfpga),
		.crc_12_(crc_12__gfpga),
		.crc_13_(crc_13__gfpga),
		.crc_14_(crc_14__gfpga),
		.crc_15_(crc_15__gfpga),
		.crc_16_(crc_16__gfpga),
		.crc_17_(crc_17__gfpga),
		.crc_18_(crc_18__gfpga),
		.crc_19_(crc_19__gfpga),
		.crc_20_(crc_20__gfpga),
		.crc_21_(crc_21__gfpga),
		.crc_22_(crc_22__gfpga),
		.crc_23_(crc_23__gfpga),
		.crc_24_(crc_24__gfpga),
		.crc_25_(crc_25__gfpga),
		.crc_26_(crc_26__gfpga),
		.crc_27_(crc_27__gfpga),
		.crc_28_(crc_28__gfpga),
		.crc_29_(crc_29__gfpga),
		.crc_30_(crc_30__gfpga),
		.crc_31_(crc_31__gfpga)
	);
// ----- End FPGA Fabric Instanication -------

// ----- Reference Benchmark Instanication -------
	crc REF_DUT(
		.crcIn_0_(crcIn_0_),
		.crcIn_1_(crcIn_1_),
		.crcIn_2_(crcIn_2_),
		.crcIn_3_(crcIn_3_),
		.crcIn_4_(crcIn_4_),
		.crcIn_5_(crcIn_5_),
		.crcIn_6_(crcIn_6_),
		.crcIn_7_(crcIn_7_),
		.crcIn_8_(crcIn_8_),
		.crcIn_9_(crcIn_9_),
		.crcIn_10_(crcIn_10_),
		.crcIn_11_(crcIn_11_),
		.crcIn_12_(crcIn_12_),
		.crcIn_13_(crcIn_13_),
		.crcIn_14_(crcIn_14_),
		.crcIn_15_(crcIn_15_),
		.crcIn_16_(crcIn_16_),
		.crcIn_17_(crcIn_17_),
		.crcIn_18_(crcIn_18_),
		.crcIn_19_(crcIn_19_),
		.crcIn_20_(crcIn_20_),
		.crcIn_21_(crcIn_21_),
		.crcIn_22_(crcIn_22_),
		.crcIn_23_(crcIn_23_),
		.crcIn_24_(crcIn_24_),
		.crcIn_25_(crcIn_25_),
		.crcIn_26_(crcIn_26_),
		.crcIn_27_(crcIn_27_),
		.crcIn_28_(crcIn_28_),
		.crcIn_29_(crcIn_29_),
		.crcIn_30_(crcIn_30_),
		.crcIn_31_(crcIn_31_),
		.data_0_(data_0_),
		.data_1_(data_1_),
		.data_2_(data_2_),
		.data_3_(data_3_),
		.data_4_(data_4_),
		.data_5_(data_5_),
		.data_6_(data_6_),
		.data_7_(data_7_),
		.crc_0_(crc_0__bench),
		.crc_1_(crc_1__bench),
		.crc_2_(crc_2__bench),
		.crc_3_(crc_3__bench),
		.crc_4_(crc_4__bench),
		.crc_5_(crc_5__bench),
		.crc_6_(crc_6__bench),
		.crc_7_(crc_7__bench),
		.crc_8_(crc_8__bench),
		.crc_9_(crc_9__bench),
		.crc_10_(crc_10__bench),
		.crc_11_(crc_11__bench),
		.crc_12_(crc_12__bench),
		.crc_13_(crc_13__bench),
		.crc_14_(crc_14__bench),
		.crc_15_(crc_15__bench),
		.crc_16_(crc_16__bench),
		.crc_17_(crc_17__bench),
		.crc_18_(crc_18__bench),
		.crc_19_(crc_19__bench),
		.crc_20_(crc_20__bench),
		.crc_21_(crc_21__bench),
		.crc_22_(crc_22__bench),
		.crc_23_(crc_23__bench),
		.crc_24_(crc_24__bench),
		.crc_25_(crc_25__bench),
		.crc_26_(crc_26__bench),
		.crc_27_(crc_27__bench),
		.crc_28_(crc_28__bench),
		.crc_29_(crc_29__bench),
		.crc_30_(crc_30__bench),
		.crc_31_(crc_31__bench)
	);
// ----- End reference Benchmark Instanication -------

// ----- Clock 'clk' Initialization -------
	initial begin
		clk[0] <= 1'b0;
		while(1) begin
			#1
			clk[0] <= !clk[0];
		end
	end

// ----- Begin reset signal generation -----
// ----- End reset signal generation -----

// ----- Input Initialization -------
	initial begin
		crcIn_0_ <= 1'b0;
		crcIn_1_ <= 1'b0;
		crcIn_2_ <= 1'b0;
		crcIn_3_ <= 1'b0;
		crcIn_4_ <= 1'b0;
		crcIn_5_ <= 1'b0;
		crcIn_6_ <= 1'b0;
		crcIn_7_ <= 1'b0;
		crcIn_8_ <= 1'b0;
		crcIn_9_ <= 1'b0;
		crcIn_10_ <= 1'b0;
		crcIn_11_ <= 1'b0;
		crcIn_12_ <= 1'b0;
		crcIn_13_ <= 1'b0;
		crcIn_14_ <= 1'b0;
		crcIn_15_ <= 1'b0;
		crcIn_16_ <= 1'b0;
		crcIn_17_ <= 1'b0;
		crcIn_18_ <= 1'b0;
		crcIn_19_ <= 1'b0;
		crcIn_20_ <= 1'b0;
		crcIn_21_ <= 1'b0;
		crcIn_22_ <= 1'b0;
		crcIn_23_ <= 1'b0;
		crcIn_24_ <= 1'b0;
		crcIn_25_ <= 1'b0;
		crcIn_26_ <= 1'b0;
		crcIn_27_ <= 1'b0;
		crcIn_28_ <= 1'b0;
		crcIn_29_ <= 1'b0;
		crcIn_30_ <= 1'b0;
		crcIn_31_ <= 1'b0;
		data_0_ <= 1'b0;
		data_1_ <= 1'b0;
		data_2_ <= 1'b0;
		data_3_ <= 1'b0;
		data_4_ <= 1'b0;
		data_5_ <= 1'b0;
		data_6_ <= 1'b0;
		data_7_ <= 1'b0;

		crc_0__flag[0] <= 1'b0;
		crc_1__flag[0] <= 1'b0;
		crc_2__flag[0] <= 1'b0;
		crc_3__flag[0] <= 1'b0;
		crc_4__flag[0] <= 1'b0;
		crc_5__flag[0] <= 1'b0;
		crc_6__flag[0] <= 1'b0;
		crc_7__flag[0] <= 1'b0;
		crc_8__flag[0] <= 1'b0;
		crc_9__flag[0] <= 1'b0;
		crc_10__flag[0] <= 1'b0;
		crc_11__flag[0] <= 1'b0;
		crc_12__flag[0] <= 1'b0;
		crc_13__flag[0] <= 1'b0;
		crc_14__flag[0] <= 1'b0;
		crc_15__flag[0] <= 1'b0;
		crc_16__flag[0] <= 1'b0;
		crc_17__flag[0] <= 1'b0;
		crc_18__flag[0] <= 1'b0;
		crc_19__flag[0] <= 1'b0;
		crc_20__flag[0] <= 1'b0;
		crc_21__flag[0] <= 1'b0;
		crc_22__flag[0] <= 1'b0;
		crc_23__flag[0] <= 1'b0;
		crc_24__flag[0] <= 1'b0;
		crc_25__flag[0] <= 1'b0;
		crc_26__flag[0] <= 1'b0;
		crc_27__flag[0] <= 1'b0;
		crc_28__flag[0] <= 1'b0;
		crc_29__flag[0] <= 1'b0;
		crc_30__flag[0] <= 1'b0;
		crc_31__flag[0] <= 1'b0;
	end

// ----- Input Stimulus -------
	always@(negedge clk[0]) begin
		crcIn_0_ <= $random;
		crcIn_1_ <= $random;
		crcIn_2_ <= $random;
		crcIn_3_ <= $random;
		crcIn_4_ <= $random;
		crcIn_5_ <= $random;
		crcIn_6_ <= $random;
		crcIn_7_ <= $random;
		crcIn_8_ <= $random;
		crcIn_9_ <= $random;
		crcIn_10_ <= $random;
		crcIn_11_ <= $random;
		crcIn_12_ <= $random;
		crcIn_13_ <= $random;
		crcIn_14_ <= $random;
		crcIn_15_ <= $random;
		crcIn_16_ <= $random;
		crcIn_17_ <= $random;
		crcIn_18_ <= $random;
		crcIn_19_ <= $random;
		crcIn_20_ <= $random;
		crcIn_21_ <= $random;
		crcIn_22_ <= $random;
		crcIn_23_ <= $random;
		crcIn_24_ <= $random;
		crcIn_25_ <= $random;
		crcIn_26_ <= $random;
		crcIn_27_ <= $random;
		crcIn_28_ <= $random;
		crcIn_29_ <= $random;
		crcIn_30_ <= $random;
		crcIn_31_ <= $random;
		data_0_ <= $random;
		data_1_ <= $random;
		data_2_ <= $random;
		data_3_ <= $random;
		data_4_ <= $random;
		data_5_ <= $random;
		data_6_ <= $random;
		data_7_ <= $random;
	end

// ----- Begin checking output vectors -------
// ----- Skip the first falling edge of clock, it is for initialization -------
	reg [0:0] sim_start;

	always@(negedge clk[0]) begin
		if (1'b1 == sim_start[0]) begin
			sim_start[0] <= ~sim_start[0];
		end else 
begin
			if(!(crc_0__gfpga === crc_0__bench) && !(crc_0__bench === 1'bx)) begin
				crc_0__flag <= 1'b1;
			end else begin
				crc_0__flag<= 1'b0;
			end
			if(!(crc_1__gfpga === crc_1__bench) && !(crc_1__bench === 1'bx)) begin
				crc_1__flag <= 1'b1;
			end else begin
				crc_1__flag<= 1'b0;
			end
			if(!(crc_2__gfpga === crc_2__bench) && !(crc_2__bench === 1'bx)) begin
				crc_2__flag <= 1'b1;
			end else begin
				crc_2__flag<= 1'b0;
			end
			if(!(crc_3__gfpga === crc_3__bench) && !(crc_3__bench === 1'bx)) begin
				crc_3__flag <= 1'b1;
			end else begin
				crc_3__flag<= 1'b0;
			end
			if(!(crc_4__gfpga === crc_4__bench) && !(crc_4__bench === 1'bx)) begin
				crc_4__flag <= 1'b1;
			end else begin
				crc_4__flag<= 1'b0;
			end
			if(!(crc_5__gfpga === crc_5__bench) && !(crc_5__bench === 1'bx)) begin
				crc_5__flag <= 1'b1;
			end else begin
				crc_5__flag<= 1'b0;
			end
			if(!(crc_6__gfpga === crc_6__bench) && !(crc_6__bench === 1'bx)) begin
				crc_6__flag <= 1'b1;
			end else begin
				crc_6__flag<= 1'b0;
			end
			if(!(crc_7__gfpga === crc_7__bench) && !(crc_7__bench === 1'bx)) begin
				crc_7__flag <= 1'b1;
			end else begin
				crc_7__flag<= 1'b0;
			end
			if(!(crc_8__gfpga === crc_8__bench) && !(crc_8__bench === 1'bx)) begin
				crc_8__flag <= 1'b1;
			end else begin
				crc_8__flag<= 1'b0;
			end
			if(!(crc_9__gfpga === crc_9__bench) && !(crc_9__bench === 1'bx)) begin
				crc_9__flag <= 1'b1;
			end else begin
				crc_9__flag<= 1'b0;
			end
			if(!(crc_10__gfpga === crc_10__bench) && !(crc_10__bench === 1'bx)) begin
				crc_10__flag <= 1'b1;
			end else begin
				crc_10__flag<= 1'b0;
			end
			if(!(crc_11__gfpga === crc_11__bench) && !(crc_11__bench === 1'bx)) begin
				crc_11__flag <= 1'b1;
			end else begin
				crc_11__flag<= 1'b0;
			end
			if(!(crc_12__gfpga === crc_12__bench) && !(crc_12__bench === 1'bx)) begin
				crc_12__flag <= 1'b1;
			end else begin
				crc_12__flag<= 1'b0;
			end
			if(!(crc_13__gfpga === crc_13__bench) && !(crc_13__bench === 1'bx)) begin
				crc_13__flag <= 1'b1;
			end else begin
				crc_13__flag<= 1'b0;
			end
			if(!(crc_14__gfpga === crc_14__bench) && !(crc_14__bench === 1'bx)) begin
				crc_14__flag <= 1'b1;
			end else begin
				crc_14__flag<= 1'b0;
			end
			if(!(crc_15__gfpga === crc_15__bench) && !(crc_15__bench === 1'bx)) begin
				crc_15__flag <= 1'b1;
			end else begin
				crc_15__flag<= 1'b0;
			end
			if(!(crc_16__gfpga === crc_16__bench) && !(crc_16__bench === 1'bx)) begin
				crc_16__flag <= 1'b1;
			end else begin
				crc_16__flag<= 1'b0;
			end
			if(!(crc_17__gfpga === crc_17__bench) && !(crc_17__bench === 1'bx)) begin
				crc_17__flag <= 1'b1;
			end else begin
				crc_17__flag<= 1'b0;
			end
			if(!(crc_18__gfpga === crc_18__bench) && !(crc_18__bench === 1'bx)) begin
				crc_18__flag <= 1'b1;
			end else begin
				crc_18__flag<= 1'b0;
			end
			if(!(crc_19__gfpga === crc_19__bench) && !(crc_19__bench === 1'bx)) begin
				crc_19__flag <= 1'b1;
			end else begin
				crc_19__flag<= 1'b0;
			end
			if(!(crc_20__gfpga === crc_20__bench) && !(crc_20__bench === 1'bx)) begin
				crc_20__flag <= 1'b1;
			end else begin
				crc_20__flag<= 1'b0;
			end
			if(!(crc_21__gfpga === crc_21__bench) && !(crc_21__bench === 1'bx)) begin
				crc_21__flag <= 1'b1;
			end else begin
				crc_21__flag<= 1'b0;
			end
			if(!(crc_22__gfpga === crc_22__bench) && !(crc_22__bench === 1'bx)) begin
				crc_22__flag <= 1'b1;
			end else begin
				crc_22__flag<= 1'b0;
			end
			if(!(crc_23__gfpga === crc_23__bench) && !(crc_23__bench === 1'bx)) begin
				crc_23__flag <= 1'b1;
			end else begin
				crc_23__flag<= 1'b0;
			end
			if(!(crc_24__gfpga === crc_24__bench) && !(crc_24__bench === 1'bx)) begin
				crc_24__flag <= 1'b1;
			end else begin
				crc_24__flag<= 1'b0;
			end
			if(!(crc_25__gfpga === crc_25__bench) && !(crc_25__bench === 1'bx)) begin
				crc_25__flag <= 1'b1;
			end else begin
				crc_25__flag<= 1'b0;
			end
			if(!(crc_26__gfpga === crc_26__bench) && !(crc_26__bench === 1'bx)) begin
				crc_26__flag <= 1'b1;
			end else begin
				crc_26__flag<= 1'b0;
			end
			if(!(crc_27__gfpga === crc_27__bench) && !(crc_27__bench === 1'bx)) begin
				crc_27__flag <= 1'b1;
			end else begin
				crc_27__flag<= 1'b0;
			end
			if(!(crc_28__gfpga === crc_28__bench) && !(crc_28__bench === 1'bx)) begin
				crc_28__flag <= 1'b1;
			end else begin
				crc_28__flag<= 1'b0;
			end
			if(!(crc_29__gfpga === crc_29__bench) && !(crc_29__bench === 1'bx)) begin
				crc_29__flag <= 1'b1;
			end else begin
				crc_29__flag<= 1'b0;
			end
			if(!(crc_30__gfpga === crc_30__bench) && !(crc_30__bench === 1'bx)) begin
				crc_30__flag <= 1'b1;
			end else begin
				crc_30__flag<= 1'b0;
			end
			if(!(crc_31__gfpga === crc_31__bench) && !(crc_31__bench === 1'bx)) begin
				crc_31__flag <= 1'b1;
			end else begin
				crc_31__flag<= 1'b0;
			end
		end
	end

	always@(posedge crc_0__flag) begin
		if(crc_0__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on crc_0__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge crc_1__flag) begin
		if(crc_1__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on crc_1__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge crc_2__flag) begin
		if(crc_2__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on crc_2__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge crc_3__flag) begin
		if(crc_3__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on crc_3__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge crc_4__flag) begin
		if(crc_4__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on crc_4__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge crc_5__flag) begin
		if(crc_5__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on crc_5__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge crc_6__flag) begin
		if(crc_6__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on crc_6__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge crc_7__flag) begin
		if(crc_7__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on crc_7__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge crc_8__flag) begin
		if(crc_8__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on crc_8__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge crc_9__flag) begin
		if(crc_9__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on crc_9__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge crc_10__flag) begin
		if(crc_10__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on crc_10__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge crc_11__flag) begin
		if(crc_11__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on crc_11__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge crc_12__flag) begin
		if(crc_12__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on crc_12__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge crc_13__flag) begin
		if(crc_13__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on crc_13__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge crc_14__flag) begin
		if(crc_14__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on crc_14__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge crc_15__flag) begin
		if(crc_15__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on crc_15__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge crc_16__flag) begin
		if(crc_16__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on crc_16__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge crc_17__flag) begin
		if(crc_17__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on crc_17__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge crc_18__flag) begin
		if(crc_18__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on crc_18__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge crc_19__flag) begin
		if(crc_19__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on crc_19__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge crc_20__flag) begin
		if(crc_20__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on crc_20__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge crc_21__flag) begin
		if(crc_21__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on crc_21__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge crc_22__flag) begin
		if(crc_22__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on crc_22__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge crc_23__flag) begin
		if(crc_23__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on crc_23__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge crc_24__flag) begin
		if(crc_24__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on crc_24__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge crc_25__flag) begin
		if(crc_25__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on crc_25__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge crc_26__flag) begin
		if(crc_26__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on crc_26__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge crc_27__flag) begin
		if(crc_27__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on crc_27__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge crc_28__flag) begin
		if(crc_28__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on crc_28__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge crc_29__flag) begin
		if(crc_29__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on crc_29__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge crc_30__flag) begin
		if(crc_30__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on crc_30__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge crc_31__flag) begin
		if(crc_31__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on crc_31__gfpga at time = %t", $realtime);
		end
	end


// ----- Begin output waveform to VCD file-------
	initial begin
		$dumpfile("crc_formal.vcd");
		$dumpvars(1, crc_top_formal_verification_random_tb);
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
// ----- END Verilog module for crc_top_formal_verification_random_tb -----

//----- Default net type -----
`default_nettype none

