`timescale 1ns / 1ps
`include "def.v"

module F_PC(
    input clk,
    input reset,
    input PC_WrEn,
    input [31:0] NPC,
    output reg [31:0] PC
    );

    always @(posedge clk) begin
        if(reset) begin
            PC <= 32'h0000_3000;
        end else if(PC_WrEn) begin
            PC <= NPC;
        end
    end

endmodule
