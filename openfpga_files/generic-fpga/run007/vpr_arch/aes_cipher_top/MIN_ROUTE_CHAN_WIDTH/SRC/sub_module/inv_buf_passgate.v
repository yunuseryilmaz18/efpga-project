//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Essential gates
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Wed Jul  5 15:21:20 2023
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

//----- Default net type -----
`default_nettype wire

// ----- Verilog module for const0 -----
module const0(const0);
//----- OUTPUT PORTS -----
output [0:0] const0;

//----- BEGIN Registered ports -----
//----- END Registered ports -----

	assign const0[0] = 1'b0;
endmodule
// ----- END Verilog module for const0 -----

//----- Default net type -----
`default_nettype none

//----- Default net type -----
`default_nettype wire

// ----- Verilog module for const1 -----
module const1(const1);
//----- OUTPUT PORTS -----
output [0:0] const1;

//----- BEGIN Registered ports -----
//----- END Registered ports -----

	assign const1[0] = 1'b1;
endmodule
// ----- END Verilog module for const1 -----

//----- Default net type -----
`default_nettype none

//----- Default net type -----
`default_nettype wire

// ----- Verilog module for INVTX1 -----
module INVTX1(in,
              out);
//----- INPUT PORTS -----
input [0:0] in;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN Registered ports -----
//----- END Registered ports -----

// ----- Verilog codes of a regular inverter -----
	assign out = (in === 1'bz)? $random : ~in;
endmodule
// ----- END Verilog module for INVTX1 -----

//----- Default net type -----
`default_nettype none

//----- Default net type -----
`default_nettype wire

// ----- Verilog module for buf4 -----
module buf4(in,
            out);
//----- INPUT PORTS -----
input [0:0] in;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN Registered ports -----
//----- END Registered ports -----

// ----- Verilog codes of a regular inverter -----
	assign out = (in === 1'bz)? $random : in;
endmodule
// ----- END Verilog module for buf4 -----

//----- Default net type -----
`default_nettype none

//----- Default net type -----
`default_nettype wire

// ----- Verilog module for tap_buf4 -----
module tap_buf4(in,
                out);
//----- INPUT PORTS -----
input [0:0] in;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN Registered ports -----
//----- END Registered ports -----

// ----- Verilog codes of a regular inverter -----
	assign out = (in === 1'bz)? $random : ~in;
endmodule
// ----- END Verilog module for tap_buf4 -----

//----- Default net type -----
`default_nettype none

//----- Default net type -----
`default_nettype wire

// ----- Verilog module for TGATE -----
module TGATE(in,
             sel,
             selb,
             out);
//----- INPUT PORTS -----
input [0:0] in;
//----- INPUT PORTS -----
input [0:0] sel;
//----- INPUT PORTS -----
input [0:0] selb;
//----- OUTPUT PORTS -----
output [0:0] out;

//----- BEGIN Registered ports -----
//----- END Registered ports -----

	assign out = sel ? in : 1'bz;
endmodule
// ----- END Verilog module for TGATE -----

//----- Default net type -----
`default_nettype none

