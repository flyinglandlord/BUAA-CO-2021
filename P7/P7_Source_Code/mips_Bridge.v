`timescale 1ns / 1ps

`define StartAddrTC0        32'h0000_7f00
`define EndAddrTC0          32'h0000_7f0b
`define StartAddrTC1        32'h0000_7f10
`define EndAddrTC1          32'h0000_7f1b

module Bridge(
    output [31:0] m_data_addr,
    output [31:0] m_data_wdata,
    output [3:0] m_data_byteen,
    input [31:0] m_data_rdata,

    input [31:0] tmp_m_data_addr,
    input [31:0] tmp_m_data_wdata,
    input [3:0] tmp_m_data_byteen,
    output [31:0] tmp_m_data_rdata,

    output [31:0] TC0_Addr,
    output TC0_WE,
    output [31:0] TC0_Din,
    input [31:0] TC0_Dout,

    output [31:0] TC1_Addr,
    output TC1_WE,
    output [31:0] TC1_Din,
    input [31:0] TC1_Dout
    );

    assign m_data_addr = tmp_m_data_addr;
    assign TC0_Addr = tmp_m_data_addr;
    assign TC1_Addr = tmp_m_data_addr;

    assign TC0_Din = tmp_m_data_wdata;
    assign TC1_Din = tmp_m_data_wdata;
    assign m_data_wdata = tmp_m_data_wdata;

    wire SelTC0 = (tmp_m_data_addr >= `StartAddrTC0) && (tmp_m_data_addr <= `EndAddrTC0),
         SelTC1 = (tmp_m_data_addr >= `StartAddrTC1) && (tmp_m_data_addr <= `EndAddrTC1);

    wire WE = (| tmp_m_data_byteen);

    assign TC0_WE = WE && SelTC0;
    assign TC1_WE = WE && SelTC1;
    assign m_data_byteen = (SelTC0 || SelTC1) ? 4'd0 :
                          tmp_m_data_byteen;
    
    assign tmp_m_data_rdata = (SelTC0) ? TC0_Dout :
                              (SelTC1) ? TC1_Dout :
                              m_data_rdata;

endmodule
