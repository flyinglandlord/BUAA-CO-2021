`timescale 1ns / 1ps
`include "def.v"

`timescale 1ns / 1ps
`include "def.v"

module EM_REG(
    input clk,
    input reset,
    input flush,
    input WrEn,

    input [31:0] E_PC,
    input [31:0] E_Instr,
    input [31:0] E_ALUAns,
    input [31:0] E_rt_data,
    input [31:0] E_ext32,
    input E_b_jump,
    input [31:0] E_MDUAns,

    output reg [31:0] M_PC,
    output reg [31:0] M_Instr,
    output reg [31:0] M_ALUAns,
    output reg [31:0] M_rt_data,
    output reg [31:0] M_ext32,
    output reg M_b_jump,
    output reg [31:0] M_MDUAns
    );

    initial begin
        M_PC <= 32'd0;
        M_Instr <= 32'd0;
        M_ALUAns <= 32'd0;
        M_rt_data <= 32'd0;
        M_ext32 <= 32'd0;
        M_b_jump <= 0;
        M_MDUAns <= 32'd0;    
    end

    always @(posedge clk) begin
        if(reset || flush) begin
            M_PC <= 32'd0;
            M_Instr <= 32'd0;
            M_ALUAns <= 32'd0;
            M_rt_data <= 32'd0;
            M_ext32 <= 32'd0;
            M_b_jump <= 0;
            M_MDUAns <= 32'd0;
        end else if(WrEn) begin
            M_PC <= E_PC;
            M_Instr <= E_Instr;
            M_ALUAns <= E_ALUAns;
            M_rt_data <= E_rt_data;
            M_ext32 <= E_ext32;
            M_b_jump <= E_b_jump;
            M_MDUAns <= E_MDUAns;
        end
    end

endmodule
