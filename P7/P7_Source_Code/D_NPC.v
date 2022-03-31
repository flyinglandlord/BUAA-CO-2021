`timescale 1ns / 1ps
`include "def.v"

module D_NPC(
    input Req,
    input eret,
    input [31:0] EPC,

    input [2:0] NPCOp,
    input [31:0] D_PC,
    input [31:0] F_PC,
    input b_jump,
    input [25:0] imm26,
    input [15:0] imm16,
    input [31:0] rs,

    output [31:0] NPC,
    output F_DelaySlot
    );

    // 关于延迟槽
    // j, b型指令均有延迟槽，因为其为有条件跳转，需要在D级才能得知跳转结果
    // 具体实现代码时, 一般来说F_PC + 4 = D_PC
    // 因此我们对于b型指令，写D_PC + 4 + {{14{imm16[15]}}, imm16, 2'b00}已经考虑了延迟槽
    // 对于j型指令，我们写F_PC[31:28]和D_PC[31:28]效果相同
    // 对于default情况，我们必然写F_PC + 4，即顺序执行下一条指令
    // F_PC为F级当前PC值，D_PC为D级当前PC值，也就是说，我们的NPC模块同时从F级和D级接收信息

    assign NPC = (Req) ? 32'h0000_4180 :
                 (eret) ? EPC + 4:
                 (NPCOp == `NPC_pc4) ? F_PC + 4 :
                 (NPCOp == `NPC_jr_jalr) ? rs :
                 (NPCOp == `NPC_b && b_jump) ? D_PC + 4 + {{14{imm16[15]}}, imm16, 2'b00} :
                 (NPCOp == `NPC_j_jal) ? {D_PC[31:28], imm26, 2'b00} :
                 F_PC + 4;
    
    assign F_DelaySlot = (NPCOp != `NPC_pc4);

endmodule
