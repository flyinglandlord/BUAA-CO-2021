`timescale 1ns / 1ps
`include "def.v"

module DE_REG(
    input clk,
    input reset,
    input flush,
    input WrEn,

    input Req, 
    input Stall,

    input [31:0] D_PC,
    input [31:0] D_Instr,
    input [31:0] D_ext32,
    input [31:0] D_rs_data,
    input [31:0] D_rt_data,
    input D_b_jump,

    input D_DelaySlot,
    input [4:0] D_EXCCode,

    output reg [31:0] E_PC,
    output reg [31:0] E_Instr,
    output reg [31:0] E_ext32,
    output reg [31:0] E_rs_data,
    output reg [31:0] E_rt_data,
    output reg E_b_jump,

    output reg E_DelaySlot,
    output reg [4:0] E_EXCCode
    );

    initial begin
        E_PC <= 32'd0;
        E_Instr <= 32'd0;
        E_rs_data <= 32'd0;
        E_rt_data <= 32'd0;
        E_ext32 <= 32'd0;
        E_b_jump <= 0;      

        E_DelaySlot <= 0;
        E_EXCCode <= 0;  
    end

    always @(posedge clk) begin
        if(flush || reset || Req || Stall) begin
            E_PC <= Stall ? D_PC : (Req ? 32'h0000_4180: 32'd0);
            E_Instr <= 32'd0;
            E_rs_data <= 32'd0;
            E_rt_data <= 32'd0;
            E_ext32 <= 32'd0;
            E_b_jump <= 0;

            E_DelaySlot <= Stall ? D_DelaySlot : 0;
            E_EXCCode <= Stall ? D_EXCCode : 32'd0;  
        end else if(WrEn) begin
            E_PC <= D_PC;
            E_Instr <= D_Instr;
            E_rs_data <= D_rs_data;
            E_rt_data <= D_rt_data;
            E_ext32 <= D_ext32;
            E_b_jump <= D_b_jump;

            E_DelaySlot <= D_DelaySlot;
            E_EXCCode <= D_EXCCode; 
        end
    end

endmodule
