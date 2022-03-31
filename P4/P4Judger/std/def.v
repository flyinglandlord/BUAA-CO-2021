`ifndef def
`define def

	//IFU
	`define b 3'd1
	`define j 3'd2
	`define jr 3'd3
	`define origin 32'h3000
	`define code_addr 3072
	`define delay 32'd4
	//GRF
	`define ra 6'd31
	`define pce 6'd32
	`define ext 6'd33
	`define extu 6'd34
	`define uext 6'd35
	`define shmt 6'd36
	`define inst 6'd37
	//ALU
	`define add 6'd1
	`define sub 6'd2
	`define addu 6'd3
	`define subu 6'd4
	`define and 6'd5
	`define or 6'd6
	`define xor 6'd7
	`define nor 6'd8
	`define sll 6'd9
	`define srl 6'd10
	`define sra 6'd11
	//DM
	`define wd 3'd1
	`define hf 3'd2
	`define bt 3'd3
	`define uhf 3'd4
	`define ubt 3'd5
	//CMP
	`define eql 1'b0
	`define ltz 1'b1
	//CTRL
	`define zero 6'b0
	`define ifup 6

`endif