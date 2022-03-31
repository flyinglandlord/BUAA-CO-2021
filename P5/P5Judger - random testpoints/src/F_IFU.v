`timescale 1ns / 1ps
`include "def.v"

module F_IFU(
    input clk,
    input reset,
    input PC_WrEn,
    input [31:0] NPC,
    output [31:0] Instr,
    output reg [31:0] PC
    );

    reg[31:0] rom[0:4095];

    initial begin
	
	
	
	
        $readmemh("code.txt", rom);
        PC = 32'h0000_3000;
    end

    always @(posedge clk) begin
        if(reset) begin
            PC <= 32'h0000_3000;
        end else if(PC_WrEn) begin
            PC <= NPC;
        end
    end

    assign Instr = rom[PC[13:2] - 12'b1100_0000_0000];

endmodule
