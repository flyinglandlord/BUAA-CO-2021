`include "def.v"
module dm(input wire[31:0]ax,input wire[31:0]x,output wire[31:0]z,
		  input wire[31:0]pcw,input wire[2:0]op,input wire clk,rst,en);
	
	reg [31:0]ram[0:4095];
	wire[29:0]i;wire[4:0]j;reg[31:0]wri;
	
	assign {i,j}={ax&32'd4095,3'b0};
	always@(*)begin
		wri=ram[i];
		case(op)
			`wd:wri=x;
			`hf:wri[j+:16]=x[15:0];
			`bt:wri[j+: 8]=x[ 7:0];
		endcase
	end
	
	integer p; initial for(p=0;p<4096;p=p+1)ram[p]<=0;
	always@(posedge clk)begin
		if(rst)for(p=0;p<4096;p=p+1)ram[p]=0;
		else if(en)begin
			ram[i]<=wri;
			$display("@%h: *%h <= %h",pcw, {i,2'b0}, wri);//$display("%0d@%h: *%h <= %h",$time, pcw, {i,2'b0}, wri);
		end
	end

	assign z=	(op == `wd)? ram[i]:
				(op == `hf)? {{16{ram[i][j+15]}},ram[i][j+:16]}:
				(op == `bt)? {{24{ram[i][j+ 7]}},ram[i][j+: 8]}:
				(op ==`uhf)? {16'b0,ram[i][j+:16]}:
				(op ==`ubt)? {24'b0,ram[i][j+: 8]}:
				x;
endmodule
