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

    initial begin
        D_Instr <= 32'd0;
        D_PC <= 32'd0;       
    end

    always @(posedge clk) begin
        if (reset || flush) begin
            D_Instr <= 32'd0;
            D_PC <= 32'd0;
        end else if(WrEn) begin
            D_Instr <= F_Instr;
            D_PC <= F_PC;
        end
    end

endmodule
