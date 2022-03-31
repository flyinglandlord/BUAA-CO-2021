`timescale 1ns / 1ps
`include "def.v"

////////////////////////////////////////////////////////////////////////////////
// Company: Beijing University of Aeronautic and Astronautic
// Engineer: Chen Junyi 
//
// Create Date:   19:25:35 11/12/2021
// Design Name:   mips
// Module Name:   G:/MyWorkspace/Computer_Organization/P4/P4_L0_CPU/mips_tb.v
// Project Name:  P6_L0_CPU
// Target Device:  None
// Tool versions:  Vivado 2020.1
// Description: MIPS Pipeline CPU Testbench
//
// Verilog Test Fixture created by ISE for module: mips
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mips(
    input clk,
    input reset,

    input [31:0] i_inst_addr,
    output [31:0] i_inst_rdata,

    output [31:0] m_data_addr,
    output [31:0] m_data_wdata,
    output [3:0] m_data_byteen,

    input [31:0] m_data_rdata,
    output [31:0] m_inst_addr,

    output w_grf_we,
    output [4:0] w_grf_addr,
    output [31:0] w_grf_wdata,

    output [31:0] w_inst_addr
    );
    
    // 流水线各级当前的PC地址, 各级正在执行的指令Instr
    wire [31:0] NPC;
    wire [31:0] F_PC, F_Instr;
    wire [31:0] D_PC, D_Instr;
    wire [31:0] E_PC, E_Instr;
    wire [31:0] M_PC, M_Instr;
    wire [31:0] W_PC, W_Instr;

    // 流水线各级当前即将将要写入的寄存器地址，如果没有就是5'b00000，记作GRFA3
    // 流水线各级即将写入寄存器的值，如果没有就是32'bz，记作GRFWD
    wire [4:0] F_GRFA3, D_GRFA3, E_GRFA3, M_GRFA3, W_GRFA3;
    wire [31:0] F_GRFWD, D_GRFWD, E_GRFWD, M_GRFWD, W_GRFWD;

    // branch指令是否跳转的信号，如果当前流水想级内部不是b型指令，则忽略
    wire D_b_jump, E_b_jump, M_b_jump, W_b_jump;

    // 控制Stall的信息
    wire Stall;
    wire E_MDU_Busy;
    wire E_MDU_Start;
    //写使能
    wire FD_REG_WrEn, DE_REG_WrEn, EM_REG_WrEn, MW_REG_WrEn;
    wire PC_WrEn;    
    //插入nop的flush控制信号
    wire FD_REG_Flush, DE_REG_Flush, EM_REG_Flush, MW_REG_Flush;

    stall stall_CTRL(
        .D_Instr(D_Instr),
        .E_Instr(E_Instr),
        .M_Instr(M_Instr),

        .E_MDU_Start(E_MDU_Start),
        .E_MDU_Busy(E_MDU_Busy),

        .Stall(Stall)
    );

    assign FD_REG_WrEn = !Stall;
    assign DE_REG_WrEn = 1'b1;
    assign EM_REG_WrEn = 1'b1;
    assign MW_REG_WrEn = 1'b1;

    assign PC_WrEn = !Stall;    

    assign FD_REG_Flush = 1'b0;
    assign DE_REG_Flush = Stall;
    assign EM_REG_Flush = 1'b0;
    assign MW_REG_Flush = 1'b0;   

    // 处理Forward的信息
    // 将在每一级处理各级的转发数据
    // 注意需要流水转发数据（如果选择了转发数据的话），而非原始数据
    wire[31:0] D_FWD_rs_data, D_FWD_rt_data;
    wire[31:0] E_FWD_rs_data, E_FWD_rt_data;
    wire[31:0] M_FWD_rt_data;

    // F级Fetch
    F_PC _pc(
        .clk(clk),
        .reset(reset),

        .PC_WrEn(PC_WrEn),
        .NPC(NPC),

        .PC(F_PC)
    );

    assign i_inst_addr = F_PC;
    assign F_Instr = i_inst_rdata;

    // FD级寄存器
    FD_REG _fd_reg(
        .clk(clk),
        .reset(reset),
        .flush(FD_REG_Flush),
        .WrEn(FD_REG_WrEn),
        
        .F_PC(F_PC),
        .F_Instr(F_Instr),

        .D_PC(D_PC),
        .D_Instr(D_Instr)
    );

    // D级解码得到的信息
    wire [4:0] D_rs_addr, D_rt_addr;
    wire [15:0] D_imm16;
    wire [25:0] D_imm26;

    // D级需要的控制信号
    wire [2:0] D_CMPOp;
    wire [2:0] D_NPCOp;
    wire D_EXTOp;
    
    // D级得到的有用的信息
    wire [31:0] D_rs_data, D_rt_data;
    wire [31:0] D_ext32;

    // D级Decode
    control D_CTRL(
        .Instr(D_Instr),
        
        .rs(D_rs_addr),
        .rt(D_rt_addr),
        .imm16(D_imm16),
        .imm26(D_imm26),
        .CMPOp(D_CMPOp),
        .NPCOp(D_NPCOp),
        .EXTOp(D_EXTOp)
    );

    D_GRF _grf(
        .clk(clk),
        .reset(reset),
        
        .A1(D_rs_addr),
        .A2(D_rt_addr),

        .PC(W_PC),
        .A3(W_GRFA3),
        .WD(W_GRFWD),

        .RD1(D_rs_data),
        .RD2(D_rt_data)
    );

    assign w_grf_addr = W_GRFA3;
    assign w_grf_wdata = W_GRFWD;
    assign w_grf_we = W_GRFWrEn;
    assign w_inst_addr = W_PC;

    D_EXT _ext(
        .imm16(D_imm16),
        .EXTOp(D_EXTOp),
        .ext32(D_ext32)
    );

    assign D_FWD_rs_data = (D_rs_addr == 0) ? 0 :
                           (D_rs_addr == E_GRFA3) ? E_GRFWD :
                           (D_rs_addr == M_GRFA3) ? M_GRFWD :
                           D_rs_data;
    
    assign D_FWD_rt_data = (D_rt_addr == 0) ? 0 :
                           (D_rt_addr == E_GRFA3) ? E_GRFWD :
                           (D_rt_addr == M_GRFA3) ? M_GRFWD :
                           D_rt_data;

    D_CMP _cmp(
        .CMPOp(D_CMPOp),
        .rsData(D_FWD_rs_data),
        .rtData(D_FWD_rt_data),
        .jump(D_b_jump)
    );

    D_NPC _npc(
        .NPCOp(D_NPCOp),
        .D_PC(D_PC),
        .F_PC(F_PC),
        .b_jump(D_b_jump),
        .imm26(D_imm26),
        .imm16(D_imm16),
        .rs(D_FWD_rs_data),
        .NPC(NPC)
    );

    // E级需要得到的信息
    wire [31:0] E_rs_data, E_rt_data;
    wire [31:0] E_ext32;

    // DE级寄存器
    DE_REG _de_reg(
        .clk(clk),
        .reset(reset),
        .flush(DE_REG_Flush),
        .WrEn(DE_REG_WrEn),

        .D_PC(D_PC),
        .D_Instr(D_Instr),
        .D_ext32(D_ext32),
        .D_rs_data(D_FWD_rs_data),
        .D_rt_data(D_FWD_rt_data),
        .D_b_jump(D_b_jump),

        .E_PC(E_PC),
        .E_Instr(E_Instr),
        .E_rs_data(E_rs_data),
        .E_rt_data(E_rt_data),
        .E_ext32(E_ext32),
        .E_b_jump(E_b_jump)
    );

    // E级译码得到的信息
    wire [4:0] E_rs_addr, E_rt_addr;
    wire [4:0] E_ALUshamt;

    // E级得到的控制信号
    wire [3:0] E_ALUOp;
    wire [1:0] E_ALUASel, E_ALUBSel, E_GRFWDSel;
    wire [2:0] E_MDUOp;
    
    // E级Execute
    control E_CTRL(
        .Instr(E_Instr),
        .b_jump(E_b_jump),
        
        .rs(E_rs_addr),
        .rt(E_rt_addr),
        .shamt(E_ALUshamt),

        .ALUOp(E_ALUOp),
        .ALUASel(E_ALUASel),
        .ALUBSel(E_ALUBSel),
        .GRFA3(E_GRFA3),
        .GRFWDSel(E_GRFWDSel),
        .MDUOp(E_MDUOp),
        .MDUStart(E_MDU_Start)
    );

    assign E_FWD_rs_data = (E_rs_addr == 0) ? 0 :
                           (E_rs_addr == M_GRFA3) ? M_GRFWD :
                           (E_rs_addr == W_GRFA3) ? W_GRFWD :
                           E_rs_data;

    assign E_FWD_rt_data = (E_rt_addr == 0) ? 0 :
                           (E_rt_addr == M_GRFA3) ? M_GRFWD :
                           (E_rt_addr == W_GRFA3) ? W_GRFWD :
                           E_rt_data;

    assign E_GRFWD = E_GRFWDSel == `WDSel_pc8 ? E_PC + 8 :
                     32'bz;
    
    
    wire [31:0] E_ALUAns;

    wire [31:0] E_ALUA = (E_ALUASel == `ASel_rt) ? E_FWD_rt_data :
                         (E_ALUASel == `ASel_rs) ? E_FWD_rs_data :
                         0;
    
    wire [31:0] E_ALUB = (E_ALUBSel == `BSel_rt) ? E_FWD_rt_data :
                         (E_ALUBSel == `BSel_imm) ? E_ext32 :
                         (E_ALUBSel == `BSel_shamt) ? {27'b0, E_ALUshamt} :
                         (E_ALUBSel == `BSel_rs) ? {27'b0, E_FWD_rs_data[4:0]} :
                         0;
    
    E_ALU _alu(
        .A(E_ALUA),
        .B(E_ALUB),
        .ALUOp(E_ALUOp),
        .C(E_ALUAns)
    );

    // 乘除槽给出的信息，包括HI和LO两个寄存器的值，需要根据是mflo还是mfhi指令选一个
    wire [31:0] E_MDUAns;
    wire [31:0] E_MDU_HI, E_MDU_LO;

    // 我们认为mtlo和mthi两个向LO和HI写的指令，要写的数据rs在D1处，直接写入
    E_MDU _mdu(
        .clk(clk),
        .reset(reset),
        
        .MDUOp(E_MDUOp),
        .D1(E_FWD_rs_data),
        .D2(E_FWD_rt_data),
        .Start(E_MDU_Start),
        
        .Busy(E_MDU_Busy),
        .HI(E_MDU_HI),
        .LO(E_MDU_LO)
    );

    assign E_MDUAns = (E_MDUOp == `MDU_mfhi) ? E_MDU_HI :
                      (E_MDUOp == `MDU_mflo) ? E_MDU_LO :
                      32'bz;

    // M级需要得到的信息
    wire [31:0] M_ALUAns;       // 有可能是DM写入/读取的地址
    wire [31:0] M_MDUAns;
    wire [31:0] M_rt_data;      // 有可能是DM待写入的值
    wire [31:0] M_ext32;        // 保留用，可能扩展指令会用到

    // EM寄存器
    EM_REG _em_reg(
        .clk(clk),
        .reset(reset),
        .flush(EM_REG_Flush),
        .WrEn(EM_REG_WrEn),

        .E_PC(E_PC),
        .E_Instr(E_Instr),
        .E_ALUAns(E_ALUAns),
        .E_rt_data(E_FWD_rt_data),
        .E_ext32(E_ext32),
        .E_b_jump(E_b_jump),
        .E_MDUAns(E_MDUAns),

        .M_PC(M_PC),
        .M_Instr(M_Instr),
        .M_ALUAns(M_ALUAns),
        .M_rt_data(M_rt_data),
        .M_ext32(M_ext32),
        .M_b_jump(M_b_jump),
        .M_MDUAns(M_MDUAns)
    );

    // M级译码得到的信息
    wire [4:0] M_rt_addr;

    // M级得到的控制信号
    wire [1:0] M_BEOp;
    wire [2:0] M_DEOp;
    wire [1:0] M_GRFWDSel;

    // M级Memory
    control M_CTRL(
        .Instr(M_Instr),
        .b_jump(M_b_jump),

        .rt(M_rt_addr),
        .BEOp(M_BEOp),
        .DEOp(M_DEOp),
        .GRFA3(M_GRFA3),
        .GRFWDSel(M_GRFWDSel)
    );

    assign M_FWD_rt_data = (M_rt_addr == 0) ? 0 :
                           (M_rt_addr == W_GRFA3) ? W_GRFWD :
                           M_rt_data;

    assign M_GRFWD = M_GRFWDSel == `WDSel_pc8 ? M_PC + 8 :
                     M_GRFWDSel == `WDSel_aluans ? M_ALUAns :
                     M_GRFWDSel == `WDSel_mduans ? M_MDUAns :
                     32'bz;

    M_BE _be(
        .BEOp(M_BEOp),
        .Addr(M_ALUAns),
        .rt_data(M_FWD_rt_data),
        .m_data_byteen(m_data_byteen),
        .m_data_wdata(m_data_wdata)
    );

    assign m_inst_addr = M_PC;
    assign m_data_addr = M_ALUAns;

    wire [31:0] M_DMRD;

    M_DE _de(
        .DEOp(M_DEOp),
        .Addr(M_ALUAns),
        .m_data_rdata(m_data_rdata),
        .DMRD(M_DMRD)
    );

    // W级需要得到的信息
    wire [31:0] W_ALUAns;       // 可能需要写回寄存器的值
    wire [31:0] W_DMRD;         // 可能需要回写寄存器的值
    wire [31:0] W_MDUAns;

    // M/W寄存器
    MW_REG _mw_reg(
        .clk(clk),
        .reset(reset),
        .flush(MW_REG_Flush),
        .WrEn(MW_REG_WrEn),

        .M_PC(M_PC),
        .M_Instr(M_Instr),
        .M_ALUAns(M_ALUAns),
        .M_DMRD(M_DMRD),
        .M_b_jump(M_b_jump),
        .M_MDUAns(M_MDUAns),

        .W_PC(W_PC),
        .W_Instr(W_Instr),
        .W_ALUAns(W_ALUAns),
        .W_DMRD(W_DMRD),
        .W_b_jump(W_b_jump),
        .W_MDUAns(W_MDUAns)
    );

    wire W_GRFWrEn;
    wire [1:0] W_GRFWDSel;

    // W级WriteBack
    control W_CTRL(
        .Instr(W_Instr),
        .b_jump(W_b_jump),
        
        .GRFA3(W_GRFA3),
        .GRFWDSel(W_GRFWDSel),
        .GRFWrEn(W_GRFWrEn)
    );

    assign W_GRFWD = W_GRFWDSel == `WDSel_pc8 ? W_PC + 8 :
                     W_GRFWDSel == `WDSel_aluans ? W_ALUAns :
                     W_GRFWDSel == `WDSel_dmrd ? W_DMRD :
                     W_GRFWDSel == `WDSel_mduans ? W_MDUAns :
                     32'dz;

endmodule
