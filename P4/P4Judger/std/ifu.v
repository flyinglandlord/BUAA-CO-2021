`include "def.v"
module ifu(input wire[31:0]imm,input wire[2:0]op,input clk,rst,en,
		   output reg[31:0]pc,output wire[31:0]instr);
	
	reg[31:0]rom[`code_addr:`code_addr+4095];
	wire [31:0]npc;wire[31:0]opc;
	
	assign opc=pc-`delay;
	assign npc=(op==0 ) ?pc+32'd4:
			   (op==`b) ?pc+`delay+{{14{imm[15]}},imm[15:0],2'b0}:
			   (op==`j) ?{opc[31:28],imm[25:0],2'b0}:
			   (op==`jr)?imm:pc+32'd4;
	
	initial begin pc=`origin; $readmemh("code.txt",rom); end
	// initial $readmemh("code_handler.txt", rom, `code_addr+1120, `code_addr+2047);
	always @(posedge clk)begin
		if (rst)pc<=`origin;
		else if (en)pc<=npc;
		else pc<=pc;
	end
	
	assign instr=rom[pc[31:2]];

endmodule