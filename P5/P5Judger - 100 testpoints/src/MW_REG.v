`timescale 1ns / 1ps
`include "def.v"

module MW_REG(
    input clk,
    input reset,
    input flush,
    input WrEn,

    input [31:0] M_PC,
    input [31:0] M_Instr,
    input [31:0] M_ALUAns,
    input [31:0] M_DMRD,
    input M_b_jump,
    input [31:0] M_MDUAns,

    output reg [31:0] W_PC,
    output reg [31:0] W_Instr,
    output reg [31:0] W_ALUAns,
    output reg [31:0] W_DMRD,
    output reg W_b_jump,
    output reg [31:0] W_MDUAns
    );

    initial begin
        W_PC <= 32'd0;
        W_Instr <= 32'd0;
        W_ALUAns <= 32'd0;
        W_DMRD <= 32'd0;
        W_b_jump <= 0;
        W_MDUAns <= 32'd0;   
    end

    always @(posedge clk) begin
        if(reset || flush) begin
            W_PC <= 32'd0;
            W_Instr <= 32'd0;
            W_ALUAns <= 32'd0;
            W_DMRD <= 32'd0;
            W_b_jump <= 0;
            W_MDUAns <= 32'd0;
        end else if(WrEn) begin
            W_PC <= M_PC;
            W_Instr <= M_Instr;
            W_ALUAns <= M_ALUAns;
            W_DMRD <= M_DMRD;
            W_b_jump <= M_b_jump;
            W_MDUAns <= M_MDUAns;
        end
    end


endmodule
