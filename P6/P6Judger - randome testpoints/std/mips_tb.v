`timescale 1ns / 1ps
`include "mips.v"

module _tb;
	reg clk;
	reg reset;

	mips uut (
		.clk(clk),
		.reset(reset)
	);

	initial begin
		clk = 0;
		reset = 1;

		#20;
		reset = 0;
		#40960;
		$finish;
	end

	always #2 clk=~clk;

endmodule
 
