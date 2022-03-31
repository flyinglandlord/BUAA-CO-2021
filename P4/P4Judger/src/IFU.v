`timescale 1ns / 1ps

`include "def.v"

module IFU(
    input reset,
    input clk,
    input [31:0] NPC,
    output reg[31:0] PC,
    output [31:0] Instr
    );

    reg[31:0] rom[0:1023];

    initial begin
        $readmemh("code.txt", rom);
        PC = 32'h0000_3000;
    end

    always @(posedge clk) begin
        if(reset) begin
            PC <= 32'h0000_3000;
        end else begin
            PC <= NPC;
        end
    end

    assign Instr = rom[PC[11:2]];
endmodule
