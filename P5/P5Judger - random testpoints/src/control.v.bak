`timescale 1ns / 1ps
`include "def.v"


module control(
    input [31:0] Instr,

    output [4:0] rt,
    output [4:0] rs,
    output [4:0] rd,
    output [4:0] shamt,
    output [15:0] imm16,
    output [25:0] imm26,

    output [3:0] ALUOp,
    output [2:0] CMPOp,
    output [2:0] DMOp,
    output [4:0] GRFA3,
    output [1:0] GRFWDSel,
    output [1:0] ALUBSel,
    output [1:0] ALUASel,
    output DMWrEn,
    output EXTOp,
    //output GRFWrEn,
    output [2:0] NPCOp,

    output load,
    output store,
    output calc_r,
    output calc_i,
    output shift_s,
    output shift_v,
    output branch,
    output jump_reg,
    output jump_addr,
    output jump_link
    );

    // 译码部分
    wire [5:0] opcode = Instr[31:26];
    wire [5:0] funct = Instr[5:0];
    assign rs = Instr[25:21];
    assign rt = Instr[20:16];
    assign rd = Instr[15:11];
    assign imm16 = Instr[15:0];
    assign imm26 = Instr[25:0];
    assign shamt = Instr[10:6];

    // 处理指令部分
    wire addu = (opcode == `op_R && funct == `fun_ADDU);
    wire subu = (opcode == `op_R && funct == `fun_SUBU);
    wire ori = (opcode == `op_ORI);
    wire lui = (opcode == `op_LUI);
    wire lw = (opcode == `op_LW);
    wire sw = (opcode == `op_SW);
    wire beq = (opcode == `op_BEQ);
    wire j = (opcode == `op_J);
    wire jal = (opcode == `op_JAL);
    wire jr = (opcode == `op_JR && funct == `fun_JR);
    wire jalr = (opcode == `op_JALR && funct == `fun_JALR);

    // Additional, Not in MIPS-lite2 Instruction Set
    wire lb = (opcode == `op_LB);
    wire sb = (opcode == `op_SB);
    wire lh = (opcode == `op_LH);
    wire sh = (opcode == `op_SH);
    wire lbu = (opcode == `op_LBU);
    wire lhu = (opcode == `op_LHU);
    wire slt = (opcode == `op_R && funct == `fun_SLT);
    wire sll = (opcode == `op_R && funct == `fun_SLL);
    wire sllv = (opcode == `op_R && funct == `fun_SLLV);
    //wire bltzal = (opcode == `op_BLTZAL && rt == 5'b10000);


    // 控制信号生成部分
    assign ALUOp = (addu | load | store) ? `ALU_add :
                   (subu) ? `ALU_sub :
                   (ori) ? `ALU_or :
                   (lui) ? `ALU_lui :
                   (slt) ? `ALU_slt :
                   4'b0000;
    assign EXTOp = (beq | load | store) ? `EXT_sign :
                   `EXT_unsign;
    assign CMPOp = (beq) ? `CMP_beq :
                   3'b000;
    assign NPCOp = (beq) ? `NPC_b :
                   (jump_addr) ? `NPC_j_jal :
                   (jump_reg) ? `NPC_jr_jalr :
                   `NPC_pc4;
    assign DMOp = (lw | sw) ? `DM_w :
                  (lh | sh) ? `DM_h :
                  (lb | sb) ? `DM_b :
                  (lhu) ? `DM_hu :
                  `DM_bu;
    //assign GRFWrEn = !(sw | beq | j | sh | sb | jr);
    assign DMWrEn = (store);
    assign GRFWDSel = (jump_link) ? `WDSel_pc8 :
                      (load) ? `WDSel_dmrd :
                      `WDSel_aluans;

    assign GRFA3 = (calc_r | jalr) ? rd :
                   (calc_i | load) ? rt :
                   (jal) ? 5'd31 :
                   5'd0;

    assign ALUBSel = (calc_r) ? `BSel_rt : 
                     (calc_i | load | store) ? `BSel_imm :
                     (shift_s) ? `BSel_shamt :
                     (shift_v) ? `BSel_rs :
                     `BSel_rt;

    assign ALUASel = (shift_s | shift_v) ? `ASel_rt :
                     `ASel_rs;


    // 对指令进行分类
    assign load   = lw | lh | lhu | lbu | lb;
    assign store  = sw | sh | sb;
    assign branch = beq; //| bne | blez | bgtz | bgez | bltz;

    //assign calc_r = add | addu | sub | subu | slt | sltu |
    //                sll | sllv | srl | srlv | sra | srav |
    //                And | Or | Xor | Nor; 
    assign calc_r = addu | subu | slt | sll | sllv;
    assign calc_i = ori | lui;
    //assign calc_i = addi | addiu | andi | ori | xori |
    //                slti | sltiu; 

    //assign md = mult | multu | div | divu;
    //assign mt = mtlo | mthi;
    //assign mf = mflo | mfhi;

    assign shift_s  = sll;
    assign shift_v = sllv;

    assign jump_reg = jr | jalr;
    assign jump_addr = j | jal;
    assign jump_link = jal | jalr;
endmodule
