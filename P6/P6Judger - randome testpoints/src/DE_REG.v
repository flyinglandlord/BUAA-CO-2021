`timescale 1ns / 1ps
`include "def.v"

module DE_REG(
    input clk,
    input reset,
    input flush,
    input WrEn,

    input [31:0] D_PC,
    input [31:0] D_Instr,
    input [31:0] D_ext32,
    input [31:0] D_rs_data,
    input [31:0] D_rt_data,
    input D_b_jump,

    output reg [31:0] E_PC,
    output reg [31:0] E_Instr,
    output reg [31:0] E_ext32,
    output reg [31:0] E_rs_data,
    output reg [31:0] E_rt_data,
    output reg E_b_jump
    );

    initial begin
        E_PC <= 32'd0;
        E_Instr <= 32'd0;
        E_rs_data <= 32'd0;
        E_rt_data <= 32'd0;
        E_ext32 <= 32'd0;
        E_b_jump <= 0;        
    end

    always @(posedge clk) begin
        if(flush || reset) begin
            E_PC <= 32'd0;
            E_Instr <= 32'd0;
            E_rs_data <= 32'd0;
            E_rt_data <= 32'd0;
            E_ext32 <= 32'd0;
            E_b_jump <= 0;
        end else if(WrEn) begin
            E_PC <= D_PC;
            E_Instr <= D_Instr;
            E_rs_data <= D_rs_data;
            E_rt_data <= D_rt_data;
            E_ext32 <= D_ext32;
            E_b_jump <= D_b_jump;
        end
    end

endmodule
