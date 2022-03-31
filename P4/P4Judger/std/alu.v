`include "def.v"
module alu(input wire[31:0]x,input wire[31:0]y,output wire[31:0]z,
		   input wire[5:0]op);
	reg[32:0]zz;
	
	always@(*)case(op)
		`add:zz<={x[31],x}+{y[31],y};
		`sub:zz<={x[31],x}-{y[31],y};
		`addu:zz<={1'b0,x}+{1'b0,y};
		`subu:zz<={1'b0,x}-{1'b0,y};
		`or:zz<={1'b0,x|y};
		`sll:zz<=(x<<y[4:0]);
		`srl:zz<=(x>>y[4:0]);
		`sra:zz<=$signed(x)>>>y[4:0];
	endcase
	
	assign z=zz[31:0];

endmodule