`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/06/2024 01:41:55 PM
// Design Name: 
// Module Name: InstructionFetchUnit_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module InstructionFetchUnit_tb();

    reg Clk;
    reg Reset;
    wire [31:0] Instruction;
    wire [31:0] PCResult;
    
    InstructionFetchUnit u1(Instruction, PCResult, Reset, Clk);

    initial begin
        Reset <= 1;
        Clk <= 0;
        #50 Reset <= 0;
        forever #10 Clk <= ~Clk;
    end

endmodule
