`include "def.v"
module ctrl(input wire[31:0]instr,output wire[12:0]ops,input wire[1:0]b,
			output reg[5:0]az,output reg[5:0]aw,output reg[5:0]am,output reg[5:0]ax);
	
	wire[5:0]code;wire[5:0]func;wire[4:0]shamt;
	wire[5:0]rs;wire[5:0]rt;wire[5:0]rd;

	assign {code,rs[4:0],rt[4:0],rd[4:0],shamt,func}=instr;
	assign {rs[5],rt[5],rd[5]}=3'b0;

	reg[2:0]ifup;reg[5:0]alup;reg[2:0]dmp;reg dme;
	assign ops={ifup,alup,dmp,dme};

	always@(*)case(code)
		6'b0: case(func)
			6'b100001:begin {az,aw,am,ax}<={rs,rt,6'b0,rd};
			/*addu*/		{ifup,alup,dmp,dme}<={3'b0,`addu,3'b0,1'b0}; end
			6'b100011:begin {az,aw,am,ax}<={rs,rt,6'b0,rd};
			/*subu*/		{ifup,alup,dmp,dme}<={3'b0,`subu,3'b0,1'b0}; end
			6'b001000:begin {az,aw,am,ax}<={rs,6'b0,6'b0,6'b0};
			/* jr */		{ifup,alup,dmp,dme}<={`jr,6'b0,3'b0,1'b0};   end
			6'b001001:begin {az,aw,am,ax}<={rs,6'b0,`pce,rd};
			/*jalr*/		{ifup,alup,dmp,dme}<={`jr,6'b0,3'b0,1'b0};   end
			6'b000000:begin {az,aw,am,ax}<={rt,`shmt,6'b0,rd};
			/*sll */		{ifup,alup,dmp,dme}<={3'b0,`sll,3'b0,1'b0};  end
			default:  begin {az,aw,am,ax}<={6'b0,6'b0,6'b0,6'b0};
			/*xxxx*/		{ifup,alup,dmp,dme}<={3'b0,6'b0,3'b0,1'b0};  end
		endcase
		6'b000010:begin {az,aw,am,ax}<={`inst,6'b0,6'b0,6'b0};
		/* j  */		{ifup,alup,dmp,dme}<={`j,6'b0,3'b0,1'b0};   	 end
		6'b000011:begin {az,aw,am,ax}<={`inst,6'b0,`pce,`ra};
		/*jal */		{ifup,alup,dmp,dme}<={`j,6'b0,3'b0,1'b0};   	 end
		6'b000100:begin {az,aw,am,ax}<={`inst,rs,rt,6'b0};
		/*beq */		{ifup,alup,dmp,dme}<={(b[`eql])?`b:3'b0,6'b0,3'b0,1'b0}; end
		6'b001000:begin {az,aw,am,ax}<={rs,`ext,6'b0,rt};
		/*addi*/		{ifup,alup,dmp,dme}<={3'b0,`add,3'b0,1'b0};		 end
		6'b001101:begin {az,aw,am,ax}<={rs,`extu,6'b0,rt};
		/*ori */		{ifup,alup,dmp,dme}<={3'b0,`or,3'b0,1'b0};		 end
		6'b001111:begin {az,aw,am,ax}<={6'b0,`uext,6'b0,rt};
		/*lui */		{ifup,alup,dmp,dme}<={3'b0,`or,3'b0,1'b0};		 end
		6'b100011:begin {az,aw,am,ax}<={rs,`ext,6'b0,rt};
		/* lw */		{ifup,alup,dmp,dme}<={3'b0,`add,`wd,1'b0};		 end
		6'b101011:begin {az,aw,am,ax}<={rs,`ext,rt,6'b0};
		/* sw */		{ifup,alup,dmp,dme}<={3'b0,`add,`wd,1'b1};		 end
		default:  begin {az,aw,am,ax}<={6'b0,6'b0,6'b0,6'b0};
		/*xxxx*/		{ifup,alup,dmp,dme}<={3'b0,6'b0,3'b0,1'b0};		 end
	endcase

endmodule
