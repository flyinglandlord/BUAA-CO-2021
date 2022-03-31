`timescale 1ns / 1ps
`include "def.v"
`include "ALU.v"
`include "CTRL.v"
`include "DM.v"
`include "GRF.v"
`include "IFU.v"
`include "CMP.v"
`include "EXT.v"
`include "NPC.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:46:54 11/12/2021 
// Design Name: 
// Module Name:    mips 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mips(
    input clk,
    input reset
    );

    wire[4:0] addr_rt, addr_rd, addr_rs, shamt;
    wire[15:0] imm16;
    wire[25:0] imm26;
    wire[31:0] imm32;
    wire[31:0] pc, npc, pc4;
    wire[31:0] grf_rd1, grf_rd2;
    wire[31:0] alu_ans;
    wire[31:0] dm_rd;
    wire[31:0] instr;

    wire jump;
    //wire overflow;
    wire[3:0] ALUOp;
    wire[2:0] CMPOp;
    wire[2:0] DMOp;
    wire[1:0] GRFA3Sel, GRFWDSel;
    wire ALUBSel, DMWrEn, EXTOp, GRFWrEn;
    wire[2:0] NPCOp;

    IFU _ifu(
        .reset(reset),
        .clk(clk),
        .NPC(npc),
        .PC(pc),
        .Instr(instr)
    );

    NPC _npc(
        .PC(pc),
        .imm26(imm26),
        .imm16(imm16),
        .rs(grf_rd1),
        .jump(jump),
        .NPCOp(NPCOp),
        .PC4(pc4),
        .NPC(npc)
    );

    CMP _cmp(
        .rs(grf_rd1),
        .rt(grf_rd2),
        .CMPOp(CMPOp),
        .jump(jump)
    );

    GRF _grf(
        .A1(addr_rs),
        .A2(addr_rt),
        .A3(
            (GRFA3Sel == `A3Sel_ra) ? 5'd31 :
            (GRFA3Sel == `A3Sel_rt) ? addr_rt : addr_rd
        ),
        .WD(
            (GRFWDSel == `WDSel_pc4) ? pc4 :
            (GRFWDSel == `WDSel_dmrd) ? dm_rd : alu_ans
        ),
        .PC(pc),
        .GRFWrEn(GRFWrEn),
        .reset(reset),
        .clk(clk),
        .RD1(grf_rd1),
        .RD2(grf_rd2)
    );

    ALU _alu(
        .A(grf_rd1),
        .B(
            (ALUBSel == `BSel_rt) ? grf_rd2 : imm32
        ),
        .ALUOp(ALUOp),
        .shamt(shamt),
        //.overflow(overflow),
        .C(alu_ans)
    );

    DM _dm(
        .Addr(alu_ans),
        .WD(grf_rd2),
        .PC(pc),
        .DMWrEn(DMWrEn),
        .DMOp(DMOp),
        .clk(clk),
        .reset(reset),
        .RD(dm_rd)
    );

    EXT _ext(
        .imm16(imm16),
        .EXTOp(EXTOp),
        .out32(imm32)
    );

    CTRL _ctrl(
        .Instr(instr),
        .jump(jump),
        //.overflow(overflow)
        .rt(addr_rt),
        .rs(addr_rs),
        .rd(addr_rd),
        .shamt(shamt),
        .imm16(imm16),
        .imm26(imm26),
        .ALUOp(ALUOp),
        .CMPOp(CMPOp),
        .DMOp(DMOp),
        .GRFA3Sel(GRFA3Sel),
        .GRFWDSel(GRFWDSel),
        .ALUBSel(ALUBSel),
        .DMWrEn(DMWrEn),
        .EXTOp(EXTOp),
        .GRFWrEn(GRFWrEn),
        .NPCOp(NPCOp)
    );

endmodule
