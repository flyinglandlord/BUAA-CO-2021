`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: Beijing University of Aeronautic and Astronautic
// Engineer: Chen Junyi 
//
// Create Date:   19:25:35 11/12/2021
// Design Name:   mips
// Module Name:   G:/MyWorkspace/Computer_Organization/P4/P4_L0_CPU/mips_tb.v
// Project Name:  P4_L0_CPU
// Target Device:  None
// Tool versions:  Vivado 2020.1
// Description: MIPS Pipeline CPU Testbench
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
		// Initialize Inputs
		clk = 0;
		reset = 1;

		#4;
		reset = 0;
        #100;
		$finish;
		// Add stimulus here

	end
      
endmodule

