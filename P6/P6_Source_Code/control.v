`timescale 1ns / 1ps
`include "def.v"


module control(
    input [31:0] Instr,
    input b_jump,

    output [4:0] rt,
    output [4:0] rs,
    output [4:0] rd,
    output [4:0] shamt,
    output [15:0] imm16,
    output [25:0] imm26,

    output [3:0] ALUOp,
    output [2:0] CMPOp,
    //output [2:0] DMOp,
    output [1:0] BEOp,
    output [2:0] DEOp,
    output [2:0] MDUOp,
    output MDUStart,
    output [4:0] GRFA3,
    output [1:0] GRFWDSel,
    output [1:0] ALUBSel,
    output [1:0] ALUASel,
    output EXTOp,
    output GRFWrEn,    // 写零号寄存器等于不写...因此不再需要写使能了
    output DMWrEn,
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
    output jump_link,
    output md,
    output mt,
    output mf
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


    // 处理指令部分，MIPS-C3指令集
    // calc_r型指令
    wire addu = (opcode == `op_R && funct == `fun_ADDU);
    wire subu = (opcode == `op_R && funct == `fun_SUBU);

    wire add = (opcode == `op_R && funct == `fun_ADD);
    wire sub = (opcode == `op_R && funct == `fun_SUB);

    wire And = (opcode == `op_R && funct == `fun_AND);
    wire Or =  (opcode == `op_R && funct == `fun_OR);
    wire Xor = (opcode == `op_R && funct == `fun_XOR);
    wire Nor = (opcode == `op_R && funct == `fun_NOR);

    wire slt = (opcode == `op_R && funct == `fun_SLT);
    wire sltu = (opcode == `op_R && funct == `fun_SLTU);

    wire sll = (opcode == `op_R && funct == `fun_SLL);
    wire srl = (opcode == `op_R && funct == `fun_SRL);
    wire sra = (opcode == `op_R && funct == `fun_SRA);
    wire sllv = (opcode == `op_R && funct == `fun_SLLV);
    wire srlv = (opcode == `op_R && funct == `fun_SRLV);
    wire srav = (opcode == `op_R && funct == `fun_SRAV);

    wire mult = (opcode == `op_R && funct == `fun_MULT);
    wire multu = (opcode == `op_R && funct == `fun_MULTU);
    wire div = (opcode == `op_R && funct == `fun_DIV);
    wire divu = (opcode == `op_R && funct == `fun_DIVU);

    // calc_i型指令
    wire addi = (opcode == `op_ADDI);
    wire addiu = (opcode == `op_ADDIU);

    wire ori = (opcode == `op_ORI);
    wire lui = (opcode == `op_LUI);
    wire andi = (opcode == `op_ANDI);
    wire xori = (opcode == `op_XORI);

    wire slti = (opcode == `op_SLTI);
    wire sltiu = (opcode == `op_SLTIU);

    // branch分支型指令
    wire beq = (opcode == `op_BEQ);
    wire bne = (opcode == `op_BNE); 
    wire blez = (opcode == `op_BLEZ && rt == 5'b00000);
    wire bgtz = (opcode == `op_BGTZ && rt == 5'b00000);
    wire bltz = (opcode == `op_BLTZ && rt == 5'b00000);
    wire bgez = (opcode == `op_BGEZ && rt == 5'b00001);
    // wire bltzal = (opcode == 6'b000001 && rt == 5'b10000);

    // 写内存型指令
    wire sw = (opcode == `op_SW);
    wire sb = (opcode == `op_SB);
    wire sh = (opcode == `op_SH);

    // 读内存型指令
    wire lw = (opcode == `op_LW);
    wire lb = (opcode == `op_LB);
    wire lh = (opcode == `op_LH);
    wire lbu = (opcode == `op_LBU);
    wire lhu = (opcode == `op_LHU);

    // jump型跳转令
    wire j = (opcode == `op_J);
    wire jal = (opcode == `op_JAL);
    wire jr = (opcode == `op_JR && funct == `fun_JR);
    wire jalr = (opcode == `op_JALR && funct == `fun_JALR);

    //读乘除法寄存器
    wire mfhi = (opcode == `op_R && funct == `fun_MFHI);
    wire mflo = (opcode == `op_R && funct == `fun_MFLO);

    //写乘除法寄存器
    wire mthi = (opcode == `op_R && funct == `fun_MTHI);
    wire mtlo = (opcode == `op_R && funct == `fun_MTLO);    

    
    // 控制信号生成部分
    assign ALUOp = (sub | subu) ? `ALU_sub :
                   (And | andi) ? `ALU_and :
                   (Xor | xori) ? `ALU_xor :
                   (Or | ori) ? `ALU_or :
                   (Nor) ? `ALU_nor :
                   (lui) ? `ALU_lui :
                   (slt | slti) ? `ALU_slt :
                   (sltu | sltiu) ? `ALU_sltu :
                   (sll | sllv) ? `ALU_shift_left :
                   (srl | srlv) ? `ALU_shift_right_logic :
                   (sra | srav) ? `ALU_shift_right_algorithm :
                   `ALU_add;

    assign EXTOp = (load | store | (calc_i && !andi && !ori && !xori)) ? `EXT_sign :
                   `EXT_unsign;

    assign CMPOp = (beq) ? `CMP_beq :
                   (bltz) ? `CMP_bltz :
                   (bgtz) ? `CMP_bgtz :
                   (bne) ? `CMP_bne :
                   (bgez) ? `CMP_bgez :
                   `CMP_blez;

    assign NPCOp = (branch) ? `NPC_b :
                   (jump_addr) ? `NPC_j_jal :
                   (jump_reg) ? `NPC_jr_jalr :
                   `NPC_pc4;

    assign BEOp = (sw) ? `BE_sw :
                  (sh) ? `BE_sh :
                  (sb) ? `BE_sb :
                  `BE_none;

    assign DEOp = (lw) ? `DE_lw :
                  (lh) ? `DE_lh :
                  (lb) ? `DE_lb :
                  (lhu) ? `DE_lhu :
                  `DE_lbu;

    assign DMWrEn = (store);

    assign GRFWrEn = !((store) | (branch && !branch_link) | j | jr);

    assign GRFWDSel = (jump_link | branch_link) ? `WDSel_pc8 :
                      (load) ? `WDSel_dmrd :
                      (mf) ? `WDSel_mduans :
                      `WDSel_aluans;

    assign GRFA3 = (calc_r | jalr | mf) ? rd :
                   (calc_i | load) ? rt :
                   (jal | branch_link) ? 5'd31 :
                   5'd0;

    assign ALUBSel = (calc_r && !shift_s && !shift_v) ? `BSel_rt : 
                     (calc_i | load | store) ? `BSel_imm :
                     (shift_s) ? `BSel_shamt :
                     (shift_v) ? `BSel_rs :
                     `BSel_rt;

    assign ALUASel = (shift_s | shift_v) ? `ASel_rt :
                     `ASel_rs;

    assign MDUOp = (mult) ? `MDU_mult :
                   (multu) ? `MDU_multu :
                   (div) ? `MDU_div :
                   (divu) ? `MDU_divu :
                   (mtlo) ? `MDU_mtlo :
                   (mthi) ? `MDU_mthi :
                   (mflo) ? `MDU_mflo :
                   `MDU_mfhi;
    
    assign MDUStart = (md);

    // 对指令进行分类
    assign load   = lw | lh | lhu | lbu | lb;
    assign store  = sw | sh | sb;
    assign branch = beq | bne | blez | bgtz | bgez | bltz;
    // 现在看来好像都是无条件链接
    assign branch_link = 0;                // uc-unconditional 无条件链接
    //assign branch_c_link = 0;            // c-conditional 有条件链接

    assign calc_r = add | addu | sub | subu | slt | sltu |
                    sll | sllv | srl | srlv | sra | srav |
                    And | Or | Xor | Nor; 

    assign calc_i = addi | addiu | andi | ori | xori |
                    slti | sltiu | lui; 

    assign md = mult | multu | div | divu;
    assign mt = mtlo | mthi;
    assign mf = mflo | mfhi;

    assign shift_s = sll | srl | sra;
    assign shift_v = sllv | srlv | srav;


    assign jump_reg = jr | jalr;
    assign jump_addr = j | jal;
    assign jump_link = jal | jalr;
endmodule
