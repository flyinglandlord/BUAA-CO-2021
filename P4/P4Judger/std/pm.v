`include "def.v"
module pm(input wire[32*7-1:0]I,output wire[32*6-1:0]O,
		  output wire[32*3-1:0]Instr,output wire[32*3-1:0]PC,
		  input wire[12:0]opI,output wire[13:0]opO,output wire[1:0]b,
		  input wire clk,rst);
	
	wire[31:0]instr;wire[31:0]pc;
	wire[31:0]rfz;wire[31:0]rfw;wire[31:0]rfm;
	wire[31:0]aluz;wire[31:0]dmz;

	assign {instr,pc,rfz,rfw,rfm,aluz,dmz}=I;
	assign {b[`eql],b[`ltz]} = {rfw==rfm,rfw[31]};

	wire[2:0]ifup;wire[5:0]alup;wire[2:0]dmp;wire dme;wire[2:0]wb;
	assign {ifup,alup,dmp,dme} = opI;
	
	wire[31:0]alux;wire[31:0]aluy;wire[31:0]ifum;
	wire[31:0]cmpx;wire[31:0]cmpy;
	wire[31:0]dmax;wire[31:0]dmx; wire[31:0]rfx;

	assign {ifum,alux,aluy,dmx, dmax,rfx}
		 = {rfz, rfz, rfw, rfm, aluz,alup&&(!dmp)?aluz:dmz};
	assign O = {ifum,alux,aluy,dmax,dmx,rfx};
	assign Instr = {instr,instr,instr};
	assign PC = {pc,pc,pc};
	assign opO = {1'b1,opI};

endmodule