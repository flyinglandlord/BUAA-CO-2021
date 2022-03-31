`timescale 1ns / 1ps
`include "def.v"

module FD_REG(
    input clk,
    input reset,
    input flush,
    input WrEn,
    input Req,
    
    input [31:0] F_PC,
    input [31:0] F_Instr,
    input F_DelaySlot,
    input [4:0] F_EXCCode,

    output reg [31:0] D_PC,
    output reg [31:0] D_Instr,
    output reg D_DelaySlot,
    output reg [4:0] D_EXCCode
    );

    initial begin
        D_Instr = 32'd0;
        D_PC = 32'd0;    
        D_DelaySlot = 0;
        D_EXCCode = 0;   
    end

    always @(posedge clk) begin
        if (reset || flush || Req) begin
            D_Instr <= 32'd0;
            D_PC <= Req ? 32'h0000_4180 : 32'd0;
            D_DelaySlot <= 0;
            D_EXCCode <= 0;
        end else if(WrEn) begin
            D_Instr <= F_Instr;
            D_PC <= F_PC;
            D_DelaySlot <= F_DelaySlot;
            D_EXCCode <= F_EXCCode;
        end
    end

endmodule
