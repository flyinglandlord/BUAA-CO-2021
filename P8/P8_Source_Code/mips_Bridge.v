`timescale 1ns / 1ps
`include "def.v"

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

    output DT_Addr,
    output [3:0] dt_data_byteen,
    output [31:0] DT_Din,
    input [31:0] DT_Dout,

    input [31:0] KEY_Dout,

    output DIP_SWITCH_Addr,
    input [31:0] DIP_SWITCH_Dout,

    output [3:0] led_data_byteen,
    output [31:0] LED_Din,

    output [31:0] UART_Din,
    input [31:0] UART_Dout,
    output [31:0] UART_Addr,
    output UART_WE
    );

    assign m_data_addr = tmp_m_data_addr;
    assign TC0_Addr = tmp_m_data_addr;
    assign DT_Addr = tmp_m_data_addr[2];
    assign DIP_SWITCH_Addr = tmp_m_data_addr[2];
    assign UART_Addr = tmp_m_data_addr - 32'h7f20;

    assign TC0_Din = tmp_m_data_wdata;
    assign m_data_wdata = tmp_m_data_wdata;
    assign DT_Din = tmp_m_data_wdata;
    assign LED_Din = tmp_m_data_wdata;
    assign UART_Din = tmp_m_data_wdata;

    wire SelTC0 = (tmp_m_data_addr >= `StartAddrTC0) && (tmp_m_data_addr <= `EndAddrTC0);
    wire SelDigitalTube = (tmp_m_data_addr >= `StartAddrDigTube) && (tmp_m_data_addr <= `EndAddrDigTube);
    wire SelUART = (tmp_m_data_addr >= `StartAddrUART) && (tmp_m_data_addr <= `EndAddrUART);
    
    wire SelKey_only_read = (tmp_m_data_addr >= `StartAddrKey) && (tmp_m_data_addr <= `EndAddrKey);
    wire SelSwitch_only_read = (tmp_m_data_addr >= `StartAddrSwitch) && (tmp_m_data_addr <= `EndAddrSwitch);

    wire SelLED_only_write = ((tmp_m_data_addr >= `StartAddrLED) && (tmp_m_data_addr <= `EndAddrLED));

    wire WE = (| tmp_m_data_byteen);

    assign TC0_WE = WE && SelTC0;
    assign dt_data_byteen = (SelDigitalTube) ? tmp_m_data_byteen : 4'b0000;
    assign led_data_byteen = (SelLED_only_write) ? tmp_m_data_byteen : 4'b0000;
    assign UART_WE = WE && SelUART;
    assign m_data_byteen = (SelTC0 || SelDigitalTube || SelLED_only_write || SelUART) ? 4'b0000 :
                           tmp_m_data_byteen;
    
    assign tmp_m_data_rdata = (SelTC0) ? TC0_Dout :
                              (SelDigitalTube) ? DT_Dout :
                              (SelKey_only_read) ? KEY_Dout :
                              (SelSwitch_only_read) ? DIP_SWITCH_Dout :
                              (SelUART) ? UART_Dout :
                              m_data_rdata;

endmodule
