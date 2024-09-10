`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// ECE369A - Computer Architecture
// Laboratory 1 
// Module - PCAdder_tb.v
// Description - Test the 'PCAdder.v' module.
////////////////////////////////////////////////////////////////////////////////

module PCAdder_tb();

    reg [31:0] PCResult;

    wire [31:0] PCAddResult;

    PCAdder u0(
        .PCResult(PCResult), 
        .PCAddResult(PCAddResult)
    );

	initial begin

    /*This testbench takes in a value for PCResult, and increments that value by 4 and
      will output that result as PCAddResult*/

		PCResult <= 0;
		#10 PCResult <= 4;
		#10 PCResult <= 8;
		#10 PCResult <= 12;
		#10 PCResult <= 16;
	
	end

endmodule
