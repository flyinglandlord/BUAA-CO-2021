`include "def.v"
module grf(input  wire[5:0]az,input  wire[5:0]aw,input  wire[5:0]am,input wire[5:0]ax,
		   output wire[31:0]z,output wire[31:0]w,output wire[31:0]m,input wire[31:0]x,
		   input wire [31:0]instr,input wire [31:0]pc,input wire [31:0]pcw,
		   input wire clk, rst);
	
	reg[31:0]rf[0:37];
	wire[31:0]wri;wire[5:0]wrp;
	assign wri = x;
	assign wrp = ax;

	always@(*)begin
		rf[`pce] <= pc+31'd4;
		rf[`ext] <= {{16{instr[15]}},instr[15:0]};
		rf[`extu]<= {16'b0,instr[15:0]};
		rf[`uext]<= {instr[15:0],16'b0};
		rf[`shmt]<= instr[10:6];
		rf[`inst]<= instr;
	end

	integer i; initial for(i=0;i<32;i=i+1)rf[i]<=0;
	always@(posedge clk)begin
		if(rst)for(i=0;i<32;i=i+1)rf[i]<=0;
		else if(wrp[4:0]!=5'b0)begin
			rf[wrp[4:0]]<=wri;
			$display("@%h: $%d <= %h",pcw, wrp, wri);//$display("%0d@%h: $%d <= %h",$time, pcw, wrp, wri);
		end
		rf[0]<=32'b0;
	end

	assign z = rf[az];
	assign w = rf[aw];
	assign m = rf[am];

endmodule