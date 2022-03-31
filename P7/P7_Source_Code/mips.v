`timescale 1ns / 1ps
`include "mips_CPU.v"

module mips(
    input clk,                       // 时钟信号
    input reset,                     // 同步复位信号
    input interrupt,                 // 外部中断信号
    output [31:0] macroscopic_pc,    // 宏观 PC（见下文）

    output [31:0] i_inst_addr,       // 取指 PC
    input  [31:0] i_inst_rdata,      // i_inst_addr 对应的 32 位指令

    output [31:0] m_data_addr,       // 数据存储器待写入地址
    input  [31:0] m_data_rdata,      // m_data_addr 对应的 32 位数据
    output [31:0] m_data_wdata,      // 数据存储器待写入数据
    output [3:0] m_data_byteen,      // 字节使能信号

    output [31:0] m_inst_addr,       // M 级PC

    output w_grf_we,                 // grf 写使能信号
    output [4 :0] w_grf_addr,        // grf 待写入寄存器编号
    output [31:0] w_grf_wdata,       // grf 待写入数据

    output [31:0] w_inst_addr        // W 级 PC
);

    wire [31:0] tmp_m_data_wdata, tmp_m_data_addr;
    wire [3:0] tmp_m_data_byteen;
    wire [31:0] tmp_m_data_rdata;

    wire [31:0] bridge_m_data_addr;
    wire [3:0] bridge_m_data_byteen;

    wire [5:0] HWInt = {3'b0, interrupt, TC1_IRQ, TC0_IRQ};

    wire [31:0] TC0_Addr, TC0_Din, TC0_Dout;
    wire TC0_WD;

    wire [31:0] TC1_Addr, TC1_Din, TC1_Dout;
    wire TC1_WD;

    mips_CPU _cpu(
        .clk(clk),
        .reset(reset),
        .HWInt(HWInt),
        .macroscopic_pc(macroscopic_pc),

        .i_inst_addr(i_inst_addr),
        .i_inst_rdata(i_inst_rdata),

        .m_data_addr(tmp_m_data_addr),
        .m_data_wdata(tmp_m_data_wdata),
        .m_data_byteen(tmp_m_data_byteen),

        .m_data_rdata(tmp_m_data_rdata),
        .m_inst_addr(m_inst_addr),

        .w_grf_we(w_grf_we),
        .w_grf_addr(w_grf_addr),
        .w_grf_wdata(w_grf_wdata),

        .w_inst_addr(w_inst_addr),
        .TestIntResponse(TestIntResponse)
    );

    assign m_data_addr = (TestIntResponse && interrupt) ? 32'h0000_7f20 : bridge_m_data_addr;
    assign m_data_byteen = (TestIntResponse && interrupt) ? 1 : bridge_m_data_byteen;

    Bridge _bridge(
        .m_data_addr(bridge_m_data_addr),
        .m_data_wdata(m_data_wdata),
        .m_data_byteen(bridge_m_data_byteen),
        .m_data_rdata(m_data_rdata),

        .tmp_m_data_addr(tmp_m_data_addr),
        .tmp_m_data_wdata(tmp_m_data_wdata),
        .tmp_m_data_byteen(tmp_m_data_byteen),
        .tmp_m_data_rdata(tmp_m_data_rdata),

        .TC0_Addr(TC0_Addr),
        .TC0_WE(TC0_WE),
        .TC0_Din(TC0_Din),
        .TC0_Dout(TC0_Dout),

        .TC1_Addr(TC1_Addr),
        .TC1_WE(TC1_WE),
        .TC1_Din(TC1_Din),
        .TC1_Dout(TC1_Dout)
    );

    TC _tc0(
        .clk(clk),
        .reset(reset),
        .Addr(TC0_Addr[31:2]),
        .WE(TC0_WE),
        .Din(TC0_Din),
        .Dout(TC0_Dout),
        .IRQ(TC0_IRQ)
    );

    TC _tc1(
        .clk(clk),
        .reset(reset),
        .Addr(TC1_Addr[31:2]),
        .WE(TC1_WE),
        .Din(TC1_Din),
        .Dout(TC1_Dout),
        .IRQ(TC1_IRQ)
    );

endmodule
