/* Generated by Yosys 0.27+22 (git sha1 53c0a6b78, gcc 11.3.0-1ubuntu1~22.04 -fPIC -Os) */

module lpffir_core(clk_i, rstn_i, en_i, \x_i[0] , \x_i[1] , \x_i[2] , \x_i[3] , \x_i[4] , \x_i[5] , \x_i[6] , \x_i[7] , \x_i[8] , \x_i[9] , \x_i[10] , \x_i[11] , \x_i[12] , \x_i[13] , \x_i[14] , \x_i[15] , \y_o[0] , \y_o[1] 
, \y_o[2] , \y_o[3] , \y_o[4] , \y_o[5] , \y_o[6] , \y_o[7] , \y_o[8] , \y_o[9] , \y_o[10] , \y_o[11] , \y_o[12] , \y_o[13] , \y_o[14] , \y_o[15] );
  wire _000_;
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  wire _064_;
  wire _065_;
  wire _066_;
  wire _067_;
  wire _068_;
  wire _069_;
  wire _070_;
  wire _071_;
  wire _072_;
  wire _073_;
  wire _074_;
  wire _075_;
  wire _076_;
  wire _077_;
  wire _078_;
  wire _079_;
  wire _080_;
  wire _081_;
  wire _082_;
  wire _083_;
  wire _084_;
  wire _085_;
  wire _086_;
  wire _087_;
  wire _088_;
  wire _089_;
  wire _090_;
  wire _091_;
  wire _092_;
  wire _093_;
  wire _094_;
  input clk_i;
  wire clk_i;
  input en_i;
  wire en_i;
  wire n102;
  wire n107;
  wire n112;
  wire n117;
  wire n122;
  wire n127;
  wire n132;
  wire n137;
  wire n142;
  wire n147;
  wire n152;
  wire n157;
  wire n162;
  wire n167;
  wire n172;
  wire n177;
  wire n182;
  wire n187;
  wire n192;
  wire n197;
  wire n202;
  wire n207;
  wire n212;
  wire n217;
  wire n222;
  wire n227;
  wire n232;
  wire n237;
  wire n242;
  wire n247;
  wire n252;
  wire n257;
  wire n262;
  wire n267;
  wire n272;
  wire n277;
  wire n282;
  wire n287;
  wire n292;
  wire n297;
  wire n302;
  wire n307;
  wire n312;
  wire n317;
  wire n322;
  wire n327;
  wire n332;
  wire n337;
  wire n342;
  wire n347;
  wire n352;
  wire n357;
  wire n362;
  wire n367;
  wire n372;
  wire n377;
  wire n382;
  wire n387;
  wire n392;
  wire n397;
  wire n402;
  wire n407;
  wire n412;
  wire n417;
  wire n422;
  wire n427;
  wire n432;
  wire n437;
  wire n442;
  wire n447;
  wire n452;
  wire n457;
  wire n462;
  wire n467;
  wire n72;
  wire n77;
  wire n82;
  wire n87;
  wire n92;
  wire n97;
  reg \rca_inst0.b0 ;
  reg \rca_inst0.b1 ;
  reg \rca_inst0.b10 ;
  reg \rca_inst0.b11 ;
  reg \rca_inst0.b12 ;
  reg \rca_inst0.b13 ;
  reg \rca_inst0.b14 ;
  reg \rca_inst0.b15 ;
  reg \rca_inst0.b2 ;
  reg \rca_inst0.b3 ;
  reg \rca_inst0.b4 ;
  reg \rca_inst0.b5 ;
  reg \rca_inst0.b6 ;
  reg \rca_inst0.b7 ;
  reg \rca_inst0.b8 ;
  reg \rca_inst0.b9 ;
  reg \rca_inst1.a0 ;
  reg \rca_inst1.a1 ;
  reg \rca_inst1.a10 ;
  reg \rca_inst1.a11 ;
  reg \rca_inst1.a12 ;
  reg \rca_inst1.a13 ;
  reg \rca_inst1.a14 ;
  reg \rca_inst1.a15 ;
  reg \rca_inst1.a2 ;
  reg \rca_inst1.a3 ;
  reg \rca_inst1.a4 ;
  reg \rca_inst1.a5 ;
  reg \rca_inst1.a6 ;
  reg \rca_inst1.a7 ;
  reg \rca_inst1.a8 ;
  reg \rca_inst1.a9 ;
  reg \rca_inst1.b0 ;
  reg \rca_inst1.b1 ;
  reg \rca_inst1.b10 ;
  reg \rca_inst1.b11 ;
  reg \rca_inst1.b12 ;
  reg \rca_inst1.b13 ;
  reg \rca_inst1.b14 ;
  reg \rca_inst1.b15 ;
  reg \rca_inst1.b2 ;
  reg \rca_inst1.b3 ;
  reg \rca_inst1.b4 ;
  reg \rca_inst1.b5 ;
  reg \rca_inst1.b6 ;
  reg \rca_inst1.b7 ;
  reg \rca_inst1.b8 ;
  reg \rca_inst1.b9 ;
  reg \rca_inst2.a0 ;
  reg \rca_inst2.a1 ;
  reg \rca_inst2.a10 ;
  reg \rca_inst2.a11 ;
  reg \rca_inst2.a12 ;
  reg \rca_inst2.a13 ;
  reg \rca_inst2.a14 ;
  reg \rca_inst2.a15 ;
  reg \rca_inst2.a2 ;
  reg \rca_inst2.a3 ;
  reg \rca_inst2.a4 ;
  reg \rca_inst2.a5 ;
  reg \rca_inst2.a6 ;
  reg \rca_inst2.a7 ;
  reg \rca_inst2.a8 ;
  reg \rca_inst2.a9 ;
  reg \rca_inst2.b0 ;
  reg \rca_inst2.b1 ;
  reg \rca_inst2.b10 ;
  reg \rca_inst2.b11 ;
  reg \rca_inst2.b12 ;
  reg \rca_inst2.b13 ;
  reg \rca_inst2.b14 ;
  reg \rca_inst2.b15 ;
  reg \rca_inst2.b2 ;
  reg \rca_inst2.b3 ;
  reg \rca_inst2.b4 ;
  reg \rca_inst2.b5 ;
  reg \rca_inst2.b6 ;
  reg \rca_inst2.b7 ;
  reg \rca_inst2.b8 ;
  reg \rca_inst2.b9 ;
  wire \rca_inst4.fa_inst0.s ;
  wire \rca_inst4.fa_inst1.s ;
  wire \rca_inst4.fa_inst10.s ;
  wire \rca_inst4.fa_inst11.s ;
  wire \rca_inst4.fa_inst12.s ;
  wire \rca_inst4.fa_inst13.s ;
  wire \rca_inst4.fa_inst14.s ;
  wire \rca_inst4.fa_inst15.s ;
  wire \rca_inst4.fa_inst2.s ;
  wire \rca_inst4.fa_inst3.s ;
  wire \rca_inst4.fa_inst4.s ;
  wire \rca_inst4.fa_inst5.s ;
  wire \rca_inst4.fa_inst6.s ;
  wire \rca_inst4.fa_inst7.s ;
  wire \rca_inst4.fa_inst8.s ;
  wire \rca_inst4.fa_inst9.s ;
  input rstn_i;
  wire rstn_i;
  input \x_i[0] ;
  wire \x_i[0] ;
  input \x_i[10] ;
  wire \x_i[10] ;
  input \x_i[11] ;
  wire \x_i[11] ;
  input \x_i[12] ;
  wire \x_i[12] ;
  input \x_i[13] ;
  wire \x_i[13] ;
  input \x_i[14] ;
  wire \x_i[14] ;
  input \x_i[15] ;
  wire \x_i[15] ;
  input \x_i[1] ;
  wire \x_i[1] ;
  input \x_i[2] ;
  wire \x_i[2] ;
  input \x_i[3] ;
  wire \x_i[3] ;
  input \x_i[4] ;
  wire \x_i[4] ;
  input \x_i[5] ;
  wire \x_i[5] ;
  input \x_i[6] ;
  wire \x_i[6] ;
  input \x_i[7] ;
  wire \x_i[7] ;
  input \x_i[8] ;
  wire \x_i[8] ;
  input \x_i[9] ;
  wire \x_i[9] ;
  output \y_o[0] ;
  wire \y_o[0] ;
  output \y_o[10] ;
  wire \y_o[10] ;
  output \y_o[11] ;
  wire \y_o[11] ;
  output \y_o[12] ;
  wire \y_o[12] ;
  output \y_o[13] ;
  wire \y_o[13] ;
  output \y_o[14] ;
  wire \y_o[14] ;
  output \y_o[15] ;
  wire \y_o[15] ;
  output \y_o[1] ;
  wire \y_o[1] ;
  output \y_o[2] ;
  wire \y_o[2] ;
  output \y_o[3] ;
  wire \y_o[3] ;
  output \y_o[4] ;
  wire \y_o[4] ;
  output \y_o[5] ;
  wire \y_o[5] ;
  output \y_o[6] ;
  wire \y_o[6] ;
  output \y_o[7] ;
  wire \y_o[7] ;
  output \y_o[8] ;
  wire \y_o[8] ;
  output \y_o[9] ;
  wire \y_o[9] ;
  always @(posedge clk_i)
    \rca_inst1.a0  <= n72;
  always @(posedge clk_i)
    \rca_inst1.a9  <= n117;
  always @(posedge clk_i)
    \rca_inst1.a10  <= n122;
  always @(posedge clk_i)
    \rca_inst1.a11  <= n127;
  always @(posedge clk_i)
    \rca_inst1.a12  <= n132;
  always @(posedge clk_i)
    \rca_inst1.a13  <= n137;
  always @(posedge clk_i)
    \rca_inst1.a14  <= n142;
  always @(posedge clk_i)
    \rca_inst1.a15  <= n147;
  always @(posedge clk_i)
    \rca_inst2.a0  <= n152;
  always @(posedge clk_i)
    \rca_inst2.a1  <= n157;
  always @(posedge clk_i)
    \rca_inst2.a2  <= n162;
  always @(posedge clk_i)
    \rca_inst1.a1  <= n77;
  always @(posedge clk_i)
    \rca_inst2.a3  <= n167;
  always @(posedge clk_i)
    \rca_inst2.a4  <= n172;
  always @(posedge clk_i)
    \rca_inst2.a5  <= n177;
  always @(posedge clk_i)
    \rca_inst2.a6  <= n182;
  always @(posedge clk_i)
    \rca_inst2.a7  <= n187;
  always @(posedge clk_i)
    \rca_inst2.a8  <= n192;
  always @(posedge clk_i)
    \rca_inst2.a9  <= n197;
  always @(posedge clk_i)
    \rca_inst2.a10  <= n202;
  always @(posedge clk_i)
    \rca_inst2.a11  <= n207;
  always @(posedge clk_i)
    \rca_inst2.a12  <= n212;
  always @(posedge clk_i)
    \rca_inst1.a2  <= n82;
  always @(posedge clk_i)
    \rca_inst2.a13  <= n217;
  always @(posedge clk_i)
    \rca_inst2.a14  <= n222;
  always @(posedge clk_i)
    \rca_inst2.a15  <= n227;
  always @(posedge clk_i)
    \rca_inst2.b0  <= n232;
  always @(posedge clk_i)
    \rca_inst2.b1  <= n237;
  always @(posedge clk_i)
    \rca_inst2.b2  <= n242;
  always @(posedge clk_i)
    \rca_inst2.b3  <= n247;
  always @(posedge clk_i)
    \rca_inst2.b4  <= n252;
  always @(posedge clk_i)
    \rca_inst2.b5  <= n257;
  always @(posedge clk_i)
    \rca_inst2.b6  <= n262;
  always @(posedge clk_i)
    \rca_inst1.a3  <= n87;
  always @(posedge clk_i)
    \rca_inst2.b7  <= n267;
  always @(posedge clk_i)
    \rca_inst2.b8  <= n272;
  always @(posedge clk_i)
    \rca_inst2.b9  <= n277;
  always @(posedge clk_i)
    \rca_inst2.b10  <= n282;
  always @(posedge clk_i)
    \rca_inst2.b11  <= n287;
  always @(posedge clk_i)
    \rca_inst2.b12  <= n292;
  always @(posedge clk_i)
    \rca_inst2.b13  <= n297;
  always @(posedge clk_i)
    \rca_inst2.b14  <= n302;
  always @(posedge clk_i)
    \rca_inst2.b15  <= n307;
  always @(posedge clk_i)
    \rca_inst1.b0  <= n312;
  always @(posedge clk_i)
    \rca_inst1.a4  <= n92;
  always @(posedge clk_i)
    \rca_inst1.b1  <= n317;
  always @(posedge clk_i)
    \rca_inst1.b2  <= n322;
  always @(posedge clk_i)
    \rca_inst1.b3  <= n327;
  always @(posedge clk_i)
    \rca_inst1.b4  <= n332;
  always @(posedge clk_i)
    \rca_inst1.b5  <= n337;
  always @(posedge clk_i)
    \rca_inst1.b6  <= n342;
  always @(posedge clk_i)
    \rca_inst1.b7  <= n347;
  always @(posedge clk_i)
    \rca_inst1.b8  <= n352;
  always @(posedge clk_i)
    \rca_inst1.b9  <= n357;
  always @(posedge clk_i)
    \rca_inst1.b10  <= n362;
  always @(posedge clk_i)
    \rca_inst1.a5  <= n97;
  always @(posedge clk_i)
    \rca_inst1.b11  <= n367;
  always @(posedge clk_i)
    \rca_inst1.b12  <= n372;
  always @(posedge clk_i)
    \rca_inst1.b13  <= n377;
  always @(posedge clk_i)
    \rca_inst1.b14  <= n382;
  always @(posedge clk_i)
    \rca_inst1.b15  <= n387;
  always @(posedge clk_i)
    \rca_inst0.b0  <= n392;
  always @(posedge clk_i)
    \rca_inst0.b1  <= n397;
  always @(posedge clk_i)
    \rca_inst0.b2  <= n402;
  always @(posedge clk_i)
    \rca_inst0.b3  <= n407;
  always @(posedge clk_i)
    \rca_inst0.b4  <= n412;
  always @(posedge clk_i)
    \rca_inst1.a6  <= n102;
  always @(posedge clk_i)
    \rca_inst0.b5  <= n417;
  always @(posedge clk_i)
    \rca_inst0.b6  <= n422;
  always @(posedge clk_i)
    \rca_inst0.b7  <= n427;
  always @(posedge clk_i)
    \rca_inst0.b8  <= n432;
  always @(posedge clk_i)
    \rca_inst0.b9  <= n437;
  always @(posedge clk_i)
    \rca_inst0.b10  <= n442;
  always @(posedge clk_i)
    \rca_inst0.b11  <= n447;
  always @(posedge clk_i)
    \rca_inst0.b12  <= n452;
  always @(posedge clk_i)
    \rca_inst0.b13  <= n457;
  always @(posedge clk_i)
    \rca_inst0.b14  <= n462;
  always @(posedge clk_i)
    \rca_inst1.a7  <= n107;
  always @(posedge clk_i)
    \rca_inst0.b15  <= n467;
  always @(posedge clk_i)
    \rca_inst1.a8  <= n112;
  assign _062_ = 32'd390005527 >> { _057_, \rca_inst2.b3 , \rca_inst2.b4 , \rca_inst2.a4 , \rca_inst2.a3  };
  assign _063_ = 32'd1905167985 >> { \rca_inst2.b6 , \rca_inst2.a6 , _062_, \rca_inst2.b5 , \rca_inst2.a5  };
  assign _064_ = 16'h9669 >> { _014_, _015_, _033_, \rca_inst0.b7  };
  assign _065_ = 32'd733140045 >> { _013_, _014_, \rca_inst0.b7 , _015_, _033_ };
  assign _066_ = 8'h96 >> { _067_, \rca_inst2.b7 , \rca_inst2.a7  };
  assign _067_ = 32'd390005527 >> { _062_, \rca_inst2.b5 , \rca_inst2.b6 , \rca_inst2.a6 , \rca_inst2.a5  };
  assign _068_ = 32'd1905167985 >> { \rca_inst2.b8 , \rca_inst2.a8 , _067_, \rca_inst2.b7 , \rca_inst2.a7  };
  assign _069_ = 16'h9669 >> { _011_, _012_, _036_, \rca_inst0.b9  };
  assign _070_ = 32'd2397597975 >> { _038_, _011_, \rca_inst0.b9 , _012_, _036_ };
  assign _071_ = 8'h96 >> { _072_, \rca_inst2.b9 , \rca_inst2.a9  };
  assign _072_ = 32'd390005527 >> { _067_, \rca_inst2.b7 , \rca_inst2.b8 , \rca_inst2.a8 , \rca_inst2.a7  };
  assign _073_ = 32'd1905167985 >> { \rca_inst2.b10 , \rca_inst2.a10 , _072_, \rca_inst2.b9 , \rca_inst2.a9  };
  assign _074_ = 32'd1905167985 >> { \rca_inst1.b12 , \rca_inst1.a12 , _041_, \rca_inst1.b11 , \rca_inst1.a11  };
  assign _075_ = 8'h96 >> { _076_, \rca_inst2.b11 , \rca_inst2.a11  };
  assign _076_ = 32'd390005527 >> { _072_, \rca_inst2.b9 , \rca_inst2.b10 , \rca_inst2.a10 , \rca_inst2.a9  };
  assign _077_ = 32'd1905167985 >> { \rca_inst2.b12 , \rca_inst2.a12 , _076_, \rca_inst2.b11 , \rca_inst2.a11  };
  assign _078_ = 8'h96 >> { _079_, _081_, _083_ };
  assign _079_ = 8'h96 >> { _080_, \rca_inst1.b13 , \rca_inst1.a13  };
  assign _080_ = 32'd390005527 >> { _041_, \rca_inst1.b11 , \rca_inst1.b12 , \rca_inst1.a12 , \rca_inst1.a11  };
  assign _081_ = 8'h96 >> { _082_, \rca_inst0.b13 , \x_i[13]  };
  assign _082_ = 32'd390005527 >> { _004_, \rca_inst0.b11 , \rca_inst0.b12 , \x_i[12] , \x_i[11]  };
  assign _083_ = 64'h0157157f157f0157 >> { _009_, \rca_inst0.b11 , _003_, _010_, _040_, _074_ };
  assign _084_ = 16'h2bd4 >> { _085_, _079_, _081_, _083_ };
  assign _085_ = 32'd1905167985 >> { \rca_inst0.b14 , \x_i[14] , _082_, \rca_inst0.b13 , \x_i[13]  };
  assign _086_ = 8'h96 >> { _087_, \rca_inst2.b13 , \rca_inst2.a13  };
  assign _087_ = 32'd390005527 >> { _076_, \rca_inst2.b11 , \rca_inst2.b12 , \rca_inst2.a12 , \rca_inst2.a11  };
  assign _088_ = 32'd1905167985 >> { \rca_inst1.b14 , \rca_inst1.a14 , _080_, \rca_inst1.b13 , \rca_inst1.a13  };
  assign _089_ = 32'd1905167985 >> { \rca_inst2.b14 , \rca_inst2.a14 , _087_, \rca_inst2.b13 , \rca_inst2.a13  };
  assign _090_ = 32'd53160767 >> { _079_, _081_, _085_, _088_, _083_ };
  assign _091_ = 64'h6996966996696996 >> { _092_, _093_, \rca_inst0.b15 , \rca_inst1.b15 , \rca_inst1.a15 , \x_i[15]  };
  assign _092_ = 32'd390005527 >> { _082_, \rca_inst0.b13 , \rca_inst0.b14 , \x_i[14] , \x_i[13]  };
  assign _093_ = 32'd390005527 >> { _080_, \rca_inst1.b13 , \rca_inst1.b14 , \rca_inst1.a14 , \rca_inst1.a13  };
  assign _094_ = 32'd390005527 >> { _087_, \rca_inst2.b13 , \rca_inst2.b14 , \rca_inst2.a14 , \rca_inst2.a13  };
  assign \rca_inst4.fa_inst14.s  = 64'h8e71718e718e8e71 >> { _084_, _088_, _089_, _078_, _001_, _086_ };
  assign \rca_inst4.fa_inst13.s  = 8'h96 >> { _001_, _078_, _086_ };
  assign \rca_inst4.fa_inst12.s  = 64'h8e71718e718e8e71 >> { _002_, _074_, _077_, _043_, _042_, _075_ };
  assign \rca_inst4.fa_inst11.s  = 8'h96 >> { _042_, _043_, _075_ };
  assign \rca_inst4.fa_inst10.s  = 64'he81717e817e8e817 >> { _070_, _039_, _073_, _044_, _069_, _071_ };
  assign \rca_inst4.fa_inst9.s  = 8'h69 >> { _044_, _069_, _071_ };
  assign \rca_inst4.fa_inst8.s  = 64'h4db2b24db24d4db2 >> { _065_, _035_, _068_, _045_, _064_, _066_ };
  assign \rca_inst4.fa_inst7.s  = 8'h96 >> { _045_, _064_, _066_ };
  assign \rca_inst4.fa_inst6.s  = 64'hd42b2bd42bd4d42b >> { _060_, _032_, _063_, _046_, _059_, _061_ };
  assign \rca_inst4.fa_inst5.s  = 8'h69 >> { _046_, _059_, _061_ };
  assign \rca_inst4.fa_inst4.s  = 64'hd42b2bd42bd4d42b >> { _055_, _029_, _058_, _047_, _054_, _056_ };
  assign \rca_inst4.fa_inst3.s  = 8'h69 >> { _047_, _054_, _056_ };
  assign \rca_inst4.fa_inst2.s  = 16'h9669 >> { _048_, _052_, _026_, _053_ };
  assign \rca_inst4.fa_inst1.s  = 16'h6996 >> { _025_, _049_, _050_, _051_ };
  assign \rca_inst4.fa_inst0.s  = 64'h6996966996696996 >> { \rca_inst0.b0 , \rca_inst1.b0 , \rca_inst2.b0 , \rca_inst2.a0 , \rca_inst1.a0 , \x_i[0]  };
  assign n392 = 16'hca00 >> { rstn_i, en_i, \rca_inst1.b0 , \rca_inst0.b0  };
  assign n397 = 16'hca00 >> { rstn_i, en_i, \rca_inst1.b1 , \rca_inst0.b1  };
  assign n402 = 16'hca00 >> { rstn_i, en_i, \rca_inst1.b2 , \rca_inst0.b2  };
  assign n407 = 16'hca00 >> { rstn_i, en_i, \rca_inst1.b3 , \rca_inst0.b3  };
  assign n412 = 16'hca00 >> { rstn_i, en_i, \rca_inst1.b4 , \rca_inst0.b4  };
  assign n417 = 16'hca00 >> { rstn_i, en_i, \rca_inst1.b5 , \rca_inst0.b5  };
  assign n422 = 16'hca00 >> { rstn_i, en_i, \rca_inst1.b6 , \rca_inst0.b6  };
  assign n427 = 16'hca00 >> { rstn_i, en_i, \rca_inst1.b7 , \rca_inst0.b7  };
  assign n432 = 16'hca00 >> { rstn_i, en_i, \rca_inst1.b8 , \rca_inst0.b8  };
  assign n437 = 16'hca00 >> { rstn_i, en_i, \rca_inst1.b9 , \rca_inst0.b9  };
  assign n442 = 16'hca00 >> { rstn_i, en_i, \rca_inst1.b10 , \rca_inst0.b10  };
  assign n447 = 16'hca00 >> { rstn_i, en_i, \rca_inst1.b11 , \rca_inst0.b11  };
  assign n452 = 16'hca00 >> { rstn_i, en_i, \rca_inst1.b12 , \rca_inst0.b12  };
  assign n457 = 16'hca00 >> { rstn_i, en_i, \rca_inst1.b13 , \rca_inst0.b13  };
  assign n462 = 16'hca00 >> { rstn_i, en_i, \rca_inst1.b14 , \rca_inst0.b14  };
  assign n467 = 16'hca00 >> { rstn_i, en_i, \rca_inst1.b15 , \rca_inst0.b15  };
  assign n312 = 16'hca00 >> { rstn_i, en_i, \rca_inst2.b0 , \rca_inst1.b0  };
  assign n317 = 16'hca00 >> { rstn_i, en_i, \rca_inst2.b1 , \rca_inst1.b1  };
  assign n322 = 16'hca00 >> { rstn_i, en_i, \rca_inst2.b2 , \rca_inst1.b2  };
  assign n327 = 16'hca00 >> { rstn_i, en_i, \rca_inst2.b3 , \rca_inst1.b3  };
  assign n332 = 16'hca00 >> { rstn_i, en_i, \rca_inst2.b4 , \rca_inst1.b4  };
  assign n337 = 16'hca00 >> { rstn_i, en_i, \rca_inst2.b5 , \rca_inst1.b5  };
  assign n342 = 16'hca00 >> { rstn_i, en_i, \rca_inst2.b6 , \rca_inst1.b6  };
  assign n347 = 16'hca00 >> { rstn_i, en_i, \rca_inst2.b7 , \rca_inst1.b7  };
  assign n352 = 16'hca00 >> { rstn_i, en_i, \rca_inst2.b8 , \rca_inst1.b8  };
  assign n357 = 16'hca00 >> { rstn_i, en_i, \rca_inst2.b9 , \rca_inst1.b9  };
  assign n362 = 16'hca00 >> { rstn_i, en_i, \rca_inst2.b10 , \rca_inst1.b10  };
  assign n367 = 16'hca00 >> { rstn_i, en_i, \rca_inst2.b11 , \rca_inst1.b11  };
  assign n372 = 16'hca00 >> { rstn_i, en_i, \rca_inst2.b12 , \rca_inst1.b12  };
  assign n377 = 16'hca00 >> { rstn_i, en_i, \rca_inst2.b13 , \rca_inst1.b13  };
  assign n382 = 16'hca00 >> { rstn_i, en_i, \rca_inst2.b14 , \rca_inst1.b14  };
  assign n387 = 16'hca00 >> { rstn_i, en_i, \rca_inst2.b15 , \rca_inst1.b15  };
  assign n232 = 16'hca00 >> { rstn_i, en_i, \rca_inst2.a0 , \rca_inst2.b0  };
  assign n237 = 16'hca00 >> { rstn_i, en_i, \rca_inst2.a1 , \rca_inst2.b1  };
  assign n242 = 16'hca00 >> { rstn_i, en_i, \rca_inst2.a2 , \rca_inst2.b2  };
  assign n247 = 16'hca00 >> { rstn_i, en_i, \rca_inst2.a3 , \rca_inst2.b3  };
  assign n252 = 16'hca00 >> { rstn_i, en_i, \rca_inst2.a4 , \rca_inst2.b4  };
  assign n257 = 16'hca00 >> { rstn_i, en_i, \rca_inst2.a5 , \rca_inst2.b5  };
  assign n262 = 16'hca00 >> { rstn_i, en_i, \rca_inst2.a6 , \rca_inst2.b6  };
  assign n267 = 16'hca00 >> { rstn_i, en_i, \rca_inst2.a7 , \rca_inst2.b7  };
  assign n272 = 16'hca00 >> { rstn_i, en_i, \rca_inst2.a8 , \rca_inst2.b8  };
  assign n277 = 16'hca00 >> { rstn_i, en_i, \rca_inst2.a9 , \rca_inst2.b9  };
  assign n282 = 16'hca00 >> { rstn_i, en_i, \rca_inst2.a10 , \rca_inst2.b10  };
  assign n287 = 16'hca00 >> { rstn_i, en_i, \rca_inst2.a11 , \rca_inst2.b11  };
  assign n292 = 16'hca00 >> { rstn_i, en_i, \rca_inst2.a12 , \rca_inst2.b12  };
  assign n297 = 16'hca00 >> { rstn_i, en_i, \rca_inst2.a13 , \rca_inst2.b13  };
  assign n302 = 16'hca00 >> { rstn_i, en_i, \rca_inst2.a14 , \rca_inst2.b14  };
  assign n307 = 16'hca00 >> { rstn_i, en_i, \rca_inst2.a15 , \rca_inst2.b15  };
  assign n152 = 16'hca00 >> { rstn_i, en_i, \rca_inst1.a0 , \rca_inst2.a0  };
  assign n157 = 16'hca00 >> { rstn_i, en_i, \rca_inst1.a1 , \rca_inst2.a1  };
  assign n162 = 16'hca00 >> { rstn_i, en_i, \rca_inst1.a2 , \rca_inst2.a2  };
  assign n167 = 16'hca00 >> { rstn_i, en_i, \rca_inst1.a3 , \rca_inst2.a3  };
  assign n172 = 16'hca00 >> { rstn_i, en_i, \rca_inst1.a4 , \rca_inst2.a4  };
  assign n177 = 16'hca00 >> { rstn_i, en_i, \rca_inst1.a5 , \rca_inst2.a5  };
  assign n182 = 16'hca00 >> { rstn_i, en_i, \rca_inst1.a6 , \rca_inst2.a6  };
  assign n187 = 16'hca00 >> { rstn_i, en_i, \rca_inst1.a7 , \rca_inst2.a7  };
  assign n192 = 16'hca00 >> { rstn_i, en_i, \rca_inst1.a8 , \rca_inst2.a8  };
  assign n197 = 16'hca00 >> { rstn_i, en_i, \rca_inst1.a9 , \rca_inst2.a9  };
  assign n202 = 16'hca00 >> { rstn_i, en_i, \rca_inst1.a10 , \rca_inst2.a10  };
  assign n207 = 16'hca00 >> { rstn_i, en_i, \rca_inst1.a11 , \rca_inst2.a11  };
  assign n212 = 16'hca00 >> { rstn_i, en_i, \rca_inst1.a12 , \rca_inst2.a12  };
  assign n217 = 16'hca00 >> { rstn_i, en_i, \rca_inst1.a13 , \rca_inst2.a13  };
  assign n222 = 16'hca00 >> { rstn_i, en_i, \rca_inst1.a14 , \rca_inst2.a14  };
  assign n227 = 16'hca00 >> { rstn_i, en_i, \rca_inst1.a15 , \rca_inst2.a15  };
  assign n72 = 16'hca00 >> { rstn_i, en_i, \x_i[0] , \rca_inst1.a0  };
  assign n77 = 16'hca00 >> { rstn_i, en_i, \x_i[1] , \rca_inst1.a1  };
  assign n82 = 16'hca00 >> { rstn_i, en_i, \x_i[2] , \rca_inst1.a2  };
  assign n87 = 16'hca00 >> { rstn_i, en_i, \x_i[3] , \rca_inst1.a3  };
  assign n92 = 16'hca00 >> { rstn_i, en_i, \x_i[4] , \rca_inst1.a4  };
  assign n97 = 16'hca00 >> { rstn_i, en_i, \x_i[5] , \rca_inst1.a5  };
  assign n102 = 16'hca00 >> { rstn_i, en_i, \x_i[6] , \rca_inst1.a6  };
  assign n107 = 16'hca00 >> { rstn_i, en_i, \x_i[7] , \rca_inst1.a7  };
  assign n112 = 16'hca00 >> { rstn_i, en_i, \x_i[8] , \rca_inst1.a8  };
  assign n117 = 16'hca00 >> { rstn_i, en_i, \x_i[9] , \rca_inst1.a9  };
  assign n122 = 16'hca00 >> { rstn_i, en_i, \x_i[10] , \rca_inst1.a10  };
  assign n127 = 16'hca00 >> { rstn_i, en_i, \x_i[11] , \rca_inst1.a11  };
  assign n132 = 16'hca00 >> { rstn_i, en_i, \x_i[12] , \rca_inst1.a12  };
  assign n137 = 16'hca00 >> { rstn_i, en_i, \x_i[13] , \rca_inst1.a13  };
  assign n142 = 16'hca00 >> { rstn_i, en_i, \x_i[14] , \rca_inst1.a14  };
  assign n147 = 16'hca00 >> { rstn_i, en_i, \x_i[15] , \rca_inst1.a15  };
  assign \rca_inst4.fa_inst15.s  = 64'h9669699669969669 >> { _000_, _090_, _091_, _094_, \rca_inst2.b15 , \rca_inst2.a15  };
  assign _000_ = 64'h5ddf044504455ddf >> { _084_, _088_, _001_, _086_, _078_, _089_ };
  assign _001_ = 64'h8a08efaeefae8a08 >> { _002_, _074_, _042_, _043_, _075_, _077_ };
  assign _002_ = 32'd393341070 >> { _003_, _009_, \rca_inst0.b11 , _010_, _040_ };
  assign _003_ = 32'd1905167985 >> { \rca_inst0.b12 , \x_i[12] , _004_, \rca_inst0.b11 , \x_i[11]  };
  assign _004_ = 32'd390005527 >> { _005_, \rca_inst0.b9 , \rca_inst0.b10 , \x_i[10] , \x_i[9]  };
  assign _005_ = 32'd51844927 >> { _006_, \rca_inst0.b7 , \rca_inst0.b8 , \x_i[8] , \x_i[7]  };
  assign _006_ = 32'd4243122368 >> { _007_, \rca_inst0.b5 , \rca_inst0.b6 , \x_i[6] , \x_i[5]  };
  assign _007_ = 32'd4018982408 >> { \rca_inst0.b3 , \rca_inst0.b4 , _008_, \x_i[4] , \x_i[3]  };
  assign _008_ = 64'h0317173f173f173f >> { \x_i[0] , \rca_inst0.b0 , \rca_inst0.b1 , \rca_inst0.b2 , \x_i[2] , \x_i[1]  };
  assign _009_ = 4'h9 >> { _004_, \x_i[11]  };
  assign _010_ = 64'hbf2aab02ab02bf2a >> { \rca_inst0.b9 , _011_, _038_, _012_, _036_, _039_ };
  assign _011_ = 4'h9 >> { _005_, \x_i[9]  };
  assign _012_ = 64'h08ae8aef8aef08ae >> { _014_, \rca_inst0.b7 , _013_, _015_, _033_, _035_ };
  assign _013_ = 32'd401139735 >> { \rca_inst0.b8 , \x_i[8] , _006_, \rca_inst0.b7 , \x_i[7]  };
  assign _014_ = 4'h6 >> { _006_, \x_i[7]  };
  assign _015_ = 64'hf75175107510f751 >> { _017_, \rca_inst0.b5 , _016_, _018_, _030_, _032_ };
  assign _016_ = 32'd401139735 >> { \rca_inst0.b6 , \x_i[6] , _007_, \rca_inst0.b5 , \x_i[5]  };
  assign _017_ = 4'h6 >> { _007_, \x_i[5]  };
  assign _018_ = 64'h7f15570157017f15 >> { _020_, \rca_inst0.b3 , _019_, _021_, _027_, _029_ };
  assign _019_ = 32'd1905167985 >> { \rca_inst0.b4 , \x_i[4] , _008_, \rca_inst0.b3 , \x_i[3]  };
  assign _020_ = 4'h9 >> { _008_, \x_i[3]  };
  assign _021_ = 32'd11250687 >> { _022_, _026_, _024_, _025_, _023_ };
  assign _022_ = 64'h077ff880f880077f >> { \rca_inst0.b2 , \x_i[2] , \rca_inst0.b1 , \x_i[1] , \rca_inst0.b0 , \x_i[0]  };
  assign _023_ = 64'h0000066006600000 >> { \rca_inst0.b0 , \x_i[0] , \rca_inst1.a0 , \rca_inst1.b0 , \rca_inst0.b1 , \x_i[1]  };
  assign _024_ = 64'h0ff090099009f00f >> { \rca_inst0.b0 , \x_i[0] , \rca_inst0.b1 , \x_i[1] , \rca_inst1.a0 , \rca_inst1.b0  };
  assign _025_ = 16'h7887 >> { \rca_inst1.b1 , \rca_inst1.a1 , \rca_inst1.b0 , \rca_inst1.a0  };
  assign _026_ = 64'h077ff880f880077f >> { \rca_inst1.b2 , \rca_inst1.a2 , \rca_inst1.b1 , \rca_inst1.a1 , \rca_inst1.b0 , \rca_inst1.a0  };
  assign _027_ = 8'h96 >> { _028_, \rca_inst1.b3 , \rca_inst1.a3  };
  assign _028_ = 64'hfce8e8c0e8c0e8c0 >> { \rca_inst1.a0 , \rca_inst1.b0 , \rca_inst1.b1 , \rca_inst1.b2 , \rca_inst1.a2 , \rca_inst1.a1  };
  assign _029_ = 32'd3893827560 >> { \rca_inst1.b4 , \rca_inst1.a4 , _028_, \rca_inst1.b3 , \rca_inst1.a3  };
  assign _030_ = 8'h96 >> { _031_, \rca_inst1.b5 , \rca_inst1.a5  };
  assign _031_ = 32'd4243122368 >> { _028_, \rca_inst1.b3 , \rca_inst1.b4 , \rca_inst1.a4 , \rca_inst1.a3  };
  assign _032_ = 32'd3893827560 >> { \rca_inst1.b6 , \rca_inst1.a6 , _031_, \rca_inst1.b5 , \rca_inst1.a5  };
  assign _033_ = 8'h96 >> { _034_, \rca_inst1.b7 , \rca_inst1.a7  };
  assign _034_ = 32'd4243122368 >> { _031_, \rca_inst1.b5 , \rca_inst1.b6 , \rca_inst1.a6 , \rca_inst1.a5  };
  assign _035_ = 32'd3893827560 >> { \rca_inst1.b8 , \rca_inst1.a8 , _034_, \rca_inst1.b7 , \rca_inst1.a7  };
  assign _036_ = 8'h96 >> { _037_, \rca_inst1.b9 , \rca_inst1.a9  };
  assign _037_ = 32'd4243122368 >> { _034_, \rca_inst1.b7 , \rca_inst1.b8 , \rca_inst1.a8 , \rca_inst1.a7  };
  assign _038_ = 32'd1905167985 >> { \rca_inst0.b10 , \x_i[10] , _005_, \rca_inst0.b9 , \x_i[9]  };
  assign _039_ = 32'd401139735 >> { \rca_inst1.b10 , \rca_inst1.a10 , _037_, \rca_inst1.b9 , \rca_inst1.a9  };
  assign _040_ = 8'h96 >> { _041_, \rca_inst1.b11 , \rca_inst1.a11  };
  assign _041_ = 32'd51844927 >> { _037_, \rca_inst1.b9 , \rca_inst1.b10 , \rca_inst1.a10 , \rca_inst1.a9  };
  assign _042_ = 16'h9669 >> { _009_, _010_, _040_, \rca_inst0.b11  };
  assign _043_ = 64'h577f01150115577f >> { _070_, _039_, _044_, _069_, _071_, _073_ };
  assign _044_ = 64'hefae8a088a08efae >> { _065_, _035_, _045_, _064_, _066_, _068_ };
  assign _045_ = 64'haeef088a088aaeef >> { _060_, _032_, _046_, _059_, _061_, _063_ };
  assign _046_ = 64'h4504df5ddf5d4504 >> { _055_, _029_, _047_, _056_, _054_, _058_ };
  assign _047_ = 16'h7117 >> { _026_, _052_, _048_, _053_ };
  assign _048_ = 16'h2bb2 >> { _025_, _050_, _049_, _051_ };
  assign _049_ = 64'h0660600660060660 >> { \rca_inst0.b0 , \rca_inst1.b0 , \rca_inst1.a0 , \x_i[0] , \rca_inst2.b0 , \rca_inst2.a0  };
  assign _050_ = 64'h8ee8711771178ee8 >> { \rca_inst0.b1 , \x_i[1] , \rca_inst1.b0 , \rca_inst1.a0 , \rca_inst0.b0 , \x_i[0]  };
  assign _051_ = 16'h7887 >> { \rca_inst2.b1 , \rca_inst2.a1 , \rca_inst2.b0 , \rca_inst2.a0  };
  assign _052_ = 16'hf10e >> { _022_, _023_, _024_, _025_ };
  assign _053_ = 64'h077ff880f880077f >> { \rca_inst2.b2 , \rca_inst2.a2 , \rca_inst2.b1 , \rca_inst2.a1 , \rca_inst2.b0 , \rca_inst2.a0  };
  assign _054_ = 16'h6996 >> { _020_, _021_, _027_, \rca_inst0.b3  };
  assign _055_ = 32'd2397597975 >> { _019_, _020_, \rca_inst0.b3 , _021_, _027_ };
  assign _056_ = 8'h96 >> { _057_, \rca_inst2.b3 , \rca_inst2.a3  };
  assign _057_ = 64'h0317173f173f173f >> { \rca_inst2.a0 , \rca_inst2.b0 , \rca_inst2.b1 , \rca_inst2.b2 , \rca_inst2.a2 , \rca_inst2.a1  };
  assign _058_ = 32'd1905167985 >> { \rca_inst2.b4 , \rca_inst2.a4 , _057_, \rca_inst2.b3 , \rca_inst2.a3  };
  assign _059_ = 16'h9669 >> { _017_, _018_, _030_, \rca_inst0.b5  };
  assign _060_ = 32'd733140045 >> { _016_, _017_, \rca_inst0.b5 , _018_, _030_ };
  assign _061_ = 8'h96 >> { _062_, \rca_inst2.b5 , \rca_inst2.a5  };
  assign \y_o[15]  = \rca_inst4.fa_inst15.s ;
  assign \y_o[14]  = \rca_inst4.fa_inst14.s ;
  assign \y_o[13]  = \rca_inst4.fa_inst13.s ;
  assign \y_o[12]  = \rca_inst4.fa_inst12.s ;
  assign \y_o[11]  = \rca_inst4.fa_inst11.s ;
  assign \y_o[10]  = \rca_inst4.fa_inst10.s ;
  assign \y_o[9]  = \rca_inst4.fa_inst9.s ;
  assign \y_o[8]  = \rca_inst4.fa_inst8.s ;
  assign \y_o[7]  = \rca_inst4.fa_inst7.s ;
  assign \y_o[6]  = \rca_inst4.fa_inst6.s ;
  assign \y_o[5]  = \rca_inst4.fa_inst5.s ;
  assign \y_o[4]  = \rca_inst4.fa_inst4.s ;
  assign \y_o[3]  = \rca_inst4.fa_inst3.s ;
  assign \y_o[2]  = \rca_inst4.fa_inst2.s ;
  assign \y_o[1]  = \rca_inst4.fa_inst1.s ;
  assign \y_o[0]  = \rca_inst4.fa_inst0.s ;
endmodule