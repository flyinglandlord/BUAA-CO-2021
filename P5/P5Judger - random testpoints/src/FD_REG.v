`timescale 1ns / 1ps
`include "def.v"

module FD_REG(
    input clk,
    input reset,
    input flush,
    input WrEn,
    
    input [31:0] F_PC,
    input [31:0] F_Instr,

    output reg [31:0] D_PC,
    output reg [31:0] D_Instr
    );

    always @(posedge clk) begin
        if (reset || flush) begin
            D_Instr <= 0;
            D_PC <= 0;
        end else if(WrEn) begin
            D_Instr <= F_Instr;
            D_PC <= F_PC;
        end
    end

endmodule
