`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// ECE369A - Computer Architecture
// Laboratory 
// Module - InstructionMemory_tb.v
// Description - Test the 'InstructionMemory_tb.v' module.
////////////////////////////////////////////////////////////////////////////////

module InstructionMemory_tb(); 

    wire [31:0] Instruction;

    reg [31:0] Address;

	InstructionMemory u0(
		.Address(Address),
        .Instruction(Instruction)
	);

	initial begin
	
    /* Please fill in the implementation here... */
    
    /*This testbench assures that when an address is passed in, the index, Address[8:2],
      stores the value of index * 3.*/
        #10 Address <= 0;
        #10 Address <= 4;
        #10 Address <= 8;
	
	end

endmodule

