`timescale 1ns / 1ps

`include "def.v"

module NPC(
    input [31:0] PC,
    input [25:0] imm26,
    input [15:0] imm16,
    input [31:0] rs,
    input jump,
    input [2:0] NPCOp,
    output [31:0] PC4,
    output [31:0] NPC
    );

    assign PC4 = PC + 4;

    assign NPC = (NPCOp == `NPC_pc4) ? (PC + 4) :
                 (NPCOp == `NPC_j_jal) ? {PC[31:28], imm26, 2'b00} :
                 (NPCOp == `NPC_jr_jalr) ? rs :
                 (NPCOp == `NPC_b && jump) ? (PC + 4 + {{14{imm16[15]}}, imm16, 2'b00}) :
                 PC4;

endmodule
