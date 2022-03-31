`timescale 1ns / 1ps
`include "mips.v"

////////////////////////////////////////////////////////////////////////////////
// Company: Beihang University
// Engineer: FlyChy
//
// Create Date:   19:25:35 11/12/2021
// Design Name:   mips
// Module Name:   G:/MyWorkspace/Computer_Organization/P4/P4_L0_CPU/mips_tb.v
// Project Name:  P4_L0_CPU
// Tool versions:  ISE 14.7
// Description: 
//
// Verilog Test Fixture created by ISE for module: mips
//
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mips_tb;

	// Inputs
	reg clk;
	reg reset;

	// Instantiate the Unit Under Test (UUT)
	mips uut (
		.clk(clk), 
		.reset(reset)
	);

	always #1 clk = ~clk;

	initial begin
		$dumpfile("mips_tb.vcd");
		$dumpvars;
		// Initialize Inputs
		clk = 0;
		reset = 1;

		#10;
		reset = 0;
        #4096;
		$finish;
		// Add stimulus here

	end
      
endmodule

