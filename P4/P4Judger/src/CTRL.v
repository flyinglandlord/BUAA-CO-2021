`timescale 1ns / 1ps

`include "def.v"

module CTRL(
    input [31:0] Instr,
    input jump,
    //input overflow,

    output [4:0] rt,
    output [4:0] rs,
    output [4:0] rd,
    output [4:0] shamt,
    output [15:0] imm16,
    output [25:0] imm26,

    output [3:0] ALUOp,
    output [2:0] CMPOp,
    output [2:0] DMOp,
    output [1:0] GRFA3Sel,
    output [1:0] GRFWDSel,
    output ALUBSel,
    output DMWrEn,
    output EXTOp,
    output GRFWrEn,
    output [2:0] NPCOp
    );

    wire [5:0] opcode = Instr[31:26];
    wire [5:0] funct = Instr[5:0];
    assign rs = Instr[25:21];
    assign rt = Instr[20:16];
    assign rd = Instr[15:11];
    assign imm16 = Instr[15:0];
    assign imm26 = Instr[25:0];
    assign shamt = Instr[10:6];

    wire addu = (opcode == `op_ADDU && funct == `fun_ADDU);
    wire subu = (opcode == `op_SUBU && funct == `fun_SUBU);
    wire ori = (opcode == `op_ORI);
    wire lui = (opcode == `op_LUI);
    wire lw = (opcode == `op_LW);
    wire sw = (opcode == `op_SW);
    wire beq = (opcode == `op_BEQ);
    wire j = (opcode == `op_J);
    wire jal = (opcode == `op_JAL);
    wire jr = (opcode == `op_JR && funct == `fun_JR);
    wire lb = (opcode == `op_LB);
    wire sb = (opcode == `op_SB);
    wire lh = (opcode == `op_LH);
    wire sh = (opcode == `op_SH);
    wire lbu = (opcode == `op_LBU);
    wire lhu = (opcode == `op_LHU);
    wire slt = (opcode == `op_SLT && funct == `fun_SLT);

    assign ALUOp = (addu | lw | sw | lh | sh | lb | sb | lbu | lhu) ? `ALU_add :
                   (subu) ? `ALU_sub :
                   (ori) ? `ALU_or :
                   (lui) ? `ALU_lui :
                   (slt) ? `ALU_slt :
                   4'b0000;
    assign EXTOp = (beq | sw | lw | sh | lh | sb | lb | lbu | lhu) ? `EXT_sign :
                   `EXT_unsign;
    assign CMPOp = (beq) ? `CMP_beq :
                   3'b000;
    assign NPCOp = (beq) ? `NPC_b :
                   (j | jal) ? `NPC_j_jal :
                   (jr) ? `NPC_jr_jalr :
                   `NPC_pc4;
    assign DMOp = (lw | sw) ? `DM_w :
                  (lh | sh) ? `DM_h :
                  (lb | sb) ? `DM_b :
                  (lhu) ? `DM_hu :
                  `DM_bu;
    assign GRFWrEn = !(sw | beq | j | sh | sb | jr);
    assign DMWrEn = (sw | sb | sw);
    assign GRFWDSel = (jal) ? `WDSel_pc4 :
                      (lw) ? `WDSel_dmrd :
                      `WDSel_aluans;
    assign GRFA3Sel = (addu | subu | slt) ? `A3Sel_rd :
                      (jal) ? `A3Sel_ra :
                      `A3Sel_rt;
    assign ALUBSel = (addu | subu) ? `BSel_rt :
                     `BSel_imm;
endmodule
