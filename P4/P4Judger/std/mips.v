`include "def.v"
`include "alu.v"
`include "ctrl.v"
`include "dm.v"
`include "grf.v"
`include "ifu.v"
`include "pm.v"
module mips(input clk,reset);
	
	wire[31:0]instrp;wire[31:0]instr[0:3]; wire[31:0]pcp;wire[31:0]pc[0:3];
	
	wire[31:0]ifum;wire[2:0]ifup;wire ifue;
	ifu IFU(.imm(ifum),.op(ifup),.clk(clk),.rst(reset),
			.instr(instrp),.pc(pcp),.en(ifue));

	wire[5:0]az;wire[5:0]aw;wire[5:0]am;wire[5:0]ax;
	wire[31:0]z;wire[31:0]w;wire[31:0]m;wire[31:0]x;
	
	wire[1:0]cmpb;wire[12:0]ops;

	grf  GRF( .z(z),.w(w),.m(m),.x(x), .pcw(pc[3]),.clk(clk),.rst(reset),
			  .az(az),.aw(aw),.am(am),.ax(ax),.instr(instr[0]),.pc(pc[0]));
	ctrl CTRL(.az(az),.aw(aw),.am(am),.ax(ax),.instr(instr[0]),.ops(ops),.b(cmpb));

	wire[31:0]alux;wire[31:0]aluy;wire[31:0]aluz;wire[5:0]alup;
	alu ALU(.x(alux),.y(aluy),.z(aluz),.op(alup));

	wire[31:0]dmax;wire[31:0]dmx;wire[31:0]dmz;
	wire[2:0]dmp;wire dme;
	dm  DM (.ax(dmax),.x(dmx),.z(dmz),.pcw(pc[2]),
			.op(dmp),.en(dme),.clk(clk),.rst(reset));

	pm  PM (.I({instrp,pcp,z,w,m,aluz,dmz}),.O({ifum,alux,aluy,dmax,dmx,x}),
			.Instr({instr[0],instr[2],instr[3]}),.PC({pc[0],pc[2],pc[3]}),
			.opI(ops),.opO({ifue,ifup,alup,dmp,dme}),.b(cmpb));

endmodule