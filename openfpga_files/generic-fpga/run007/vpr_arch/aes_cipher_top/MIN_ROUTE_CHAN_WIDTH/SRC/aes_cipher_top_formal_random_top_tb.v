//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: FPGA Verilog Testbench for Formal Top-level netlist of Design: aes_cipher_top
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Wed Jul  5 15:21:31 2023
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

//----- Default net type -----
`default_nettype none

module aes_cipher_top_top_formal_verification_random_tb;
// ----- Default clock port is added here since benchmark does not contain one -------
	reg [0:0] clk;

// ----- Shared inputs -------
	reg [0:0] rst;
	reg [0:0] ld;
	reg [0:0] key_0_;
	reg [0:0] key_1_;
	reg [0:0] key_2_;
	reg [0:0] key_3_;
	reg [0:0] key_4_;
	reg [0:0] key_5_;
	reg [0:0] key_6_;
	reg [0:0] key_7_;
	reg [0:0] key_8_;
	reg [0:0] key_9_;
	reg [0:0] key_10_;
	reg [0:0] key_11_;
	reg [0:0] key_12_;
	reg [0:0] key_13_;
	reg [0:0] key_14_;
	reg [0:0] key_15_;
	reg [0:0] key_16_;
	reg [0:0] key_17_;
	reg [0:0] key_18_;
	reg [0:0] key_19_;
	reg [0:0] key_20_;
	reg [0:0] key_21_;
	reg [0:0] key_22_;
	reg [0:0] key_23_;
	reg [0:0] key_24_;
	reg [0:0] key_25_;
	reg [0:0] key_26_;
	reg [0:0] key_27_;
	reg [0:0] key_28_;
	reg [0:0] key_29_;
	reg [0:0] key_30_;
	reg [0:0] key_31_;
	reg [0:0] key_32_;
	reg [0:0] key_33_;
	reg [0:0] key_34_;
	reg [0:0] key_35_;
	reg [0:0] key_36_;
	reg [0:0] key_37_;
	reg [0:0] key_38_;
	reg [0:0] key_39_;
	reg [0:0] key_40_;
	reg [0:0] key_41_;
	reg [0:0] key_42_;
	reg [0:0] key_43_;
	reg [0:0] key_44_;
	reg [0:0] key_45_;
	reg [0:0] key_46_;
	reg [0:0] key_47_;
	reg [0:0] key_48_;
	reg [0:0] key_49_;
	reg [0:0] key_50_;
	reg [0:0] key_51_;
	reg [0:0] key_52_;
	reg [0:0] key_53_;
	reg [0:0] key_54_;
	reg [0:0] key_55_;
	reg [0:0] key_56_;
	reg [0:0] key_57_;
	reg [0:0] key_58_;
	reg [0:0] key_59_;
	reg [0:0] key_60_;
	reg [0:0] key_61_;
	reg [0:0] key_62_;
	reg [0:0] key_63_;
	reg [0:0] key_64_;
	reg [0:0] key_65_;
	reg [0:0] key_66_;
	reg [0:0] key_67_;
	reg [0:0] key_68_;
	reg [0:0] key_69_;
	reg [0:0] key_70_;
	reg [0:0] key_71_;
	reg [0:0] key_72_;
	reg [0:0] key_73_;
	reg [0:0] key_74_;
	reg [0:0] key_75_;
	reg [0:0] key_76_;
	reg [0:0] key_77_;
	reg [0:0] key_78_;
	reg [0:0] key_79_;
	reg [0:0] key_80_;
	reg [0:0] key_81_;
	reg [0:0] key_82_;
	reg [0:0] key_83_;
	reg [0:0] key_84_;
	reg [0:0] key_85_;
	reg [0:0] key_86_;
	reg [0:0] key_87_;
	reg [0:0] key_88_;
	reg [0:0] key_89_;
	reg [0:0] key_90_;
	reg [0:0] key_91_;
	reg [0:0] key_92_;
	reg [0:0] key_93_;
	reg [0:0] key_94_;
	reg [0:0] key_95_;
	reg [0:0] key_96_;
	reg [0:0] key_97_;
	reg [0:0] key_98_;
	reg [0:0] key_99_;
	reg [0:0] key_100_;
	reg [0:0] key_101_;
	reg [0:0] key_102_;
	reg [0:0] key_103_;
	reg [0:0] key_104_;
	reg [0:0] key_105_;
	reg [0:0] key_106_;
	reg [0:0] key_107_;
	reg [0:0] key_108_;
	reg [0:0] key_109_;
	reg [0:0] key_110_;
	reg [0:0] key_111_;
	reg [0:0] key_112_;
	reg [0:0] key_113_;
	reg [0:0] key_114_;
	reg [0:0] key_115_;
	reg [0:0] key_116_;
	reg [0:0] key_117_;
	reg [0:0] key_118_;
	reg [0:0] key_119_;
	reg [0:0] key_120_;
	reg [0:0] key_121_;
	reg [0:0] key_122_;
	reg [0:0] key_123_;
	reg [0:0] key_124_;
	reg [0:0] key_125_;
	reg [0:0] key_126_;
	reg [0:0] key_127_;
	reg [0:0] text_in_0_;
	reg [0:0] text_in_1_;
	reg [0:0] text_in_2_;
	reg [0:0] text_in_3_;
	reg [0:0] text_in_4_;
	reg [0:0] text_in_5_;
	reg [0:0] text_in_6_;
	reg [0:0] text_in_7_;
	reg [0:0] text_in_8_;
	reg [0:0] text_in_9_;
	reg [0:0] text_in_10_;
	reg [0:0] text_in_11_;
	reg [0:0] text_in_12_;
	reg [0:0] text_in_13_;
	reg [0:0] text_in_14_;
	reg [0:0] text_in_15_;
	reg [0:0] text_in_16_;
	reg [0:0] text_in_17_;
	reg [0:0] text_in_18_;
	reg [0:0] text_in_19_;
	reg [0:0] text_in_20_;
	reg [0:0] text_in_21_;
	reg [0:0] text_in_22_;
	reg [0:0] text_in_23_;
	reg [0:0] text_in_24_;
	reg [0:0] text_in_25_;
	reg [0:0] text_in_26_;
	reg [0:0] text_in_27_;
	reg [0:0] text_in_28_;
	reg [0:0] text_in_29_;
	reg [0:0] text_in_30_;
	reg [0:0] text_in_31_;
	reg [0:0] text_in_32_;
	reg [0:0] text_in_33_;
	reg [0:0] text_in_34_;
	reg [0:0] text_in_35_;
	reg [0:0] text_in_36_;
	reg [0:0] text_in_37_;
	reg [0:0] text_in_38_;
	reg [0:0] text_in_39_;
	reg [0:0] text_in_40_;
	reg [0:0] text_in_41_;
	reg [0:0] text_in_42_;
	reg [0:0] text_in_43_;
	reg [0:0] text_in_44_;
	reg [0:0] text_in_45_;
	reg [0:0] text_in_46_;
	reg [0:0] text_in_47_;
	reg [0:0] text_in_48_;
	reg [0:0] text_in_49_;
	reg [0:0] text_in_50_;
	reg [0:0] text_in_51_;
	reg [0:0] text_in_52_;
	reg [0:0] text_in_53_;
	reg [0:0] text_in_54_;
	reg [0:0] text_in_55_;
	reg [0:0] text_in_56_;
	reg [0:0] text_in_57_;
	reg [0:0] text_in_58_;
	reg [0:0] text_in_59_;
	reg [0:0] text_in_60_;
	reg [0:0] text_in_61_;
	reg [0:0] text_in_62_;
	reg [0:0] text_in_63_;
	reg [0:0] text_in_64_;
	reg [0:0] text_in_65_;
	reg [0:0] text_in_66_;
	reg [0:0] text_in_67_;
	reg [0:0] text_in_68_;
	reg [0:0] text_in_69_;
	reg [0:0] text_in_70_;
	reg [0:0] text_in_71_;
	reg [0:0] text_in_72_;
	reg [0:0] text_in_73_;
	reg [0:0] text_in_74_;
	reg [0:0] text_in_75_;
	reg [0:0] text_in_76_;
	reg [0:0] text_in_77_;
	reg [0:0] text_in_78_;
	reg [0:0] text_in_79_;
	reg [0:0] text_in_80_;
	reg [0:0] text_in_81_;
	reg [0:0] text_in_82_;
	reg [0:0] text_in_83_;
	reg [0:0] text_in_84_;
	reg [0:0] text_in_85_;
	reg [0:0] text_in_86_;
	reg [0:0] text_in_87_;
	reg [0:0] text_in_88_;
	reg [0:0] text_in_89_;
	reg [0:0] text_in_90_;
	reg [0:0] text_in_91_;
	reg [0:0] text_in_92_;
	reg [0:0] text_in_93_;
	reg [0:0] text_in_94_;
	reg [0:0] text_in_95_;
	reg [0:0] text_in_96_;
	reg [0:0] text_in_97_;
	reg [0:0] text_in_98_;
	reg [0:0] text_in_99_;
	reg [0:0] text_in_100_;
	reg [0:0] text_in_101_;
	reg [0:0] text_in_102_;
	reg [0:0] text_in_103_;
	reg [0:0] text_in_104_;
	reg [0:0] text_in_105_;
	reg [0:0] text_in_106_;
	reg [0:0] text_in_107_;
	reg [0:0] text_in_108_;
	reg [0:0] text_in_109_;
	reg [0:0] text_in_110_;
	reg [0:0] text_in_111_;
	reg [0:0] text_in_112_;
	reg [0:0] text_in_113_;
	reg [0:0] text_in_114_;
	reg [0:0] text_in_115_;
	reg [0:0] text_in_116_;
	reg [0:0] text_in_117_;
	reg [0:0] text_in_118_;
	reg [0:0] text_in_119_;
	reg [0:0] text_in_120_;
	reg [0:0] text_in_121_;
	reg [0:0] text_in_122_;
	reg [0:0] text_in_123_;
	reg [0:0] text_in_124_;
	reg [0:0] text_in_125_;
	reg [0:0] text_in_126_;
	reg [0:0] text_in_127_;

// ----- FPGA fabric outputs -------
	wire [0:0] done_gfpga;
	wire [0:0] text_out_0__gfpga;
	wire [0:0] text_out_1__gfpga;
	wire [0:0] text_out_2__gfpga;
	wire [0:0] text_out_3__gfpga;
	wire [0:0] text_out_4__gfpga;
	wire [0:0] text_out_5__gfpga;
	wire [0:0] text_out_6__gfpga;
	wire [0:0] text_out_7__gfpga;
	wire [0:0] text_out_8__gfpga;
	wire [0:0] text_out_9__gfpga;
	wire [0:0] text_out_10__gfpga;
	wire [0:0] text_out_11__gfpga;
	wire [0:0] text_out_12__gfpga;
	wire [0:0] text_out_13__gfpga;
	wire [0:0] text_out_14__gfpga;
	wire [0:0] text_out_15__gfpga;
	wire [0:0] text_out_16__gfpga;
	wire [0:0] text_out_17__gfpga;
	wire [0:0] text_out_18__gfpga;
	wire [0:0] text_out_19__gfpga;
	wire [0:0] text_out_20__gfpga;
	wire [0:0] text_out_21__gfpga;
	wire [0:0] text_out_22__gfpga;
	wire [0:0] text_out_23__gfpga;
	wire [0:0] text_out_24__gfpga;
	wire [0:0] text_out_25__gfpga;
	wire [0:0] text_out_26__gfpga;
	wire [0:0] text_out_27__gfpga;
	wire [0:0] text_out_28__gfpga;
	wire [0:0] text_out_29__gfpga;
	wire [0:0] text_out_30__gfpga;
	wire [0:0] text_out_31__gfpga;
	wire [0:0] text_out_32__gfpga;
	wire [0:0] text_out_33__gfpga;
	wire [0:0] text_out_34__gfpga;
	wire [0:0] text_out_35__gfpga;
	wire [0:0] text_out_36__gfpga;
	wire [0:0] text_out_37__gfpga;
	wire [0:0] text_out_38__gfpga;
	wire [0:0] text_out_39__gfpga;
	wire [0:0] text_out_40__gfpga;
	wire [0:0] text_out_41__gfpga;
	wire [0:0] text_out_42__gfpga;
	wire [0:0] text_out_43__gfpga;
	wire [0:0] text_out_44__gfpga;
	wire [0:0] text_out_45__gfpga;
	wire [0:0] text_out_46__gfpga;
	wire [0:0] text_out_47__gfpga;
	wire [0:0] text_out_48__gfpga;
	wire [0:0] text_out_49__gfpga;
	wire [0:0] text_out_50__gfpga;
	wire [0:0] text_out_51__gfpga;
	wire [0:0] text_out_52__gfpga;
	wire [0:0] text_out_53__gfpga;
	wire [0:0] text_out_54__gfpga;
	wire [0:0] text_out_55__gfpga;
	wire [0:0] text_out_56__gfpga;
	wire [0:0] text_out_57__gfpga;
	wire [0:0] text_out_58__gfpga;
	wire [0:0] text_out_59__gfpga;
	wire [0:0] text_out_60__gfpga;
	wire [0:0] text_out_61__gfpga;
	wire [0:0] text_out_62__gfpga;
	wire [0:0] text_out_63__gfpga;
	wire [0:0] text_out_64__gfpga;
	wire [0:0] text_out_65__gfpga;
	wire [0:0] text_out_66__gfpga;
	wire [0:0] text_out_67__gfpga;
	wire [0:0] text_out_68__gfpga;
	wire [0:0] text_out_69__gfpga;
	wire [0:0] text_out_70__gfpga;
	wire [0:0] text_out_71__gfpga;
	wire [0:0] text_out_72__gfpga;
	wire [0:0] text_out_73__gfpga;
	wire [0:0] text_out_74__gfpga;
	wire [0:0] text_out_75__gfpga;
	wire [0:0] text_out_76__gfpga;
	wire [0:0] text_out_77__gfpga;
	wire [0:0] text_out_78__gfpga;
	wire [0:0] text_out_79__gfpga;
	wire [0:0] text_out_80__gfpga;
	wire [0:0] text_out_81__gfpga;
	wire [0:0] text_out_82__gfpga;
	wire [0:0] text_out_83__gfpga;
	wire [0:0] text_out_84__gfpga;
	wire [0:0] text_out_85__gfpga;
	wire [0:0] text_out_86__gfpga;
	wire [0:0] text_out_87__gfpga;
	wire [0:0] text_out_88__gfpga;
	wire [0:0] text_out_89__gfpga;
	wire [0:0] text_out_90__gfpga;
	wire [0:0] text_out_91__gfpga;
	wire [0:0] text_out_92__gfpga;
	wire [0:0] text_out_93__gfpga;
	wire [0:0] text_out_94__gfpga;
	wire [0:0] text_out_95__gfpga;
	wire [0:0] text_out_96__gfpga;
	wire [0:0] text_out_97__gfpga;
	wire [0:0] text_out_98__gfpga;
	wire [0:0] text_out_99__gfpga;
	wire [0:0] text_out_100__gfpga;
	wire [0:0] text_out_101__gfpga;
	wire [0:0] text_out_102__gfpga;
	wire [0:0] text_out_103__gfpga;
	wire [0:0] text_out_104__gfpga;
	wire [0:0] text_out_105__gfpga;
	wire [0:0] text_out_106__gfpga;
	wire [0:0] text_out_107__gfpga;
	wire [0:0] text_out_108__gfpga;
	wire [0:0] text_out_109__gfpga;
	wire [0:0] text_out_110__gfpga;
	wire [0:0] text_out_111__gfpga;
	wire [0:0] text_out_112__gfpga;
	wire [0:0] text_out_113__gfpga;
	wire [0:0] text_out_114__gfpga;
	wire [0:0] text_out_115__gfpga;
	wire [0:0] text_out_116__gfpga;
	wire [0:0] text_out_117__gfpga;
	wire [0:0] text_out_118__gfpga;
	wire [0:0] text_out_119__gfpga;
	wire [0:0] text_out_120__gfpga;
	wire [0:0] text_out_121__gfpga;
	wire [0:0] text_out_122__gfpga;
	wire [0:0] text_out_123__gfpga;
	wire [0:0] text_out_124__gfpga;
	wire [0:0] text_out_125__gfpga;
	wire [0:0] text_out_126__gfpga;
	wire [0:0] text_out_127__gfpga;

// ----- Benchmark outputs -------
	wire [0:0] done_bench;
	wire [0:0] text_out_0__bench;
	wire [0:0] text_out_1__bench;
	wire [0:0] text_out_2__bench;
	wire [0:0] text_out_3__bench;
	wire [0:0] text_out_4__bench;
	wire [0:0] text_out_5__bench;
	wire [0:0] text_out_6__bench;
	wire [0:0] text_out_7__bench;
	wire [0:0] text_out_8__bench;
	wire [0:0] text_out_9__bench;
	wire [0:0] text_out_10__bench;
	wire [0:0] text_out_11__bench;
	wire [0:0] text_out_12__bench;
	wire [0:0] text_out_13__bench;
	wire [0:0] text_out_14__bench;
	wire [0:0] text_out_15__bench;
	wire [0:0] text_out_16__bench;
	wire [0:0] text_out_17__bench;
	wire [0:0] text_out_18__bench;
	wire [0:0] text_out_19__bench;
	wire [0:0] text_out_20__bench;
	wire [0:0] text_out_21__bench;
	wire [0:0] text_out_22__bench;
	wire [0:0] text_out_23__bench;
	wire [0:0] text_out_24__bench;
	wire [0:0] text_out_25__bench;
	wire [0:0] text_out_26__bench;
	wire [0:0] text_out_27__bench;
	wire [0:0] text_out_28__bench;
	wire [0:0] text_out_29__bench;
	wire [0:0] text_out_30__bench;
	wire [0:0] text_out_31__bench;
	wire [0:0] text_out_32__bench;
	wire [0:0] text_out_33__bench;
	wire [0:0] text_out_34__bench;
	wire [0:0] text_out_35__bench;
	wire [0:0] text_out_36__bench;
	wire [0:0] text_out_37__bench;
	wire [0:0] text_out_38__bench;
	wire [0:0] text_out_39__bench;
	wire [0:0] text_out_40__bench;
	wire [0:0] text_out_41__bench;
	wire [0:0] text_out_42__bench;
	wire [0:0] text_out_43__bench;
	wire [0:0] text_out_44__bench;
	wire [0:0] text_out_45__bench;
	wire [0:0] text_out_46__bench;
	wire [0:0] text_out_47__bench;
	wire [0:0] text_out_48__bench;
	wire [0:0] text_out_49__bench;
	wire [0:0] text_out_50__bench;
	wire [0:0] text_out_51__bench;
	wire [0:0] text_out_52__bench;
	wire [0:0] text_out_53__bench;
	wire [0:0] text_out_54__bench;
	wire [0:0] text_out_55__bench;
	wire [0:0] text_out_56__bench;
	wire [0:0] text_out_57__bench;
	wire [0:0] text_out_58__bench;
	wire [0:0] text_out_59__bench;
	wire [0:0] text_out_60__bench;
	wire [0:0] text_out_61__bench;
	wire [0:0] text_out_62__bench;
	wire [0:0] text_out_63__bench;
	wire [0:0] text_out_64__bench;
	wire [0:0] text_out_65__bench;
	wire [0:0] text_out_66__bench;
	wire [0:0] text_out_67__bench;
	wire [0:0] text_out_68__bench;
	wire [0:0] text_out_69__bench;
	wire [0:0] text_out_70__bench;
	wire [0:0] text_out_71__bench;
	wire [0:0] text_out_72__bench;
	wire [0:0] text_out_73__bench;
	wire [0:0] text_out_74__bench;
	wire [0:0] text_out_75__bench;
	wire [0:0] text_out_76__bench;
	wire [0:0] text_out_77__bench;
	wire [0:0] text_out_78__bench;
	wire [0:0] text_out_79__bench;
	wire [0:0] text_out_80__bench;
	wire [0:0] text_out_81__bench;
	wire [0:0] text_out_82__bench;
	wire [0:0] text_out_83__bench;
	wire [0:0] text_out_84__bench;
	wire [0:0] text_out_85__bench;
	wire [0:0] text_out_86__bench;
	wire [0:0] text_out_87__bench;
	wire [0:0] text_out_88__bench;
	wire [0:0] text_out_89__bench;
	wire [0:0] text_out_90__bench;
	wire [0:0] text_out_91__bench;
	wire [0:0] text_out_92__bench;
	wire [0:0] text_out_93__bench;
	wire [0:0] text_out_94__bench;
	wire [0:0] text_out_95__bench;
	wire [0:0] text_out_96__bench;
	wire [0:0] text_out_97__bench;
	wire [0:0] text_out_98__bench;
	wire [0:0] text_out_99__bench;
	wire [0:0] text_out_100__bench;
	wire [0:0] text_out_101__bench;
	wire [0:0] text_out_102__bench;
	wire [0:0] text_out_103__bench;
	wire [0:0] text_out_104__bench;
	wire [0:0] text_out_105__bench;
	wire [0:0] text_out_106__bench;
	wire [0:0] text_out_107__bench;
	wire [0:0] text_out_108__bench;
	wire [0:0] text_out_109__bench;
	wire [0:0] text_out_110__bench;
	wire [0:0] text_out_111__bench;
	wire [0:0] text_out_112__bench;
	wire [0:0] text_out_113__bench;
	wire [0:0] text_out_114__bench;
	wire [0:0] text_out_115__bench;
	wire [0:0] text_out_116__bench;
	wire [0:0] text_out_117__bench;
	wire [0:0] text_out_118__bench;
	wire [0:0] text_out_119__bench;
	wire [0:0] text_out_120__bench;
	wire [0:0] text_out_121__bench;
	wire [0:0] text_out_122__bench;
	wire [0:0] text_out_123__bench;
	wire [0:0] text_out_124__bench;
	wire [0:0] text_out_125__bench;
	wire [0:0] text_out_126__bench;
	wire [0:0] text_out_127__bench;

// ----- Output vectors checking flags -------
	reg [0:0] done_flag;
	reg [0:0] text_out_0__flag;
	reg [0:0] text_out_1__flag;
	reg [0:0] text_out_2__flag;
	reg [0:0] text_out_3__flag;
	reg [0:0] text_out_4__flag;
	reg [0:0] text_out_5__flag;
	reg [0:0] text_out_6__flag;
	reg [0:0] text_out_7__flag;
	reg [0:0] text_out_8__flag;
	reg [0:0] text_out_9__flag;
	reg [0:0] text_out_10__flag;
	reg [0:0] text_out_11__flag;
	reg [0:0] text_out_12__flag;
	reg [0:0] text_out_13__flag;
	reg [0:0] text_out_14__flag;
	reg [0:0] text_out_15__flag;
	reg [0:0] text_out_16__flag;
	reg [0:0] text_out_17__flag;
	reg [0:0] text_out_18__flag;
	reg [0:0] text_out_19__flag;
	reg [0:0] text_out_20__flag;
	reg [0:0] text_out_21__flag;
	reg [0:0] text_out_22__flag;
	reg [0:0] text_out_23__flag;
	reg [0:0] text_out_24__flag;
	reg [0:0] text_out_25__flag;
	reg [0:0] text_out_26__flag;
	reg [0:0] text_out_27__flag;
	reg [0:0] text_out_28__flag;
	reg [0:0] text_out_29__flag;
	reg [0:0] text_out_30__flag;
	reg [0:0] text_out_31__flag;
	reg [0:0] text_out_32__flag;
	reg [0:0] text_out_33__flag;
	reg [0:0] text_out_34__flag;
	reg [0:0] text_out_35__flag;
	reg [0:0] text_out_36__flag;
	reg [0:0] text_out_37__flag;
	reg [0:0] text_out_38__flag;
	reg [0:0] text_out_39__flag;
	reg [0:0] text_out_40__flag;
	reg [0:0] text_out_41__flag;
	reg [0:0] text_out_42__flag;
	reg [0:0] text_out_43__flag;
	reg [0:0] text_out_44__flag;
	reg [0:0] text_out_45__flag;
	reg [0:0] text_out_46__flag;
	reg [0:0] text_out_47__flag;
	reg [0:0] text_out_48__flag;
	reg [0:0] text_out_49__flag;
	reg [0:0] text_out_50__flag;
	reg [0:0] text_out_51__flag;
	reg [0:0] text_out_52__flag;
	reg [0:0] text_out_53__flag;
	reg [0:0] text_out_54__flag;
	reg [0:0] text_out_55__flag;
	reg [0:0] text_out_56__flag;
	reg [0:0] text_out_57__flag;
	reg [0:0] text_out_58__flag;
	reg [0:0] text_out_59__flag;
	reg [0:0] text_out_60__flag;
	reg [0:0] text_out_61__flag;
	reg [0:0] text_out_62__flag;
	reg [0:0] text_out_63__flag;
	reg [0:0] text_out_64__flag;
	reg [0:0] text_out_65__flag;
	reg [0:0] text_out_66__flag;
	reg [0:0] text_out_67__flag;
	reg [0:0] text_out_68__flag;
	reg [0:0] text_out_69__flag;
	reg [0:0] text_out_70__flag;
	reg [0:0] text_out_71__flag;
	reg [0:0] text_out_72__flag;
	reg [0:0] text_out_73__flag;
	reg [0:0] text_out_74__flag;
	reg [0:0] text_out_75__flag;
	reg [0:0] text_out_76__flag;
	reg [0:0] text_out_77__flag;
	reg [0:0] text_out_78__flag;
	reg [0:0] text_out_79__flag;
	reg [0:0] text_out_80__flag;
	reg [0:0] text_out_81__flag;
	reg [0:0] text_out_82__flag;
	reg [0:0] text_out_83__flag;
	reg [0:0] text_out_84__flag;
	reg [0:0] text_out_85__flag;
	reg [0:0] text_out_86__flag;
	reg [0:0] text_out_87__flag;
	reg [0:0] text_out_88__flag;
	reg [0:0] text_out_89__flag;
	reg [0:0] text_out_90__flag;
	reg [0:0] text_out_91__flag;
	reg [0:0] text_out_92__flag;
	reg [0:0] text_out_93__flag;
	reg [0:0] text_out_94__flag;
	reg [0:0] text_out_95__flag;
	reg [0:0] text_out_96__flag;
	reg [0:0] text_out_97__flag;
	reg [0:0] text_out_98__flag;
	reg [0:0] text_out_99__flag;
	reg [0:0] text_out_100__flag;
	reg [0:0] text_out_101__flag;
	reg [0:0] text_out_102__flag;
	reg [0:0] text_out_103__flag;
	reg [0:0] text_out_104__flag;
	reg [0:0] text_out_105__flag;
	reg [0:0] text_out_106__flag;
	reg [0:0] text_out_107__flag;
	reg [0:0] text_out_108__flag;
	reg [0:0] text_out_109__flag;
	reg [0:0] text_out_110__flag;
	reg [0:0] text_out_111__flag;
	reg [0:0] text_out_112__flag;
	reg [0:0] text_out_113__flag;
	reg [0:0] text_out_114__flag;
	reg [0:0] text_out_115__flag;
	reg [0:0] text_out_116__flag;
	reg [0:0] text_out_117__flag;
	reg [0:0] text_out_118__flag;
	reg [0:0] text_out_119__flag;
	reg [0:0] text_out_120__flag;
	reg [0:0] text_out_121__flag;
	reg [0:0] text_out_122__flag;
	reg [0:0] text_out_123__flag;
	reg [0:0] text_out_124__flag;
	reg [0:0] text_out_125__flag;
	reg [0:0] text_out_126__flag;
	reg [0:0] text_out_127__flag;

// ----- Error counter -------
	integer nb_error= 0;

// ----- FPGA fabric instanciation -------
	aes_cipher_top_top_formal_verification FPGA_DUT(
		.clk(clk),
		.rst(rst),
		.ld(ld),
		.key_0_(key_0_),
		.key_1_(key_1_),
		.key_2_(key_2_),
		.key_3_(key_3_),
		.key_4_(key_4_),
		.key_5_(key_5_),
		.key_6_(key_6_),
		.key_7_(key_7_),
		.key_8_(key_8_),
		.key_9_(key_9_),
		.key_10_(key_10_),
		.key_11_(key_11_),
		.key_12_(key_12_),
		.key_13_(key_13_),
		.key_14_(key_14_),
		.key_15_(key_15_),
		.key_16_(key_16_),
		.key_17_(key_17_),
		.key_18_(key_18_),
		.key_19_(key_19_),
		.key_20_(key_20_),
		.key_21_(key_21_),
		.key_22_(key_22_),
		.key_23_(key_23_),
		.key_24_(key_24_),
		.key_25_(key_25_),
		.key_26_(key_26_),
		.key_27_(key_27_),
		.key_28_(key_28_),
		.key_29_(key_29_),
		.key_30_(key_30_),
		.key_31_(key_31_),
		.key_32_(key_32_),
		.key_33_(key_33_),
		.key_34_(key_34_),
		.key_35_(key_35_),
		.key_36_(key_36_),
		.key_37_(key_37_),
		.key_38_(key_38_),
		.key_39_(key_39_),
		.key_40_(key_40_),
		.key_41_(key_41_),
		.key_42_(key_42_),
		.key_43_(key_43_),
		.key_44_(key_44_),
		.key_45_(key_45_),
		.key_46_(key_46_),
		.key_47_(key_47_),
		.key_48_(key_48_),
		.key_49_(key_49_),
		.key_50_(key_50_),
		.key_51_(key_51_),
		.key_52_(key_52_),
		.key_53_(key_53_),
		.key_54_(key_54_),
		.key_55_(key_55_),
		.key_56_(key_56_),
		.key_57_(key_57_),
		.key_58_(key_58_),
		.key_59_(key_59_),
		.key_60_(key_60_),
		.key_61_(key_61_),
		.key_62_(key_62_),
		.key_63_(key_63_),
		.key_64_(key_64_),
		.key_65_(key_65_),
		.key_66_(key_66_),
		.key_67_(key_67_),
		.key_68_(key_68_),
		.key_69_(key_69_),
		.key_70_(key_70_),
		.key_71_(key_71_),
		.key_72_(key_72_),
		.key_73_(key_73_),
		.key_74_(key_74_),
		.key_75_(key_75_),
		.key_76_(key_76_),
		.key_77_(key_77_),
		.key_78_(key_78_),
		.key_79_(key_79_),
		.key_80_(key_80_),
		.key_81_(key_81_),
		.key_82_(key_82_),
		.key_83_(key_83_),
		.key_84_(key_84_),
		.key_85_(key_85_),
		.key_86_(key_86_),
		.key_87_(key_87_),
		.key_88_(key_88_),
		.key_89_(key_89_),
		.key_90_(key_90_),
		.key_91_(key_91_),
		.key_92_(key_92_),
		.key_93_(key_93_),
		.key_94_(key_94_),
		.key_95_(key_95_),
		.key_96_(key_96_),
		.key_97_(key_97_),
		.key_98_(key_98_),
		.key_99_(key_99_),
		.key_100_(key_100_),
		.key_101_(key_101_),
		.key_102_(key_102_),
		.key_103_(key_103_),
		.key_104_(key_104_),
		.key_105_(key_105_),
		.key_106_(key_106_),
		.key_107_(key_107_),
		.key_108_(key_108_),
		.key_109_(key_109_),
		.key_110_(key_110_),
		.key_111_(key_111_),
		.key_112_(key_112_),
		.key_113_(key_113_),
		.key_114_(key_114_),
		.key_115_(key_115_),
		.key_116_(key_116_),
		.key_117_(key_117_),
		.key_118_(key_118_),
		.key_119_(key_119_),
		.key_120_(key_120_),
		.key_121_(key_121_),
		.key_122_(key_122_),
		.key_123_(key_123_),
		.key_124_(key_124_),
		.key_125_(key_125_),
		.key_126_(key_126_),
		.key_127_(key_127_),
		.text_in_0_(text_in_0_),
		.text_in_1_(text_in_1_),
		.text_in_2_(text_in_2_),
		.text_in_3_(text_in_3_),
		.text_in_4_(text_in_4_),
		.text_in_5_(text_in_5_),
		.text_in_6_(text_in_6_),
		.text_in_7_(text_in_7_),
		.text_in_8_(text_in_8_),
		.text_in_9_(text_in_9_),
		.text_in_10_(text_in_10_),
		.text_in_11_(text_in_11_),
		.text_in_12_(text_in_12_),
		.text_in_13_(text_in_13_),
		.text_in_14_(text_in_14_),
		.text_in_15_(text_in_15_),
		.text_in_16_(text_in_16_),
		.text_in_17_(text_in_17_),
		.text_in_18_(text_in_18_),
		.text_in_19_(text_in_19_),
		.text_in_20_(text_in_20_),
		.text_in_21_(text_in_21_),
		.text_in_22_(text_in_22_),
		.text_in_23_(text_in_23_),
		.text_in_24_(text_in_24_),
		.text_in_25_(text_in_25_),
		.text_in_26_(text_in_26_),
		.text_in_27_(text_in_27_),
		.text_in_28_(text_in_28_),
		.text_in_29_(text_in_29_),
		.text_in_30_(text_in_30_),
		.text_in_31_(text_in_31_),
		.text_in_32_(text_in_32_),
		.text_in_33_(text_in_33_),
		.text_in_34_(text_in_34_),
		.text_in_35_(text_in_35_),
		.text_in_36_(text_in_36_),
		.text_in_37_(text_in_37_),
		.text_in_38_(text_in_38_),
		.text_in_39_(text_in_39_),
		.text_in_40_(text_in_40_),
		.text_in_41_(text_in_41_),
		.text_in_42_(text_in_42_),
		.text_in_43_(text_in_43_),
		.text_in_44_(text_in_44_),
		.text_in_45_(text_in_45_),
		.text_in_46_(text_in_46_),
		.text_in_47_(text_in_47_),
		.text_in_48_(text_in_48_),
		.text_in_49_(text_in_49_),
		.text_in_50_(text_in_50_),
		.text_in_51_(text_in_51_),
		.text_in_52_(text_in_52_),
		.text_in_53_(text_in_53_),
		.text_in_54_(text_in_54_),
		.text_in_55_(text_in_55_),
		.text_in_56_(text_in_56_),
		.text_in_57_(text_in_57_),
		.text_in_58_(text_in_58_),
		.text_in_59_(text_in_59_),
		.text_in_60_(text_in_60_),
		.text_in_61_(text_in_61_),
		.text_in_62_(text_in_62_),
		.text_in_63_(text_in_63_),
		.text_in_64_(text_in_64_),
		.text_in_65_(text_in_65_),
		.text_in_66_(text_in_66_),
		.text_in_67_(text_in_67_),
		.text_in_68_(text_in_68_),
		.text_in_69_(text_in_69_),
		.text_in_70_(text_in_70_),
		.text_in_71_(text_in_71_),
		.text_in_72_(text_in_72_),
		.text_in_73_(text_in_73_),
		.text_in_74_(text_in_74_),
		.text_in_75_(text_in_75_),
		.text_in_76_(text_in_76_),
		.text_in_77_(text_in_77_),
		.text_in_78_(text_in_78_),
		.text_in_79_(text_in_79_),
		.text_in_80_(text_in_80_),
		.text_in_81_(text_in_81_),
		.text_in_82_(text_in_82_),
		.text_in_83_(text_in_83_),
		.text_in_84_(text_in_84_),
		.text_in_85_(text_in_85_),
		.text_in_86_(text_in_86_),
		.text_in_87_(text_in_87_),
		.text_in_88_(text_in_88_),
		.text_in_89_(text_in_89_),
		.text_in_90_(text_in_90_),
		.text_in_91_(text_in_91_),
		.text_in_92_(text_in_92_),
		.text_in_93_(text_in_93_),
		.text_in_94_(text_in_94_),
		.text_in_95_(text_in_95_),
		.text_in_96_(text_in_96_),
		.text_in_97_(text_in_97_),
		.text_in_98_(text_in_98_),
		.text_in_99_(text_in_99_),
		.text_in_100_(text_in_100_),
		.text_in_101_(text_in_101_),
		.text_in_102_(text_in_102_),
		.text_in_103_(text_in_103_),
		.text_in_104_(text_in_104_),
		.text_in_105_(text_in_105_),
		.text_in_106_(text_in_106_),
		.text_in_107_(text_in_107_),
		.text_in_108_(text_in_108_),
		.text_in_109_(text_in_109_),
		.text_in_110_(text_in_110_),
		.text_in_111_(text_in_111_),
		.text_in_112_(text_in_112_),
		.text_in_113_(text_in_113_),
		.text_in_114_(text_in_114_),
		.text_in_115_(text_in_115_),
		.text_in_116_(text_in_116_),
		.text_in_117_(text_in_117_),
		.text_in_118_(text_in_118_),
		.text_in_119_(text_in_119_),
		.text_in_120_(text_in_120_),
		.text_in_121_(text_in_121_),
		.text_in_122_(text_in_122_),
		.text_in_123_(text_in_123_),
		.text_in_124_(text_in_124_),
		.text_in_125_(text_in_125_),
		.text_in_126_(text_in_126_),
		.text_in_127_(text_in_127_),
		.done(done_gfpga),
		.text_out_0_(text_out_0__gfpga),
		.text_out_1_(text_out_1__gfpga),
		.text_out_2_(text_out_2__gfpga),
		.text_out_3_(text_out_3__gfpga),
		.text_out_4_(text_out_4__gfpga),
		.text_out_5_(text_out_5__gfpga),
		.text_out_6_(text_out_6__gfpga),
		.text_out_7_(text_out_7__gfpga),
		.text_out_8_(text_out_8__gfpga),
		.text_out_9_(text_out_9__gfpga),
		.text_out_10_(text_out_10__gfpga),
		.text_out_11_(text_out_11__gfpga),
		.text_out_12_(text_out_12__gfpga),
		.text_out_13_(text_out_13__gfpga),
		.text_out_14_(text_out_14__gfpga),
		.text_out_15_(text_out_15__gfpga),
		.text_out_16_(text_out_16__gfpga),
		.text_out_17_(text_out_17__gfpga),
		.text_out_18_(text_out_18__gfpga),
		.text_out_19_(text_out_19__gfpga),
		.text_out_20_(text_out_20__gfpga),
		.text_out_21_(text_out_21__gfpga),
		.text_out_22_(text_out_22__gfpga),
		.text_out_23_(text_out_23__gfpga),
		.text_out_24_(text_out_24__gfpga),
		.text_out_25_(text_out_25__gfpga),
		.text_out_26_(text_out_26__gfpga),
		.text_out_27_(text_out_27__gfpga),
		.text_out_28_(text_out_28__gfpga),
		.text_out_29_(text_out_29__gfpga),
		.text_out_30_(text_out_30__gfpga),
		.text_out_31_(text_out_31__gfpga),
		.text_out_32_(text_out_32__gfpga),
		.text_out_33_(text_out_33__gfpga),
		.text_out_34_(text_out_34__gfpga),
		.text_out_35_(text_out_35__gfpga),
		.text_out_36_(text_out_36__gfpga),
		.text_out_37_(text_out_37__gfpga),
		.text_out_38_(text_out_38__gfpga),
		.text_out_39_(text_out_39__gfpga),
		.text_out_40_(text_out_40__gfpga),
		.text_out_41_(text_out_41__gfpga),
		.text_out_42_(text_out_42__gfpga),
		.text_out_43_(text_out_43__gfpga),
		.text_out_44_(text_out_44__gfpga),
		.text_out_45_(text_out_45__gfpga),
		.text_out_46_(text_out_46__gfpga),
		.text_out_47_(text_out_47__gfpga),
		.text_out_48_(text_out_48__gfpga),
		.text_out_49_(text_out_49__gfpga),
		.text_out_50_(text_out_50__gfpga),
		.text_out_51_(text_out_51__gfpga),
		.text_out_52_(text_out_52__gfpga),
		.text_out_53_(text_out_53__gfpga),
		.text_out_54_(text_out_54__gfpga),
		.text_out_55_(text_out_55__gfpga),
		.text_out_56_(text_out_56__gfpga),
		.text_out_57_(text_out_57__gfpga),
		.text_out_58_(text_out_58__gfpga),
		.text_out_59_(text_out_59__gfpga),
		.text_out_60_(text_out_60__gfpga),
		.text_out_61_(text_out_61__gfpga),
		.text_out_62_(text_out_62__gfpga),
		.text_out_63_(text_out_63__gfpga),
		.text_out_64_(text_out_64__gfpga),
		.text_out_65_(text_out_65__gfpga),
		.text_out_66_(text_out_66__gfpga),
		.text_out_67_(text_out_67__gfpga),
		.text_out_68_(text_out_68__gfpga),
		.text_out_69_(text_out_69__gfpga),
		.text_out_70_(text_out_70__gfpga),
		.text_out_71_(text_out_71__gfpga),
		.text_out_72_(text_out_72__gfpga),
		.text_out_73_(text_out_73__gfpga),
		.text_out_74_(text_out_74__gfpga),
		.text_out_75_(text_out_75__gfpga),
		.text_out_76_(text_out_76__gfpga),
		.text_out_77_(text_out_77__gfpga),
		.text_out_78_(text_out_78__gfpga),
		.text_out_79_(text_out_79__gfpga),
		.text_out_80_(text_out_80__gfpga),
		.text_out_81_(text_out_81__gfpga),
		.text_out_82_(text_out_82__gfpga),
		.text_out_83_(text_out_83__gfpga),
		.text_out_84_(text_out_84__gfpga),
		.text_out_85_(text_out_85__gfpga),
		.text_out_86_(text_out_86__gfpga),
		.text_out_87_(text_out_87__gfpga),
		.text_out_88_(text_out_88__gfpga),
		.text_out_89_(text_out_89__gfpga),
		.text_out_90_(text_out_90__gfpga),
		.text_out_91_(text_out_91__gfpga),
		.text_out_92_(text_out_92__gfpga),
		.text_out_93_(text_out_93__gfpga),
		.text_out_94_(text_out_94__gfpga),
		.text_out_95_(text_out_95__gfpga),
		.text_out_96_(text_out_96__gfpga),
		.text_out_97_(text_out_97__gfpga),
		.text_out_98_(text_out_98__gfpga),
		.text_out_99_(text_out_99__gfpga),
		.text_out_100_(text_out_100__gfpga),
		.text_out_101_(text_out_101__gfpga),
		.text_out_102_(text_out_102__gfpga),
		.text_out_103_(text_out_103__gfpga),
		.text_out_104_(text_out_104__gfpga),
		.text_out_105_(text_out_105__gfpga),
		.text_out_106_(text_out_106__gfpga),
		.text_out_107_(text_out_107__gfpga),
		.text_out_108_(text_out_108__gfpga),
		.text_out_109_(text_out_109__gfpga),
		.text_out_110_(text_out_110__gfpga),
		.text_out_111_(text_out_111__gfpga),
		.text_out_112_(text_out_112__gfpga),
		.text_out_113_(text_out_113__gfpga),
		.text_out_114_(text_out_114__gfpga),
		.text_out_115_(text_out_115__gfpga),
		.text_out_116_(text_out_116__gfpga),
		.text_out_117_(text_out_117__gfpga),
		.text_out_118_(text_out_118__gfpga),
		.text_out_119_(text_out_119__gfpga),
		.text_out_120_(text_out_120__gfpga),
		.text_out_121_(text_out_121__gfpga),
		.text_out_122_(text_out_122__gfpga),
		.text_out_123_(text_out_123__gfpga),
		.text_out_124_(text_out_124__gfpga),
		.text_out_125_(text_out_125__gfpga),
		.text_out_126_(text_out_126__gfpga),
		.text_out_127_(text_out_127__gfpga)
	);
// ----- End FPGA Fabric Instanication -------

// ----- Reference Benchmark Instanication -------
	aes_cipher_top REF_DUT(
		.clk(clk),
		.rst(rst),
		.ld(ld),
		.key_0_(key_0_),
		.key_1_(key_1_),
		.key_2_(key_2_),
		.key_3_(key_3_),
		.key_4_(key_4_),
		.key_5_(key_5_),
		.key_6_(key_6_),
		.key_7_(key_7_),
		.key_8_(key_8_),
		.key_9_(key_9_),
		.key_10_(key_10_),
		.key_11_(key_11_),
		.key_12_(key_12_),
		.key_13_(key_13_),
		.key_14_(key_14_),
		.key_15_(key_15_),
		.key_16_(key_16_),
		.key_17_(key_17_),
		.key_18_(key_18_),
		.key_19_(key_19_),
		.key_20_(key_20_),
		.key_21_(key_21_),
		.key_22_(key_22_),
		.key_23_(key_23_),
		.key_24_(key_24_),
		.key_25_(key_25_),
		.key_26_(key_26_),
		.key_27_(key_27_),
		.key_28_(key_28_),
		.key_29_(key_29_),
		.key_30_(key_30_),
		.key_31_(key_31_),
		.key_32_(key_32_),
		.key_33_(key_33_),
		.key_34_(key_34_),
		.key_35_(key_35_),
		.key_36_(key_36_),
		.key_37_(key_37_),
		.key_38_(key_38_),
		.key_39_(key_39_),
		.key_40_(key_40_),
		.key_41_(key_41_),
		.key_42_(key_42_),
		.key_43_(key_43_),
		.key_44_(key_44_),
		.key_45_(key_45_),
		.key_46_(key_46_),
		.key_47_(key_47_),
		.key_48_(key_48_),
		.key_49_(key_49_),
		.key_50_(key_50_),
		.key_51_(key_51_),
		.key_52_(key_52_),
		.key_53_(key_53_),
		.key_54_(key_54_),
		.key_55_(key_55_),
		.key_56_(key_56_),
		.key_57_(key_57_),
		.key_58_(key_58_),
		.key_59_(key_59_),
		.key_60_(key_60_),
		.key_61_(key_61_),
		.key_62_(key_62_),
		.key_63_(key_63_),
		.key_64_(key_64_),
		.key_65_(key_65_),
		.key_66_(key_66_),
		.key_67_(key_67_),
		.key_68_(key_68_),
		.key_69_(key_69_),
		.key_70_(key_70_),
		.key_71_(key_71_),
		.key_72_(key_72_),
		.key_73_(key_73_),
		.key_74_(key_74_),
		.key_75_(key_75_),
		.key_76_(key_76_),
		.key_77_(key_77_),
		.key_78_(key_78_),
		.key_79_(key_79_),
		.key_80_(key_80_),
		.key_81_(key_81_),
		.key_82_(key_82_),
		.key_83_(key_83_),
		.key_84_(key_84_),
		.key_85_(key_85_),
		.key_86_(key_86_),
		.key_87_(key_87_),
		.key_88_(key_88_),
		.key_89_(key_89_),
		.key_90_(key_90_),
		.key_91_(key_91_),
		.key_92_(key_92_),
		.key_93_(key_93_),
		.key_94_(key_94_),
		.key_95_(key_95_),
		.key_96_(key_96_),
		.key_97_(key_97_),
		.key_98_(key_98_),
		.key_99_(key_99_),
		.key_100_(key_100_),
		.key_101_(key_101_),
		.key_102_(key_102_),
		.key_103_(key_103_),
		.key_104_(key_104_),
		.key_105_(key_105_),
		.key_106_(key_106_),
		.key_107_(key_107_),
		.key_108_(key_108_),
		.key_109_(key_109_),
		.key_110_(key_110_),
		.key_111_(key_111_),
		.key_112_(key_112_),
		.key_113_(key_113_),
		.key_114_(key_114_),
		.key_115_(key_115_),
		.key_116_(key_116_),
		.key_117_(key_117_),
		.key_118_(key_118_),
		.key_119_(key_119_),
		.key_120_(key_120_),
		.key_121_(key_121_),
		.key_122_(key_122_),
		.key_123_(key_123_),
		.key_124_(key_124_),
		.key_125_(key_125_),
		.key_126_(key_126_),
		.key_127_(key_127_),
		.text_in_0_(text_in_0_),
		.text_in_1_(text_in_1_),
		.text_in_2_(text_in_2_),
		.text_in_3_(text_in_3_),
		.text_in_4_(text_in_4_),
		.text_in_5_(text_in_5_),
		.text_in_6_(text_in_6_),
		.text_in_7_(text_in_7_),
		.text_in_8_(text_in_8_),
		.text_in_9_(text_in_9_),
		.text_in_10_(text_in_10_),
		.text_in_11_(text_in_11_),
		.text_in_12_(text_in_12_),
		.text_in_13_(text_in_13_),
		.text_in_14_(text_in_14_),
		.text_in_15_(text_in_15_),
		.text_in_16_(text_in_16_),
		.text_in_17_(text_in_17_),
		.text_in_18_(text_in_18_),
		.text_in_19_(text_in_19_),
		.text_in_20_(text_in_20_),
		.text_in_21_(text_in_21_),
		.text_in_22_(text_in_22_),
		.text_in_23_(text_in_23_),
		.text_in_24_(text_in_24_),
		.text_in_25_(text_in_25_),
		.text_in_26_(text_in_26_),
		.text_in_27_(text_in_27_),
		.text_in_28_(text_in_28_),
		.text_in_29_(text_in_29_),
		.text_in_30_(text_in_30_),
		.text_in_31_(text_in_31_),
		.text_in_32_(text_in_32_),
		.text_in_33_(text_in_33_),
		.text_in_34_(text_in_34_),
		.text_in_35_(text_in_35_),
		.text_in_36_(text_in_36_),
		.text_in_37_(text_in_37_),
		.text_in_38_(text_in_38_),
		.text_in_39_(text_in_39_),
		.text_in_40_(text_in_40_),
		.text_in_41_(text_in_41_),
		.text_in_42_(text_in_42_),
		.text_in_43_(text_in_43_),
		.text_in_44_(text_in_44_),
		.text_in_45_(text_in_45_),
		.text_in_46_(text_in_46_),
		.text_in_47_(text_in_47_),
		.text_in_48_(text_in_48_),
		.text_in_49_(text_in_49_),
		.text_in_50_(text_in_50_),
		.text_in_51_(text_in_51_),
		.text_in_52_(text_in_52_),
		.text_in_53_(text_in_53_),
		.text_in_54_(text_in_54_),
		.text_in_55_(text_in_55_),
		.text_in_56_(text_in_56_),
		.text_in_57_(text_in_57_),
		.text_in_58_(text_in_58_),
		.text_in_59_(text_in_59_),
		.text_in_60_(text_in_60_),
		.text_in_61_(text_in_61_),
		.text_in_62_(text_in_62_),
		.text_in_63_(text_in_63_),
		.text_in_64_(text_in_64_),
		.text_in_65_(text_in_65_),
		.text_in_66_(text_in_66_),
		.text_in_67_(text_in_67_),
		.text_in_68_(text_in_68_),
		.text_in_69_(text_in_69_),
		.text_in_70_(text_in_70_),
		.text_in_71_(text_in_71_),
		.text_in_72_(text_in_72_),
		.text_in_73_(text_in_73_),
		.text_in_74_(text_in_74_),
		.text_in_75_(text_in_75_),
		.text_in_76_(text_in_76_),
		.text_in_77_(text_in_77_),
		.text_in_78_(text_in_78_),
		.text_in_79_(text_in_79_),
		.text_in_80_(text_in_80_),
		.text_in_81_(text_in_81_),
		.text_in_82_(text_in_82_),
		.text_in_83_(text_in_83_),
		.text_in_84_(text_in_84_),
		.text_in_85_(text_in_85_),
		.text_in_86_(text_in_86_),
		.text_in_87_(text_in_87_),
		.text_in_88_(text_in_88_),
		.text_in_89_(text_in_89_),
		.text_in_90_(text_in_90_),
		.text_in_91_(text_in_91_),
		.text_in_92_(text_in_92_),
		.text_in_93_(text_in_93_),
		.text_in_94_(text_in_94_),
		.text_in_95_(text_in_95_),
		.text_in_96_(text_in_96_),
		.text_in_97_(text_in_97_),
		.text_in_98_(text_in_98_),
		.text_in_99_(text_in_99_),
		.text_in_100_(text_in_100_),
		.text_in_101_(text_in_101_),
		.text_in_102_(text_in_102_),
		.text_in_103_(text_in_103_),
		.text_in_104_(text_in_104_),
		.text_in_105_(text_in_105_),
		.text_in_106_(text_in_106_),
		.text_in_107_(text_in_107_),
		.text_in_108_(text_in_108_),
		.text_in_109_(text_in_109_),
		.text_in_110_(text_in_110_),
		.text_in_111_(text_in_111_),
		.text_in_112_(text_in_112_),
		.text_in_113_(text_in_113_),
		.text_in_114_(text_in_114_),
		.text_in_115_(text_in_115_),
		.text_in_116_(text_in_116_),
		.text_in_117_(text_in_117_),
		.text_in_118_(text_in_118_),
		.text_in_119_(text_in_119_),
		.text_in_120_(text_in_120_),
		.text_in_121_(text_in_121_),
		.text_in_122_(text_in_122_),
		.text_in_123_(text_in_123_),
		.text_in_124_(text_in_124_),
		.text_in_125_(text_in_125_),
		.text_in_126_(text_in_126_),
		.text_in_127_(text_in_127_),
		.done(done_bench),
		.text_out_0_(text_out_0__bench),
		.text_out_1_(text_out_1__bench),
		.text_out_2_(text_out_2__bench),
		.text_out_3_(text_out_3__bench),
		.text_out_4_(text_out_4__bench),
		.text_out_5_(text_out_5__bench),
		.text_out_6_(text_out_6__bench),
		.text_out_7_(text_out_7__bench),
		.text_out_8_(text_out_8__bench),
		.text_out_9_(text_out_9__bench),
		.text_out_10_(text_out_10__bench),
		.text_out_11_(text_out_11__bench),
		.text_out_12_(text_out_12__bench),
		.text_out_13_(text_out_13__bench),
		.text_out_14_(text_out_14__bench),
		.text_out_15_(text_out_15__bench),
		.text_out_16_(text_out_16__bench),
		.text_out_17_(text_out_17__bench),
		.text_out_18_(text_out_18__bench),
		.text_out_19_(text_out_19__bench),
		.text_out_20_(text_out_20__bench),
		.text_out_21_(text_out_21__bench),
		.text_out_22_(text_out_22__bench),
		.text_out_23_(text_out_23__bench),
		.text_out_24_(text_out_24__bench),
		.text_out_25_(text_out_25__bench),
		.text_out_26_(text_out_26__bench),
		.text_out_27_(text_out_27__bench),
		.text_out_28_(text_out_28__bench),
		.text_out_29_(text_out_29__bench),
		.text_out_30_(text_out_30__bench),
		.text_out_31_(text_out_31__bench),
		.text_out_32_(text_out_32__bench),
		.text_out_33_(text_out_33__bench),
		.text_out_34_(text_out_34__bench),
		.text_out_35_(text_out_35__bench),
		.text_out_36_(text_out_36__bench),
		.text_out_37_(text_out_37__bench),
		.text_out_38_(text_out_38__bench),
		.text_out_39_(text_out_39__bench),
		.text_out_40_(text_out_40__bench),
		.text_out_41_(text_out_41__bench),
		.text_out_42_(text_out_42__bench),
		.text_out_43_(text_out_43__bench),
		.text_out_44_(text_out_44__bench),
		.text_out_45_(text_out_45__bench),
		.text_out_46_(text_out_46__bench),
		.text_out_47_(text_out_47__bench),
		.text_out_48_(text_out_48__bench),
		.text_out_49_(text_out_49__bench),
		.text_out_50_(text_out_50__bench),
		.text_out_51_(text_out_51__bench),
		.text_out_52_(text_out_52__bench),
		.text_out_53_(text_out_53__bench),
		.text_out_54_(text_out_54__bench),
		.text_out_55_(text_out_55__bench),
		.text_out_56_(text_out_56__bench),
		.text_out_57_(text_out_57__bench),
		.text_out_58_(text_out_58__bench),
		.text_out_59_(text_out_59__bench),
		.text_out_60_(text_out_60__bench),
		.text_out_61_(text_out_61__bench),
		.text_out_62_(text_out_62__bench),
		.text_out_63_(text_out_63__bench),
		.text_out_64_(text_out_64__bench),
		.text_out_65_(text_out_65__bench),
		.text_out_66_(text_out_66__bench),
		.text_out_67_(text_out_67__bench),
		.text_out_68_(text_out_68__bench),
		.text_out_69_(text_out_69__bench),
		.text_out_70_(text_out_70__bench),
		.text_out_71_(text_out_71__bench),
		.text_out_72_(text_out_72__bench),
		.text_out_73_(text_out_73__bench),
		.text_out_74_(text_out_74__bench),
		.text_out_75_(text_out_75__bench),
		.text_out_76_(text_out_76__bench),
		.text_out_77_(text_out_77__bench),
		.text_out_78_(text_out_78__bench),
		.text_out_79_(text_out_79__bench),
		.text_out_80_(text_out_80__bench),
		.text_out_81_(text_out_81__bench),
		.text_out_82_(text_out_82__bench),
		.text_out_83_(text_out_83__bench),
		.text_out_84_(text_out_84__bench),
		.text_out_85_(text_out_85__bench),
		.text_out_86_(text_out_86__bench),
		.text_out_87_(text_out_87__bench),
		.text_out_88_(text_out_88__bench),
		.text_out_89_(text_out_89__bench),
		.text_out_90_(text_out_90__bench),
		.text_out_91_(text_out_91__bench),
		.text_out_92_(text_out_92__bench),
		.text_out_93_(text_out_93__bench),
		.text_out_94_(text_out_94__bench),
		.text_out_95_(text_out_95__bench),
		.text_out_96_(text_out_96__bench),
		.text_out_97_(text_out_97__bench),
		.text_out_98_(text_out_98__bench),
		.text_out_99_(text_out_99__bench),
		.text_out_100_(text_out_100__bench),
		.text_out_101_(text_out_101__bench),
		.text_out_102_(text_out_102__bench),
		.text_out_103_(text_out_103__bench),
		.text_out_104_(text_out_104__bench),
		.text_out_105_(text_out_105__bench),
		.text_out_106_(text_out_106__bench),
		.text_out_107_(text_out_107__bench),
		.text_out_108_(text_out_108__bench),
		.text_out_109_(text_out_109__bench),
		.text_out_110_(text_out_110__bench),
		.text_out_111_(text_out_111__bench),
		.text_out_112_(text_out_112__bench),
		.text_out_113_(text_out_113__bench),
		.text_out_114_(text_out_114__bench),
		.text_out_115_(text_out_115__bench),
		.text_out_116_(text_out_116__bench),
		.text_out_117_(text_out_117__bench),
		.text_out_118_(text_out_118__bench),
		.text_out_119_(text_out_119__bench),
		.text_out_120_(text_out_120__bench),
		.text_out_121_(text_out_121__bench),
		.text_out_122_(text_out_122__bench),
		.text_out_123_(text_out_123__bench),
		.text_out_124_(text_out_124__bench),
		.text_out_125_(text_out_125__bench),
		.text_out_126_(text_out_126__bench),
		.text_out_127_(text_out_127__bench)
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
		rst <= 1'b0;
		ld <= 1'b0;
		key_0_ <= 1'b0;
		key_1_ <= 1'b0;
		key_2_ <= 1'b0;
		key_3_ <= 1'b0;
		key_4_ <= 1'b0;
		key_5_ <= 1'b0;
		key_6_ <= 1'b0;
		key_7_ <= 1'b0;
		key_8_ <= 1'b0;
		key_9_ <= 1'b0;
		key_10_ <= 1'b0;
		key_11_ <= 1'b0;
		key_12_ <= 1'b0;
		key_13_ <= 1'b0;
		key_14_ <= 1'b0;
		key_15_ <= 1'b0;
		key_16_ <= 1'b0;
		key_17_ <= 1'b0;
		key_18_ <= 1'b0;
		key_19_ <= 1'b0;
		key_20_ <= 1'b0;
		key_21_ <= 1'b0;
		key_22_ <= 1'b0;
		key_23_ <= 1'b0;
		key_24_ <= 1'b0;
		key_25_ <= 1'b0;
		key_26_ <= 1'b0;
		key_27_ <= 1'b0;
		key_28_ <= 1'b0;
		key_29_ <= 1'b0;
		key_30_ <= 1'b0;
		key_31_ <= 1'b0;
		key_32_ <= 1'b0;
		key_33_ <= 1'b0;
		key_34_ <= 1'b0;
		key_35_ <= 1'b0;
		key_36_ <= 1'b0;
		key_37_ <= 1'b0;
		key_38_ <= 1'b0;
		key_39_ <= 1'b0;
		key_40_ <= 1'b0;
		key_41_ <= 1'b0;
		key_42_ <= 1'b0;
		key_43_ <= 1'b0;
		key_44_ <= 1'b0;
		key_45_ <= 1'b0;
		key_46_ <= 1'b0;
		key_47_ <= 1'b0;
		key_48_ <= 1'b0;
		key_49_ <= 1'b0;
		key_50_ <= 1'b0;
		key_51_ <= 1'b0;
		key_52_ <= 1'b0;
		key_53_ <= 1'b0;
		key_54_ <= 1'b0;
		key_55_ <= 1'b0;
		key_56_ <= 1'b0;
		key_57_ <= 1'b0;
		key_58_ <= 1'b0;
		key_59_ <= 1'b0;
		key_60_ <= 1'b0;
		key_61_ <= 1'b0;
		key_62_ <= 1'b0;
		key_63_ <= 1'b0;
		key_64_ <= 1'b0;
		key_65_ <= 1'b0;
		key_66_ <= 1'b0;
		key_67_ <= 1'b0;
		key_68_ <= 1'b0;
		key_69_ <= 1'b0;
		key_70_ <= 1'b0;
		key_71_ <= 1'b0;
		key_72_ <= 1'b0;
		key_73_ <= 1'b0;
		key_74_ <= 1'b0;
		key_75_ <= 1'b0;
		key_76_ <= 1'b0;
		key_77_ <= 1'b0;
		key_78_ <= 1'b0;
		key_79_ <= 1'b0;
		key_80_ <= 1'b0;
		key_81_ <= 1'b0;
		key_82_ <= 1'b0;
		key_83_ <= 1'b0;
		key_84_ <= 1'b0;
		key_85_ <= 1'b0;
		key_86_ <= 1'b0;
		key_87_ <= 1'b0;
		key_88_ <= 1'b0;
		key_89_ <= 1'b0;
		key_90_ <= 1'b0;
		key_91_ <= 1'b0;
		key_92_ <= 1'b0;
		key_93_ <= 1'b0;
		key_94_ <= 1'b0;
		key_95_ <= 1'b0;
		key_96_ <= 1'b0;
		key_97_ <= 1'b0;
		key_98_ <= 1'b0;
		key_99_ <= 1'b0;
		key_100_ <= 1'b0;
		key_101_ <= 1'b0;
		key_102_ <= 1'b0;
		key_103_ <= 1'b0;
		key_104_ <= 1'b0;
		key_105_ <= 1'b0;
		key_106_ <= 1'b0;
		key_107_ <= 1'b0;
		key_108_ <= 1'b0;
		key_109_ <= 1'b0;
		key_110_ <= 1'b0;
		key_111_ <= 1'b0;
		key_112_ <= 1'b0;
		key_113_ <= 1'b0;
		key_114_ <= 1'b0;
		key_115_ <= 1'b0;
		key_116_ <= 1'b0;
		key_117_ <= 1'b0;
		key_118_ <= 1'b0;
		key_119_ <= 1'b0;
		key_120_ <= 1'b0;
		key_121_ <= 1'b0;
		key_122_ <= 1'b0;
		key_123_ <= 1'b0;
		key_124_ <= 1'b0;
		key_125_ <= 1'b0;
		key_126_ <= 1'b0;
		key_127_ <= 1'b0;
		text_in_0_ <= 1'b0;
		text_in_1_ <= 1'b0;
		text_in_2_ <= 1'b0;
		text_in_3_ <= 1'b0;
		text_in_4_ <= 1'b0;
		text_in_5_ <= 1'b0;
		text_in_6_ <= 1'b0;
		text_in_7_ <= 1'b0;
		text_in_8_ <= 1'b0;
		text_in_9_ <= 1'b0;
		text_in_10_ <= 1'b0;
		text_in_11_ <= 1'b0;
		text_in_12_ <= 1'b0;
		text_in_13_ <= 1'b0;
		text_in_14_ <= 1'b0;
		text_in_15_ <= 1'b0;
		text_in_16_ <= 1'b0;
		text_in_17_ <= 1'b0;
		text_in_18_ <= 1'b0;
		text_in_19_ <= 1'b0;
		text_in_20_ <= 1'b0;
		text_in_21_ <= 1'b0;
		text_in_22_ <= 1'b0;
		text_in_23_ <= 1'b0;
		text_in_24_ <= 1'b0;
		text_in_25_ <= 1'b0;
		text_in_26_ <= 1'b0;
		text_in_27_ <= 1'b0;
		text_in_28_ <= 1'b0;
		text_in_29_ <= 1'b0;
		text_in_30_ <= 1'b0;
		text_in_31_ <= 1'b0;
		text_in_32_ <= 1'b0;
		text_in_33_ <= 1'b0;
		text_in_34_ <= 1'b0;
		text_in_35_ <= 1'b0;
		text_in_36_ <= 1'b0;
		text_in_37_ <= 1'b0;
		text_in_38_ <= 1'b0;
		text_in_39_ <= 1'b0;
		text_in_40_ <= 1'b0;
		text_in_41_ <= 1'b0;
		text_in_42_ <= 1'b0;
		text_in_43_ <= 1'b0;
		text_in_44_ <= 1'b0;
		text_in_45_ <= 1'b0;
		text_in_46_ <= 1'b0;
		text_in_47_ <= 1'b0;
		text_in_48_ <= 1'b0;
		text_in_49_ <= 1'b0;
		text_in_50_ <= 1'b0;
		text_in_51_ <= 1'b0;
		text_in_52_ <= 1'b0;
		text_in_53_ <= 1'b0;
		text_in_54_ <= 1'b0;
		text_in_55_ <= 1'b0;
		text_in_56_ <= 1'b0;
		text_in_57_ <= 1'b0;
		text_in_58_ <= 1'b0;
		text_in_59_ <= 1'b0;
		text_in_60_ <= 1'b0;
		text_in_61_ <= 1'b0;
		text_in_62_ <= 1'b0;
		text_in_63_ <= 1'b0;
		text_in_64_ <= 1'b0;
		text_in_65_ <= 1'b0;
		text_in_66_ <= 1'b0;
		text_in_67_ <= 1'b0;
		text_in_68_ <= 1'b0;
		text_in_69_ <= 1'b0;
		text_in_70_ <= 1'b0;
		text_in_71_ <= 1'b0;
		text_in_72_ <= 1'b0;
		text_in_73_ <= 1'b0;
		text_in_74_ <= 1'b0;
		text_in_75_ <= 1'b0;
		text_in_76_ <= 1'b0;
		text_in_77_ <= 1'b0;
		text_in_78_ <= 1'b0;
		text_in_79_ <= 1'b0;
		text_in_80_ <= 1'b0;
		text_in_81_ <= 1'b0;
		text_in_82_ <= 1'b0;
		text_in_83_ <= 1'b0;
		text_in_84_ <= 1'b0;
		text_in_85_ <= 1'b0;
		text_in_86_ <= 1'b0;
		text_in_87_ <= 1'b0;
		text_in_88_ <= 1'b0;
		text_in_89_ <= 1'b0;
		text_in_90_ <= 1'b0;
		text_in_91_ <= 1'b0;
		text_in_92_ <= 1'b0;
		text_in_93_ <= 1'b0;
		text_in_94_ <= 1'b0;
		text_in_95_ <= 1'b0;
		text_in_96_ <= 1'b0;
		text_in_97_ <= 1'b0;
		text_in_98_ <= 1'b0;
		text_in_99_ <= 1'b0;
		text_in_100_ <= 1'b0;
		text_in_101_ <= 1'b0;
		text_in_102_ <= 1'b0;
		text_in_103_ <= 1'b0;
		text_in_104_ <= 1'b0;
		text_in_105_ <= 1'b0;
		text_in_106_ <= 1'b0;
		text_in_107_ <= 1'b0;
		text_in_108_ <= 1'b0;
		text_in_109_ <= 1'b0;
		text_in_110_ <= 1'b0;
		text_in_111_ <= 1'b0;
		text_in_112_ <= 1'b0;
		text_in_113_ <= 1'b0;
		text_in_114_ <= 1'b0;
		text_in_115_ <= 1'b0;
		text_in_116_ <= 1'b0;
		text_in_117_ <= 1'b0;
		text_in_118_ <= 1'b0;
		text_in_119_ <= 1'b0;
		text_in_120_ <= 1'b0;
		text_in_121_ <= 1'b0;
		text_in_122_ <= 1'b0;
		text_in_123_ <= 1'b0;
		text_in_124_ <= 1'b0;
		text_in_125_ <= 1'b0;
		text_in_126_ <= 1'b0;
		text_in_127_ <= 1'b0;

		done_flag[0] <= 1'b0;
		text_out_0__flag[0] <= 1'b0;
		text_out_1__flag[0] <= 1'b0;
		text_out_2__flag[0] <= 1'b0;
		text_out_3__flag[0] <= 1'b0;
		text_out_4__flag[0] <= 1'b0;
		text_out_5__flag[0] <= 1'b0;
		text_out_6__flag[0] <= 1'b0;
		text_out_7__flag[0] <= 1'b0;
		text_out_8__flag[0] <= 1'b0;
		text_out_9__flag[0] <= 1'b0;
		text_out_10__flag[0] <= 1'b0;
		text_out_11__flag[0] <= 1'b0;
		text_out_12__flag[0] <= 1'b0;
		text_out_13__flag[0] <= 1'b0;
		text_out_14__flag[0] <= 1'b0;
		text_out_15__flag[0] <= 1'b0;
		text_out_16__flag[0] <= 1'b0;
		text_out_17__flag[0] <= 1'b0;
		text_out_18__flag[0] <= 1'b0;
		text_out_19__flag[0] <= 1'b0;
		text_out_20__flag[0] <= 1'b0;
		text_out_21__flag[0] <= 1'b0;
		text_out_22__flag[0] <= 1'b0;
		text_out_23__flag[0] <= 1'b0;
		text_out_24__flag[0] <= 1'b0;
		text_out_25__flag[0] <= 1'b0;
		text_out_26__flag[0] <= 1'b0;
		text_out_27__flag[0] <= 1'b0;
		text_out_28__flag[0] <= 1'b0;
		text_out_29__flag[0] <= 1'b0;
		text_out_30__flag[0] <= 1'b0;
		text_out_31__flag[0] <= 1'b0;
		text_out_32__flag[0] <= 1'b0;
		text_out_33__flag[0] <= 1'b0;
		text_out_34__flag[0] <= 1'b0;
		text_out_35__flag[0] <= 1'b0;
		text_out_36__flag[0] <= 1'b0;
		text_out_37__flag[0] <= 1'b0;
		text_out_38__flag[0] <= 1'b0;
		text_out_39__flag[0] <= 1'b0;
		text_out_40__flag[0] <= 1'b0;
		text_out_41__flag[0] <= 1'b0;
		text_out_42__flag[0] <= 1'b0;
		text_out_43__flag[0] <= 1'b0;
		text_out_44__flag[0] <= 1'b0;
		text_out_45__flag[0] <= 1'b0;
		text_out_46__flag[0] <= 1'b0;
		text_out_47__flag[0] <= 1'b0;
		text_out_48__flag[0] <= 1'b0;
		text_out_49__flag[0] <= 1'b0;
		text_out_50__flag[0] <= 1'b0;
		text_out_51__flag[0] <= 1'b0;
		text_out_52__flag[0] <= 1'b0;
		text_out_53__flag[0] <= 1'b0;
		text_out_54__flag[0] <= 1'b0;
		text_out_55__flag[0] <= 1'b0;
		text_out_56__flag[0] <= 1'b0;
		text_out_57__flag[0] <= 1'b0;
		text_out_58__flag[0] <= 1'b0;
		text_out_59__flag[0] <= 1'b0;
		text_out_60__flag[0] <= 1'b0;
		text_out_61__flag[0] <= 1'b0;
		text_out_62__flag[0] <= 1'b0;
		text_out_63__flag[0] <= 1'b0;
		text_out_64__flag[0] <= 1'b0;
		text_out_65__flag[0] <= 1'b0;
		text_out_66__flag[0] <= 1'b0;
		text_out_67__flag[0] <= 1'b0;
		text_out_68__flag[0] <= 1'b0;
		text_out_69__flag[0] <= 1'b0;
		text_out_70__flag[0] <= 1'b0;
		text_out_71__flag[0] <= 1'b0;
		text_out_72__flag[0] <= 1'b0;
		text_out_73__flag[0] <= 1'b0;
		text_out_74__flag[0] <= 1'b0;
		text_out_75__flag[0] <= 1'b0;
		text_out_76__flag[0] <= 1'b0;
		text_out_77__flag[0] <= 1'b0;
		text_out_78__flag[0] <= 1'b0;
		text_out_79__flag[0] <= 1'b0;
		text_out_80__flag[0] <= 1'b0;
		text_out_81__flag[0] <= 1'b0;
		text_out_82__flag[0] <= 1'b0;
		text_out_83__flag[0] <= 1'b0;
		text_out_84__flag[0] <= 1'b0;
		text_out_85__flag[0] <= 1'b0;
		text_out_86__flag[0] <= 1'b0;
		text_out_87__flag[0] <= 1'b0;
		text_out_88__flag[0] <= 1'b0;
		text_out_89__flag[0] <= 1'b0;
		text_out_90__flag[0] <= 1'b0;
		text_out_91__flag[0] <= 1'b0;
		text_out_92__flag[0] <= 1'b0;
		text_out_93__flag[0] <= 1'b0;
		text_out_94__flag[0] <= 1'b0;
		text_out_95__flag[0] <= 1'b0;
		text_out_96__flag[0] <= 1'b0;
		text_out_97__flag[0] <= 1'b0;
		text_out_98__flag[0] <= 1'b0;
		text_out_99__flag[0] <= 1'b0;
		text_out_100__flag[0] <= 1'b0;
		text_out_101__flag[0] <= 1'b0;
		text_out_102__flag[0] <= 1'b0;
		text_out_103__flag[0] <= 1'b0;
		text_out_104__flag[0] <= 1'b0;
		text_out_105__flag[0] <= 1'b0;
		text_out_106__flag[0] <= 1'b0;
		text_out_107__flag[0] <= 1'b0;
		text_out_108__flag[0] <= 1'b0;
		text_out_109__flag[0] <= 1'b0;
		text_out_110__flag[0] <= 1'b0;
		text_out_111__flag[0] <= 1'b0;
		text_out_112__flag[0] <= 1'b0;
		text_out_113__flag[0] <= 1'b0;
		text_out_114__flag[0] <= 1'b0;
		text_out_115__flag[0] <= 1'b0;
		text_out_116__flag[0] <= 1'b0;
		text_out_117__flag[0] <= 1'b0;
		text_out_118__flag[0] <= 1'b0;
		text_out_119__flag[0] <= 1'b0;
		text_out_120__flag[0] <= 1'b0;
		text_out_121__flag[0] <= 1'b0;
		text_out_122__flag[0] <= 1'b0;
		text_out_123__flag[0] <= 1'b0;
		text_out_124__flag[0] <= 1'b0;
		text_out_125__flag[0] <= 1'b0;
		text_out_126__flag[0] <= 1'b0;
		text_out_127__flag[0] <= 1'b0;
	end

// ----- Input Stimulus -------
	always@(negedge clk[0]) begin
		rst <= $random;
		ld <= $random;
		key_0_ <= $random;
		key_1_ <= $random;
		key_2_ <= $random;
		key_3_ <= $random;
		key_4_ <= $random;
		key_5_ <= $random;
		key_6_ <= $random;
		key_7_ <= $random;
		key_8_ <= $random;
		key_9_ <= $random;
		key_10_ <= $random;
		key_11_ <= $random;
		key_12_ <= $random;
		key_13_ <= $random;
		key_14_ <= $random;
		key_15_ <= $random;
		key_16_ <= $random;
		key_17_ <= $random;
		key_18_ <= $random;
		key_19_ <= $random;
		key_20_ <= $random;
		key_21_ <= $random;
		key_22_ <= $random;
		key_23_ <= $random;
		key_24_ <= $random;
		key_25_ <= $random;
		key_26_ <= $random;
		key_27_ <= $random;
		key_28_ <= $random;
		key_29_ <= $random;
		key_30_ <= $random;
		key_31_ <= $random;
		key_32_ <= $random;
		key_33_ <= $random;
		key_34_ <= $random;
		key_35_ <= $random;
		key_36_ <= $random;
		key_37_ <= $random;
		key_38_ <= $random;
		key_39_ <= $random;
		key_40_ <= $random;
		key_41_ <= $random;
		key_42_ <= $random;
		key_43_ <= $random;
		key_44_ <= $random;
		key_45_ <= $random;
		key_46_ <= $random;
		key_47_ <= $random;
		key_48_ <= $random;
		key_49_ <= $random;
		key_50_ <= $random;
		key_51_ <= $random;
		key_52_ <= $random;
		key_53_ <= $random;
		key_54_ <= $random;
		key_55_ <= $random;
		key_56_ <= $random;
		key_57_ <= $random;
		key_58_ <= $random;
		key_59_ <= $random;
		key_60_ <= $random;
		key_61_ <= $random;
		key_62_ <= $random;
		key_63_ <= $random;
		key_64_ <= $random;
		key_65_ <= $random;
		key_66_ <= $random;
		key_67_ <= $random;
		key_68_ <= $random;
		key_69_ <= $random;
		key_70_ <= $random;
		key_71_ <= $random;
		key_72_ <= $random;
		key_73_ <= $random;
		key_74_ <= $random;
		key_75_ <= $random;
		key_76_ <= $random;
		key_77_ <= $random;
		key_78_ <= $random;
		key_79_ <= $random;
		key_80_ <= $random;
		key_81_ <= $random;
		key_82_ <= $random;
		key_83_ <= $random;
		key_84_ <= $random;
		key_85_ <= $random;
		key_86_ <= $random;
		key_87_ <= $random;
		key_88_ <= $random;
		key_89_ <= $random;
		key_90_ <= $random;
		key_91_ <= $random;
		key_92_ <= $random;
		key_93_ <= $random;
		key_94_ <= $random;
		key_95_ <= $random;
		key_96_ <= $random;
		key_97_ <= $random;
		key_98_ <= $random;
		key_99_ <= $random;
		key_100_ <= $random;
		key_101_ <= $random;
		key_102_ <= $random;
		key_103_ <= $random;
		key_104_ <= $random;
		key_105_ <= $random;
		key_106_ <= $random;
		key_107_ <= $random;
		key_108_ <= $random;
		key_109_ <= $random;
		key_110_ <= $random;
		key_111_ <= $random;
		key_112_ <= $random;
		key_113_ <= $random;
		key_114_ <= $random;
		key_115_ <= $random;
		key_116_ <= $random;
		key_117_ <= $random;
		key_118_ <= $random;
		key_119_ <= $random;
		key_120_ <= $random;
		key_121_ <= $random;
		key_122_ <= $random;
		key_123_ <= $random;
		key_124_ <= $random;
		key_125_ <= $random;
		key_126_ <= $random;
		key_127_ <= $random;
		text_in_0_ <= $random;
		text_in_1_ <= $random;
		text_in_2_ <= $random;
		text_in_3_ <= $random;
		text_in_4_ <= $random;
		text_in_5_ <= $random;
		text_in_6_ <= $random;
		text_in_7_ <= $random;
		text_in_8_ <= $random;
		text_in_9_ <= $random;
		text_in_10_ <= $random;
		text_in_11_ <= $random;
		text_in_12_ <= $random;
		text_in_13_ <= $random;
		text_in_14_ <= $random;
		text_in_15_ <= $random;
		text_in_16_ <= $random;
		text_in_17_ <= $random;
		text_in_18_ <= $random;
		text_in_19_ <= $random;
		text_in_20_ <= $random;
		text_in_21_ <= $random;
		text_in_22_ <= $random;
		text_in_23_ <= $random;
		text_in_24_ <= $random;
		text_in_25_ <= $random;
		text_in_26_ <= $random;
		text_in_27_ <= $random;
		text_in_28_ <= $random;
		text_in_29_ <= $random;
		text_in_30_ <= $random;
		text_in_31_ <= $random;
		text_in_32_ <= $random;
		text_in_33_ <= $random;
		text_in_34_ <= $random;
		text_in_35_ <= $random;
		text_in_36_ <= $random;
		text_in_37_ <= $random;
		text_in_38_ <= $random;
		text_in_39_ <= $random;
		text_in_40_ <= $random;
		text_in_41_ <= $random;
		text_in_42_ <= $random;
		text_in_43_ <= $random;
		text_in_44_ <= $random;
		text_in_45_ <= $random;
		text_in_46_ <= $random;
		text_in_47_ <= $random;
		text_in_48_ <= $random;
		text_in_49_ <= $random;
		text_in_50_ <= $random;
		text_in_51_ <= $random;
		text_in_52_ <= $random;
		text_in_53_ <= $random;
		text_in_54_ <= $random;
		text_in_55_ <= $random;
		text_in_56_ <= $random;
		text_in_57_ <= $random;
		text_in_58_ <= $random;
		text_in_59_ <= $random;
		text_in_60_ <= $random;
		text_in_61_ <= $random;
		text_in_62_ <= $random;
		text_in_63_ <= $random;
		text_in_64_ <= $random;
		text_in_65_ <= $random;
		text_in_66_ <= $random;
		text_in_67_ <= $random;
		text_in_68_ <= $random;
		text_in_69_ <= $random;
		text_in_70_ <= $random;
		text_in_71_ <= $random;
		text_in_72_ <= $random;
		text_in_73_ <= $random;
		text_in_74_ <= $random;
		text_in_75_ <= $random;
		text_in_76_ <= $random;
		text_in_77_ <= $random;
		text_in_78_ <= $random;
		text_in_79_ <= $random;
		text_in_80_ <= $random;
		text_in_81_ <= $random;
		text_in_82_ <= $random;
		text_in_83_ <= $random;
		text_in_84_ <= $random;
		text_in_85_ <= $random;
		text_in_86_ <= $random;
		text_in_87_ <= $random;
		text_in_88_ <= $random;
		text_in_89_ <= $random;
		text_in_90_ <= $random;
		text_in_91_ <= $random;
		text_in_92_ <= $random;
		text_in_93_ <= $random;
		text_in_94_ <= $random;
		text_in_95_ <= $random;
		text_in_96_ <= $random;
		text_in_97_ <= $random;
		text_in_98_ <= $random;
		text_in_99_ <= $random;
		text_in_100_ <= $random;
		text_in_101_ <= $random;
		text_in_102_ <= $random;
		text_in_103_ <= $random;
		text_in_104_ <= $random;
		text_in_105_ <= $random;
		text_in_106_ <= $random;
		text_in_107_ <= $random;
		text_in_108_ <= $random;
		text_in_109_ <= $random;
		text_in_110_ <= $random;
		text_in_111_ <= $random;
		text_in_112_ <= $random;
		text_in_113_ <= $random;
		text_in_114_ <= $random;
		text_in_115_ <= $random;
		text_in_116_ <= $random;
		text_in_117_ <= $random;
		text_in_118_ <= $random;
		text_in_119_ <= $random;
		text_in_120_ <= $random;
		text_in_121_ <= $random;
		text_in_122_ <= $random;
		text_in_123_ <= $random;
		text_in_124_ <= $random;
		text_in_125_ <= $random;
		text_in_126_ <= $random;
		text_in_127_ <= $random;
	end

// ----- Begin checking output vectors -------
// ----- Skip the first falling edge of clock, it is for initialization -------
	reg [0:0] sim_start;

	always@(negedge clk[0]) begin
		if (1'b1 == sim_start[0]) begin
			sim_start[0] <= ~sim_start[0];
		end else 
begin
			if(!(done_gfpga === done_bench) && !(done_bench === 1'bx)) begin
				done_flag <= 1'b1;
			end else begin
				done_flag<= 1'b0;
			end
			if(!(text_out_0__gfpga === text_out_0__bench) && !(text_out_0__bench === 1'bx)) begin
				text_out_0__flag <= 1'b1;
			end else begin
				text_out_0__flag<= 1'b0;
			end
			if(!(text_out_1__gfpga === text_out_1__bench) && !(text_out_1__bench === 1'bx)) begin
				text_out_1__flag <= 1'b1;
			end else begin
				text_out_1__flag<= 1'b0;
			end
			if(!(text_out_2__gfpga === text_out_2__bench) && !(text_out_2__bench === 1'bx)) begin
				text_out_2__flag <= 1'b1;
			end else begin
				text_out_2__flag<= 1'b0;
			end
			if(!(text_out_3__gfpga === text_out_3__bench) && !(text_out_3__bench === 1'bx)) begin
				text_out_3__flag <= 1'b1;
			end else begin
				text_out_3__flag<= 1'b0;
			end
			if(!(text_out_4__gfpga === text_out_4__bench) && !(text_out_4__bench === 1'bx)) begin
				text_out_4__flag <= 1'b1;
			end else begin
				text_out_4__flag<= 1'b0;
			end
			if(!(text_out_5__gfpga === text_out_5__bench) && !(text_out_5__bench === 1'bx)) begin
				text_out_5__flag <= 1'b1;
			end else begin
				text_out_5__flag<= 1'b0;
			end
			if(!(text_out_6__gfpga === text_out_6__bench) && !(text_out_6__bench === 1'bx)) begin
				text_out_6__flag <= 1'b1;
			end else begin
				text_out_6__flag<= 1'b0;
			end
			if(!(text_out_7__gfpga === text_out_7__bench) && !(text_out_7__bench === 1'bx)) begin
				text_out_7__flag <= 1'b1;
			end else begin
				text_out_7__flag<= 1'b0;
			end
			if(!(text_out_8__gfpga === text_out_8__bench) && !(text_out_8__bench === 1'bx)) begin
				text_out_8__flag <= 1'b1;
			end else begin
				text_out_8__flag<= 1'b0;
			end
			if(!(text_out_9__gfpga === text_out_9__bench) && !(text_out_9__bench === 1'bx)) begin
				text_out_9__flag <= 1'b1;
			end else begin
				text_out_9__flag<= 1'b0;
			end
			if(!(text_out_10__gfpga === text_out_10__bench) && !(text_out_10__bench === 1'bx)) begin
				text_out_10__flag <= 1'b1;
			end else begin
				text_out_10__flag<= 1'b0;
			end
			if(!(text_out_11__gfpga === text_out_11__bench) && !(text_out_11__bench === 1'bx)) begin
				text_out_11__flag <= 1'b1;
			end else begin
				text_out_11__flag<= 1'b0;
			end
			if(!(text_out_12__gfpga === text_out_12__bench) && !(text_out_12__bench === 1'bx)) begin
				text_out_12__flag <= 1'b1;
			end else begin
				text_out_12__flag<= 1'b0;
			end
			if(!(text_out_13__gfpga === text_out_13__bench) && !(text_out_13__bench === 1'bx)) begin
				text_out_13__flag <= 1'b1;
			end else begin
				text_out_13__flag<= 1'b0;
			end
			if(!(text_out_14__gfpga === text_out_14__bench) && !(text_out_14__bench === 1'bx)) begin
				text_out_14__flag <= 1'b1;
			end else begin
				text_out_14__flag<= 1'b0;
			end
			if(!(text_out_15__gfpga === text_out_15__bench) && !(text_out_15__bench === 1'bx)) begin
				text_out_15__flag <= 1'b1;
			end else begin
				text_out_15__flag<= 1'b0;
			end
			if(!(text_out_16__gfpga === text_out_16__bench) && !(text_out_16__bench === 1'bx)) begin
				text_out_16__flag <= 1'b1;
			end else begin
				text_out_16__flag<= 1'b0;
			end
			if(!(text_out_17__gfpga === text_out_17__bench) && !(text_out_17__bench === 1'bx)) begin
				text_out_17__flag <= 1'b1;
			end else begin
				text_out_17__flag<= 1'b0;
			end
			if(!(text_out_18__gfpga === text_out_18__bench) && !(text_out_18__bench === 1'bx)) begin
				text_out_18__flag <= 1'b1;
			end else begin
				text_out_18__flag<= 1'b0;
			end
			if(!(text_out_19__gfpga === text_out_19__bench) && !(text_out_19__bench === 1'bx)) begin
				text_out_19__flag <= 1'b1;
			end else begin
				text_out_19__flag<= 1'b0;
			end
			if(!(text_out_20__gfpga === text_out_20__bench) && !(text_out_20__bench === 1'bx)) begin
				text_out_20__flag <= 1'b1;
			end else begin
				text_out_20__flag<= 1'b0;
			end
			if(!(text_out_21__gfpga === text_out_21__bench) && !(text_out_21__bench === 1'bx)) begin
				text_out_21__flag <= 1'b1;
			end else begin
				text_out_21__flag<= 1'b0;
			end
			if(!(text_out_22__gfpga === text_out_22__bench) && !(text_out_22__bench === 1'bx)) begin
				text_out_22__flag <= 1'b1;
			end else begin
				text_out_22__flag<= 1'b0;
			end
			if(!(text_out_23__gfpga === text_out_23__bench) && !(text_out_23__bench === 1'bx)) begin
				text_out_23__flag <= 1'b1;
			end else begin
				text_out_23__flag<= 1'b0;
			end
			if(!(text_out_24__gfpga === text_out_24__bench) && !(text_out_24__bench === 1'bx)) begin
				text_out_24__flag <= 1'b1;
			end else begin
				text_out_24__flag<= 1'b0;
			end
			if(!(text_out_25__gfpga === text_out_25__bench) && !(text_out_25__bench === 1'bx)) begin
				text_out_25__flag <= 1'b1;
			end else begin
				text_out_25__flag<= 1'b0;
			end
			if(!(text_out_26__gfpga === text_out_26__bench) && !(text_out_26__bench === 1'bx)) begin
				text_out_26__flag <= 1'b1;
			end else begin
				text_out_26__flag<= 1'b0;
			end
			if(!(text_out_27__gfpga === text_out_27__bench) && !(text_out_27__bench === 1'bx)) begin
				text_out_27__flag <= 1'b1;
			end else begin
				text_out_27__flag<= 1'b0;
			end
			if(!(text_out_28__gfpga === text_out_28__bench) && !(text_out_28__bench === 1'bx)) begin
				text_out_28__flag <= 1'b1;
			end else begin
				text_out_28__flag<= 1'b0;
			end
			if(!(text_out_29__gfpga === text_out_29__bench) && !(text_out_29__bench === 1'bx)) begin
				text_out_29__flag <= 1'b1;
			end else begin
				text_out_29__flag<= 1'b0;
			end
			if(!(text_out_30__gfpga === text_out_30__bench) && !(text_out_30__bench === 1'bx)) begin
				text_out_30__flag <= 1'b1;
			end else begin
				text_out_30__flag<= 1'b0;
			end
			if(!(text_out_31__gfpga === text_out_31__bench) && !(text_out_31__bench === 1'bx)) begin
				text_out_31__flag <= 1'b1;
			end else begin
				text_out_31__flag<= 1'b0;
			end
			if(!(text_out_32__gfpga === text_out_32__bench) && !(text_out_32__bench === 1'bx)) begin
				text_out_32__flag <= 1'b1;
			end else begin
				text_out_32__flag<= 1'b0;
			end
			if(!(text_out_33__gfpga === text_out_33__bench) && !(text_out_33__bench === 1'bx)) begin
				text_out_33__flag <= 1'b1;
			end else begin
				text_out_33__flag<= 1'b0;
			end
			if(!(text_out_34__gfpga === text_out_34__bench) && !(text_out_34__bench === 1'bx)) begin
				text_out_34__flag <= 1'b1;
			end else begin
				text_out_34__flag<= 1'b0;
			end
			if(!(text_out_35__gfpga === text_out_35__bench) && !(text_out_35__bench === 1'bx)) begin
				text_out_35__flag <= 1'b1;
			end else begin
				text_out_35__flag<= 1'b0;
			end
			if(!(text_out_36__gfpga === text_out_36__bench) && !(text_out_36__bench === 1'bx)) begin
				text_out_36__flag <= 1'b1;
			end else begin
				text_out_36__flag<= 1'b0;
			end
			if(!(text_out_37__gfpga === text_out_37__bench) && !(text_out_37__bench === 1'bx)) begin
				text_out_37__flag <= 1'b1;
			end else begin
				text_out_37__flag<= 1'b0;
			end
			if(!(text_out_38__gfpga === text_out_38__bench) && !(text_out_38__bench === 1'bx)) begin
				text_out_38__flag <= 1'b1;
			end else begin
				text_out_38__flag<= 1'b0;
			end
			if(!(text_out_39__gfpga === text_out_39__bench) && !(text_out_39__bench === 1'bx)) begin
				text_out_39__flag <= 1'b1;
			end else begin
				text_out_39__flag<= 1'b0;
			end
			if(!(text_out_40__gfpga === text_out_40__bench) && !(text_out_40__bench === 1'bx)) begin
				text_out_40__flag <= 1'b1;
			end else begin
				text_out_40__flag<= 1'b0;
			end
			if(!(text_out_41__gfpga === text_out_41__bench) && !(text_out_41__bench === 1'bx)) begin
				text_out_41__flag <= 1'b1;
			end else begin
				text_out_41__flag<= 1'b0;
			end
			if(!(text_out_42__gfpga === text_out_42__bench) && !(text_out_42__bench === 1'bx)) begin
				text_out_42__flag <= 1'b1;
			end else begin
				text_out_42__flag<= 1'b0;
			end
			if(!(text_out_43__gfpga === text_out_43__bench) && !(text_out_43__bench === 1'bx)) begin
				text_out_43__flag <= 1'b1;
			end else begin
				text_out_43__flag<= 1'b0;
			end
			if(!(text_out_44__gfpga === text_out_44__bench) && !(text_out_44__bench === 1'bx)) begin
				text_out_44__flag <= 1'b1;
			end else begin
				text_out_44__flag<= 1'b0;
			end
			if(!(text_out_45__gfpga === text_out_45__bench) && !(text_out_45__bench === 1'bx)) begin
				text_out_45__flag <= 1'b1;
			end else begin
				text_out_45__flag<= 1'b0;
			end
			if(!(text_out_46__gfpga === text_out_46__bench) && !(text_out_46__bench === 1'bx)) begin
				text_out_46__flag <= 1'b1;
			end else begin
				text_out_46__flag<= 1'b0;
			end
			if(!(text_out_47__gfpga === text_out_47__bench) && !(text_out_47__bench === 1'bx)) begin
				text_out_47__flag <= 1'b1;
			end else begin
				text_out_47__flag<= 1'b0;
			end
			if(!(text_out_48__gfpga === text_out_48__bench) && !(text_out_48__bench === 1'bx)) begin
				text_out_48__flag <= 1'b1;
			end else begin
				text_out_48__flag<= 1'b0;
			end
			if(!(text_out_49__gfpga === text_out_49__bench) && !(text_out_49__bench === 1'bx)) begin
				text_out_49__flag <= 1'b1;
			end else begin
				text_out_49__flag<= 1'b0;
			end
			if(!(text_out_50__gfpga === text_out_50__bench) && !(text_out_50__bench === 1'bx)) begin
				text_out_50__flag <= 1'b1;
			end else begin
				text_out_50__flag<= 1'b0;
			end
			if(!(text_out_51__gfpga === text_out_51__bench) && !(text_out_51__bench === 1'bx)) begin
				text_out_51__flag <= 1'b1;
			end else begin
				text_out_51__flag<= 1'b0;
			end
			if(!(text_out_52__gfpga === text_out_52__bench) && !(text_out_52__bench === 1'bx)) begin
				text_out_52__flag <= 1'b1;
			end else begin
				text_out_52__flag<= 1'b0;
			end
			if(!(text_out_53__gfpga === text_out_53__bench) && !(text_out_53__bench === 1'bx)) begin
				text_out_53__flag <= 1'b1;
			end else begin
				text_out_53__flag<= 1'b0;
			end
			if(!(text_out_54__gfpga === text_out_54__bench) && !(text_out_54__bench === 1'bx)) begin
				text_out_54__flag <= 1'b1;
			end else begin
				text_out_54__flag<= 1'b0;
			end
			if(!(text_out_55__gfpga === text_out_55__bench) && !(text_out_55__bench === 1'bx)) begin
				text_out_55__flag <= 1'b1;
			end else begin
				text_out_55__flag<= 1'b0;
			end
			if(!(text_out_56__gfpga === text_out_56__bench) && !(text_out_56__bench === 1'bx)) begin
				text_out_56__flag <= 1'b1;
			end else begin
				text_out_56__flag<= 1'b0;
			end
			if(!(text_out_57__gfpga === text_out_57__bench) && !(text_out_57__bench === 1'bx)) begin
				text_out_57__flag <= 1'b1;
			end else begin
				text_out_57__flag<= 1'b0;
			end
			if(!(text_out_58__gfpga === text_out_58__bench) && !(text_out_58__bench === 1'bx)) begin
				text_out_58__flag <= 1'b1;
			end else begin
				text_out_58__flag<= 1'b0;
			end
			if(!(text_out_59__gfpga === text_out_59__bench) && !(text_out_59__bench === 1'bx)) begin
				text_out_59__flag <= 1'b1;
			end else begin
				text_out_59__flag<= 1'b0;
			end
			if(!(text_out_60__gfpga === text_out_60__bench) && !(text_out_60__bench === 1'bx)) begin
				text_out_60__flag <= 1'b1;
			end else begin
				text_out_60__flag<= 1'b0;
			end
			if(!(text_out_61__gfpga === text_out_61__bench) && !(text_out_61__bench === 1'bx)) begin
				text_out_61__flag <= 1'b1;
			end else begin
				text_out_61__flag<= 1'b0;
			end
			if(!(text_out_62__gfpga === text_out_62__bench) && !(text_out_62__bench === 1'bx)) begin
				text_out_62__flag <= 1'b1;
			end else begin
				text_out_62__flag<= 1'b0;
			end
			if(!(text_out_63__gfpga === text_out_63__bench) && !(text_out_63__bench === 1'bx)) begin
				text_out_63__flag <= 1'b1;
			end else begin
				text_out_63__flag<= 1'b0;
			end
			if(!(text_out_64__gfpga === text_out_64__bench) && !(text_out_64__bench === 1'bx)) begin
				text_out_64__flag <= 1'b1;
			end else begin
				text_out_64__flag<= 1'b0;
			end
			if(!(text_out_65__gfpga === text_out_65__bench) && !(text_out_65__bench === 1'bx)) begin
				text_out_65__flag <= 1'b1;
			end else begin
				text_out_65__flag<= 1'b0;
			end
			if(!(text_out_66__gfpga === text_out_66__bench) && !(text_out_66__bench === 1'bx)) begin
				text_out_66__flag <= 1'b1;
			end else begin
				text_out_66__flag<= 1'b0;
			end
			if(!(text_out_67__gfpga === text_out_67__bench) && !(text_out_67__bench === 1'bx)) begin
				text_out_67__flag <= 1'b1;
			end else begin
				text_out_67__flag<= 1'b0;
			end
			if(!(text_out_68__gfpga === text_out_68__bench) && !(text_out_68__bench === 1'bx)) begin
				text_out_68__flag <= 1'b1;
			end else begin
				text_out_68__flag<= 1'b0;
			end
			if(!(text_out_69__gfpga === text_out_69__bench) && !(text_out_69__bench === 1'bx)) begin
				text_out_69__flag <= 1'b1;
			end else begin
				text_out_69__flag<= 1'b0;
			end
			if(!(text_out_70__gfpga === text_out_70__bench) && !(text_out_70__bench === 1'bx)) begin
				text_out_70__flag <= 1'b1;
			end else begin
				text_out_70__flag<= 1'b0;
			end
			if(!(text_out_71__gfpga === text_out_71__bench) && !(text_out_71__bench === 1'bx)) begin
				text_out_71__flag <= 1'b1;
			end else begin
				text_out_71__flag<= 1'b0;
			end
			if(!(text_out_72__gfpga === text_out_72__bench) && !(text_out_72__bench === 1'bx)) begin
				text_out_72__flag <= 1'b1;
			end else begin
				text_out_72__flag<= 1'b0;
			end
			if(!(text_out_73__gfpga === text_out_73__bench) && !(text_out_73__bench === 1'bx)) begin
				text_out_73__flag <= 1'b1;
			end else begin
				text_out_73__flag<= 1'b0;
			end
			if(!(text_out_74__gfpga === text_out_74__bench) && !(text_out_74__bench === 1'bx)) begin
				text_out_74__flag <= 1'b1;
			end else begin
				text_out_74__flag<= 1'b0;
			end
			if(!(text_out_75__gfpga === text_out_75__bench) && !(text_out_75__bench === 1'bx)) begin
				text_out_75__flag <= 1'b1;
			end else begin
				text_out_75__flag<= 1'b0;
			end
			if(!(text_out_76__gfpga === text_out_76__bench) && !(text_out_76__bench === 1'bx)) begin
				text_out_76__flag <= 1'b1;
			end else begin
				text_out_76__flag<= 1'b0;
			end
			if(!(text_out_77__gfpga === text_out_77__bench) && !(text_out_77__bench === 1'bx)) begin
				text_out_77__flag <= 1'b1;
			end else begin
				text_out_77__flag<= 1'b0;
			end
			if(!(text_out_78__gfpga === text_out_78__bench) && !(text_out_78__bench === 1'bx)) begin
				text_out_78__flag <= 1'b1;
			end else begin
				text_out_78__flag<= 1'b0;
			end
			if(!(text_out_79__gfpga === text_out_79__bench) && !(text_out_79__bench === 1'bx)) begin
				text_out_79__flag <= 1'b1;
			end else begin
				text_out_79__flag<= 1'b0;
			end
			if(!(text_out_80__gfpga === text_out_80__bench) && !(text_out_80__bench === 1'bx)) begin
				text_out_80__flag <= 1'b1;
			end else begin
				text_out_80__flag<= 1'b0;
			end
			if(!(text_out_81__gfpga === text_out_81__bench) && !(text_out_81__bench === 1'bx)) begin
				text_out_81__flag <= 1'b1;
			end else begin
				text_out_81__flag<= 1'b0;
			end
			if(!(text_out_82__gfpga === text_out_82__bench) && !(text_out_82__bench === 1'bx)) begin
				text_out_82__flag <= 1'b1;
			end else begin
				text_out_82__flag<= 1'b0;
			end
			if(!(text_out_83__gfpga === text_out_83__bench) && !(text_out_83__bench === 1'bx)) begin
				text_out_83__flag <= 1'b1;
			end else begin
				text_out_83__flag<= 1'b0;
			end
			if(!(text_out_84__gfpga === text_out_84__bench) && !(text_out_84__bench === 1'bx)) begin
				text_out_84__flag <= 1'b1;
			end else begin
				text_out_84__flag<= 1'b0;
			end
			if(!(text_out_85__gfpga === text_out_85__bench) && !(text_out_85__bench === 1'bx)) begin
				text_out_85__flag <= 1'b1;
			end else begin
				text_out_85__flag<= 1'b0;
			end
			if(!(text_out_86__gfpga === text_out_86__bench) && !(text_out_86__bench === 1'bx)) begin
				text_out_86__flag <= 1'b1;
			end else begin
				text_out_86__flag<= 1'b0;
			end
			if(!(text_out_87__gfpga === text_out_87__bench) && !(text_out_87__bench === 1'bx)) begin
				text_out_87__flag <= 1'b1;
			end else begin
				text_out_87__flag<= 1'b0;
			end
			if(!(text_out_88__gfpga === text_out_88__bench) && !(text_out_88__bench === 1'bx)) begin
				text_out_88__flag <= 1'b1;
			end else begin
				text_out_88__flag<= 1'b0;
			end
			if(!(text_out_89__gfpga === text_out_89__bench) && !(text_out_89__bench === 1'bx)) begin
				text_out_89__flag <= 1'b1;
			end else begin
				text_out_89__flag<= 1'b0;
			end
			if(!(text_out_90__gfpga === text_out_90__bench) && !(text_out_90__bench === 1'bx)) begin
				text_out_90__flag <= 1'b1;
			end else begin
				text_out_90__flag<= 1'b0;
			end
			if(!(text_out_91__gfpga === text_out_91__bench) && !(text_out_91__bench === 1'bx)) begin
				text_out_91__flag <= 1'b1;
			end else begin
				text_out_91__flag<= 1'b0;
			end
			if(!(text_out_92__gfpga === text_out_92__bench) && !(text_out_92__bench === 1'bx)) begin
				text_out_92__flag <= 1'b1;
			end else begin
				text_out_92__flag<= 1'b0;
			end
			if(!(text_out_93__gfpga === text_out_93__bench) && !(text_out_93__bench === 1'bx)) begin
				text_out_93__flag <= 1'b1;
			end else begin
				text_out_93__flag<= 1'b0;
			end
			if(!(text_out_94__gfpga === text_out_94__bench) && !(text_out_94__bench === 1'bx)) begin
				text_out_94__flag <= 1'b1;
			end else begin
				text_out_94__flag<= 1'b0;
			end
			if(!(text_out_95__gfpga === text_out_95__bench) && !(text_out_95__bench === 1'bx)) begin
				text_out_95__flag <= 1'b1;
			end else begin
				text_out_95__flag<= 1'b0;
			end
			if(!(text_out_96__gfpga === text_out_96__bench) && !(text_out_96__bench === 1'bx)) begin
				text_out_96__flag <= 1'b1;
			end else begin
				text_out_96__flag<= 1'b0;
			end
			if(!(text_out_97__gfpga === text_out_97__bench) && !(text_out_97__bench === 1'bx)) begin
				text_out_97__flag <= 1'b1;
			end else begin
				text_out_97__flag<= 1'b0;
			end
			if(!(text_out_98__gfpga === text_out_98__bench) && !(text_out_98__bench === 1'bx)) begin
				text_out_98__flag <= 1'b1;
			end else begin
				text_out_98__flag<= 1'b0;
			end
			if(!(text_out_99__gfpga === text_out_99__bench) && !(text_out_99__bench === 1'bx)) begin
				text_out_99__flag <= 1'b1;
			end else begin
				text_out_99__flag<= 1'b0;
			end
			if(!(text_out_100__gfpga === text_out_100__bench) && !(text_out_100__bench === 1'bx)) begin
				text_out_100__flag <= 1'b1;
			end else begin
				text_out_100__flag<= 1'b0;
			end
			if(!(text_out_101__gfpga === text_out_101__bench) && !(text_out_101__bench === 1'bx)) begin
				text_out_101__flag <= 1'b1;
			end else begin
				text_out_101__flag<= 1'b0;
			end
			if(!(text_out_102__gfpga === text_out_102__bench) && !(text_out_102__bench === 1'bx)) begin
				text_out_102__flag <= 1'b1;
			end else begin
				text_out_102__flag<= 1'b0;
			end
			if(!(text_out_103__gfpga === text_out_103__bench) && !(text_out_103__bench === 1'bx)) begin
				text_out_103__flag <= 1'b1;
			end else begin
				text_out_103__flag<= 1'b0;
			end
			if(!(text_out_104__gfpga === text_out_104__bench) && !(text_out_104__bench === 1'bx)) begin
				text_out_104__flag <= 1'b1;
			end else begin
				text_out_104__flag<= 1'b0;
			end
			if(!(text_out_105__gfpga === text_out_105__bench) && !(text_out_105__bench === 1'bx)) begin
				text_out_105__flag <= 1'b1;
			end else begin
				text_out_105__flag<= 1'b0;
			end
			if(!(text_out_106__gfpga === text_out_106__bench) && !(text_out_106__bench === 1'bx)) begin
				text_out_106__flag <= 1'b1;
			end else begin
				text_out_106__flag<= 1'b0;
			end
			if(!(text_out_107__gfpga === text_out_107__bench) && !(text_out_107__bench === 1'bx)) begin
				text_out_107__flag <= 1'b1;
			end else begin
				text_out_107__flag<= 1'b0;
			end
			if(!(text_out_108__gfpga === text_out_108__bench) && !(text_out_108__bench === 1'bx)) begin
				text_out_108__flag <= 1'b1;
			end else begin
				text_out_108__flag<= 1'b0;
			end
			if(!(text_out_109__gfpga === text_out_109__bench) && !(text_out_109__bench === 1'bx)) begin
				text_out_109__flag <= 1'b1;
			end else begin
				text_out_109__flag<= 1'b0;
			end
			if(!(text_out_110__gfpga === text_out_110__bench) && !(text_out_110__bench === 1'bx)) begin
				text_out_110__flag <= 1'b1;
			end else begin
				text_out_110__flag<= 1'b0;
			end
			if(!(text_out_111__gfpga === text_out_111__bench) && !(text_out_111__bench === 1'bx)) begin
				text_out_111__flag <= 1'b1;
			end else begin
				text_out_111__flag<= 1'b0;
			end
			if(!(text_out_112__gfpga === text_out_112__bench) && !(text_out_112__bench === 1'bx)) begin
				text_out_112__flag <= 1'b1;
			end else begin
				text_out_112__flag<= 1'b0;
			end
			if(!(text_out_113__gfpga === text_out_113__bench) && !(text_out_113__bench === 1'bx)) begin
				text_out_113__flag <= 1'b1;
			end else begin
				text_out_113__flag<= 1'b0;
			end
			if(!(text_out_114__gfpga === text_out_114__bench) && !(text_out_114__bench === 1'bx)) begin
				text_out_114__flag <= 1'b1;
			end else begin
				text_out_114__flag<= 1'b0;
			end
			if(!(text_out_115__gfpga === text_out_115__bench) && !(text_out_115__bench === 1'bx)) begin
				text_out_115__flag <= 1'b1;
			end else begin
				text_out_115__flag<= 1'b0;
			end
			if(!(text_out_116__gfpga === text_out_116__bench) && !(text_out_116__bench === 1'bx)) begin
				text_out_116__flag <= 1'b1;
			end else begin
				text_out_116__flag<= 1'b0;
			end
			if(!(text_out_117__gfpga === text_out_117__bench) && !(text_out_117__bench === 1'bx)) begin
				text_out_117__flag <= 1'b1;
			end else begin
				text_out_117__flag<= 1'b0;
			end
			if(!(text_out_118__gfpga === text_out_118__bench) && !(text_out_118__bench === 1'bx)) begin
				text_out_118__flag <= 1'b1;
			end else begin
				text_out_118__flag<= 1'b0;
			end
			if(!(text_out_119__gfpga === text_out_119__bench) && !(text_out_119__bench === 1'bx)) begin
				text_out_119__flag <= 1'b1;
			end else begin
				text_out_119__flag<= 1'b0;
			end
			if(!(text_out_120__gfpga === text_out_120__bench) && !(text_out_120__bench === 1'bx)) begin
				text_out_120__flag <= 1'b1;
			end else begin
				text_out_120__flag<= 1'b0;
			end
			if(!(text_out_121__gfpga === text_out_121__bench) && !(text_out_121__bench === 1'bx)) begin
				text_out_121__flag <= 1'b1;
			end else begin
				text_out_121__flag<= 1'b0;
			end
			if(!(text_out_122__gfpga === text_out_122__bench) && !(text_out_122__bench === 1'bx)) begin
				text_out_122__flag <= 1'b1;
			end else begin
				text_out_122__flag<= 1'b0;
			end
			if(!(text_out_123__gfpga === text_out_123__bench) && !(text_out_123__bench === 1'bx)) begin
				text_out_123__flag <= 1'b1;
			end else begin
				text_out_123__flag<= 1'b0;
			end
			if(!(text_out_124__gfpga === text_out_124__bench) && !(text_out_124__bench === 1'bx)) begin
				text_out_124__flag <= 1'b1;
			end else begin
				text_out_124__flag<= 1'b0;
			end
			if(!(text_out_125__gfpga === text_out_125__bench) && !(text_out_125__bench === 1'bx)) begin
				text_out_125__flag <= 1'b1;
			end else begin
				text_out_125__flag<= 1'b0;
			end
			if(!(text_out_126__gfpga === text_out_126__bench) && !(text_out_126__bench === 1'bx)) begin
				text_out_126__flag <= 1'b1;
			end else begin
				text_out_126__flag<= 1'b0;
			end
			if(!(text_out_127__gfpga === text_out_127__bench) && !(text_out_127__bench === 1'bx)) begin
				text_out_127__flag <= 1'b1;
			end else begin
				text_out_127__flag<= 1'b0;
			end
		end
	end

	always@(posedge done_flag) begin
		if(done_flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on done_gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_0__flag) begin
		if(text_out_0__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_0__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_1__flag) begin
		if(text_out_1__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_1__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_2__flag) begin
		if(text_out_2__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_2__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_3__flag) begin
		if(text_out_3__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_3__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_4__flag) begin
		if(text_out_4__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_4__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_5__flag) begin
		if(text_out_5__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_5__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_6__flag) begin
		if(text_out_6__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_6__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_7__flag) begin
		if(text_out_7__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_7__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_8__flag) begin
		if(text_out_8__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_8__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_9__flag) begin
		if(text_out_9__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_9__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_10__flag) begin
		if(text_out_10__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_10__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_11__flag) begin
		if(text_out_11__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_11__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_12__flag) begin
		if(text_out_12__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_12__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_13__flag) begin
		if(text_out_13__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_13__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_14__flag) begin
		if(text_out_14__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_14__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_15__flag) begin
		if(text_out_15__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_15__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_16__flag) begin
		if(text_out_16__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_16__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_17__flag) begin
		if(text_out_17__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_17__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_18__flag) begin
		if(text_out_18__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_18__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_19__flag) begin
		if(text_out_19__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_19__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_20__flag) begin
		if(text_out_20__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_20__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_21__flag) begin
		if(text_out_21__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_21__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_22__flag) begin
		if(text_out_22__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_22__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_23__flag) begin
		if(text_out_23__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_23__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_24__flag) begin
		if(text_out_24__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_24__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_25__flag) begin
		if(text_out_25__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_25__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_26__flag) begin
		if(text_out_26__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_26__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_27__flag) begin
		if(text_out_27__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_27__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_28__flag) begin
		if(text_out_28__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_28__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_29__flag) begin
		if(text_out_29__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_29__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_30__flag) begin
		if(text_out_30__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_30__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_31__flag) begin
		if(text_out_31__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_31__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_32__flag) begin
		if(text_out_32__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_32__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_33__flag) begin
		if(text_out_33__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_33__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_34__flag) begin
		if(text_out_34__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_34__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_35__flag) begin
		if(text_out_35__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_35__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_36__flag) begin
		if(text_out_36__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_36__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_37__flag) begin
		if(text_out_37__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_37__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_38__flag) begin
		if(text_out_38__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_38__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_39__flag) begin
		if(text_out_39__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_39__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_40__flag) begin
		if(text_out_40__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_40__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_41__flag) begin
		if(text_out_41__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_41__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_42__flag) begin
		if(text_out_42__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_42__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_43__flag) begin
		if(text_out_43__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_43__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_44__flag) begin
		if(text_out_44__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_44__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_45__flag) begin
		if(text_out_45__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_45__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_46__flag) begin
		if(text_out_46__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_46__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_47__flag) begin
		if(text_out_47__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_47__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_48__flag) begin
		if(text_out_48__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_48__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_49__flag) begin
		if(text_out_49__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_49__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_50__flag) begin
		if(text_out_50__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_50__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_51__flag) begin
		if(text_out_51__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_51__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_52__flag) begin
		if(text_out_52__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_52__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_53__flag) begin
		if(text_out_53__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_53__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_54__flag) begin
		if(text_out_54__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_54__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_55__flag) begin
		if(text_out_55__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_55__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_56__flag) begin
		if(text_out_56__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_56__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_57__flag) begin
		if(text_out_57__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_57__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_58__flag) begin
		if(text_out_58__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_58__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_59__flag) begin
		if(text_out_59__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_59__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_60__flag) begin
		if(text_out_60__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_60__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_61__flag) begin
		if(text_out_61__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_61__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_62__flag) begin
		if(text_out_62__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_62__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_63__flag) begin
		if(text_out_63__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_63__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_64__flag) begin
		if(text_out_64__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_64__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_65__flag) begin
		if(text_out_65__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_65__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_66__flag) begin
		if(text_out_66__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_66__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_67__flag) begin
		if(text_out_67__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_67__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_68__flag) begin
		if(text_out_68__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_68__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_69__flag) begin
		if(text_out_69__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_69__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_70__flag) begin
		if(text_out_70__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_70__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_71__flag) begin
		if(text_out_71__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_71__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_72__flag) begin
		if(text_out_72__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_72__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_73__flag) begin
		if(text_out_73__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_73__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_74__flag) begin
		if(text_out_74__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_74__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_75__flag) begin
		if(text_out_75__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_75__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_76__flag) begin
		if(text_out_76__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_76__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_77__flag) begin
		if(text_out_77__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_77__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_78__flag) begin
		if(text_out_78__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_78__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_79__flag) begin
		if(text_out_79__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_79__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_80__flag) begin
		if(text_out_80__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_80__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_81__flag) begin
		if(text_out_81__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_81__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_82__flag) begin
		if(text_out_82__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_82__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_83__flag) begin
		if(text_out_83__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_83__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_84__flag) begin
		if(text_out_84__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_84__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_85__flag) begin
		if(text_out_85__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_85__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_86__flag) begin
		if(text_out_86__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_86__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_87__flag) begin
		if(text_out_87__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_87__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_88__flag) begin
		if(text_out_88__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_88__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_89__flag) begin
		if(text_out_89__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_89__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_90__flag) begin
		if(text_out_90__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_90__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_91__flag) begin
		if(text_out_91__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_91__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_92__flag) begin
		if(text_out_92__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_92__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_93__flag) begin
		if(text_out_93__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_93__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_94__flag) begin
		if(text_out_94__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_94__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_95__flag) begin
		if(text_out_95__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_95__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_96__flag) begin
		if(text_out_96__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_96__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_97__flag) begin
		if(text_out_97__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_97__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_98__flag) begin
		if(text_out_98__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_98__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_99__flag) begin
		if(text_out_99__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_99__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_100__flag) begin
		if(text_out_100__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_100__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_101__flag) begin
		if(text_out_101__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_101__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_102__flag) begin
		if(text_out_102__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_102__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_103__flag) begin
		if(text_out_103__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_103__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_104__flag) begin
		if(text_out_104__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_104__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_105__flag) begin
		if(text_out_105__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_105__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_106__flag) begin
		if(text_out_106__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_106__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_107__flag) begin
		if(text_out_107__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_107__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_108__flag) begin
		if(text_out_108__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_108__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_109__flag) begin
		if(text_out_109__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_109__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_110__flag) begin
		if(text_out_110__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_110__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_111__flag) begin
		if(text_out_111__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_111__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_112__flag) begin
		if(text_out_112__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_112__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_113__flag) begin
		if(text_out_113__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_113__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_114__flag) begin
		if(text_out_114__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_114__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_115__flag) begin
		if(text_out_115__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_115__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_116__flag) begin
		if(text_out_116__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_116__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_117__flag) begin
		if(text_out_117__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_117__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_118__flag) begin
		if(text_out_118__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_118__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_119__flag) begin
		if(text_out_119__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_119__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_120__flag) begin
		if(text_out_120__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_120__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_121__flag) begin
		if(text_out_121__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_121__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_122__flag) begin
		if(text_out_122__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_122__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_123__flag) begin
		if(text_out_123__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_123__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_124__flag) begin
		if(text_out_124__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_124__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_125__flag) begin
		if(text_out_125__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_125__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_126__flag) begin
		if(text_out_126__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_126__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge text_out_127__flag) begin
		if(text_out_127__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on text_out_127__gfpga at time = %t", $realtime);
		end
	end


// ----- Begin output waveform to VCD file-------
	initial begin
		$dumpfile("aes_cipher_top_formal.vcd");
		$dumpvars(1, aes_cipher_top_top_formal_verification_random_tb);
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
// ----- END Verilog module for aes_cipher_top_top_formal_verification_random_tb -----

//----- Default net type -----
`default_nettype none

