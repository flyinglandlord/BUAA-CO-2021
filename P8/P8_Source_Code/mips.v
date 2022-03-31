`timescale 1ns / 1ps

module mips (
    // clock and reset
    input clk_in,
    input sys_rstn,

    // dip switch
    input [7:0] dip_switch0,
    input [7:0] dip_switch1,
    input [7:0] dip_switch2,
    input [7:0] dip_switch3,
    input [7:0] dip_switch4,
    input [7:0] dip_switch5,
    input [7:0] dip_switch6,
    input [7:0] dip_switch7,

    // key
    input [7:0] user_key,

    // led
    output [31:0] led_light,

    // digital tube
    output [7:0] digital_tube2,
    output digital_tube_sel2,
    output [7:0] digital_tube1,
    output [3:0] digital_tube_sel1,
    output [7:0] digital_tube0,
    output [3:0] digital_tube_sel0,

    // uart
    input uart_rxd,
    output uart_txd
);

    wire [31:0] i_inst_addr;        // 取指 PC
    wire  [31:0] i_inst_rdata;      // i_inst_addr 对应的 32 位指令

    wire [31:0] m_data_addr;        // 数据存储器待写入地址
    wire  [31:0] m_data_rdata;      // m_data_addr 对应的 32 位数据
    wire [31:0] m_data_wdata;       // 数据存储器待写入数据
    wire [3:0] m_data_byteen;       // 字节使能信号

    wire [31:0] m_inst_addr;        // M 级PC
/*
    wire w_grf_we;                  // grf 写使能信号
    wire [4 :0] w_grf_addr;         // grf 待写入寄存器编号
    wire [31:0] w_grf_wdata;        // grf 待写入数据

    wire [31:0] w_inst_addr;        // W 级 PC
*/

    wire sys_rst = ~sys_rstn;

    wire [31:0] tmp_m_data_wdata, tmp_m_data_addr;
    wire [3:0] tmp_m_data_byteen;
    wire [31:0] tmp_m_data_rdata;

    // Timer Var
    wire [31:0] TC0_Addr, TC0_Din, TC0_Dout;
    wire TC0_WE;

    // Digital Tube Var
    wire DT_Addr;
    wire [3:0] dt_data_byteen;
    wire [31:0] DT_Din, DT_Dout;

    // MiniUART Var
    wire UART_Int;
    wire [31:0] UART_Din, UART_Dout;
    wire UART_WE;
    wire [31:0] UART_Addr;

    // Key Var
    wire [31:0] KEY_Dout;

    // Switch Var
    wire DIP_SWITCH_Addr;
    wire [31:0] DIP_SWITCH_Dout;

    // LED Var
    wire [3:0] led_data_byteen;
    wire [31:0] LED_Din;

    wire cpu_clk, mem_clk, uart_clk;

    Clock _clock (
        // Clock in ports
        .CLK_IN1(clk_in),      // IN
        // Clock out ports
        .CLK_OUT1(cpu_clk),     // OUT
        .CLK_OUT2(mem_clk),
        .CLK_OUT3(uart_clk)
    );

    wire [5:0] HWInt = {3'b0, UART_Int, 1'b0, TC0_IRQ};
    
    CPU _cpu(
        .clk(cpu_clk),
        .reset(sys_rst),
        .HWInt(HWInt),

        .i_inst_addr(i_inst_addr),
        .i_inst_rdata(i_inst_rdata),

        .m_data_addr(tmp_m_data_addr),
        .m_data_wdata(tmp_m_data_wdata),
        .m_data_byteen(tmp_m_data_byteen),

        .m_data_rdata(tmp_m_data_rdata),
        .m_inst_addr(m_inst_addr)
/*
        .w_grf_we(w_grf_we),
        .w_grf_addr(w_grf_addr),
        .w_grf_wdata(w_grf_wdata),

        .w_inst_addr(w_inst_addr)
*/
    );

    Bridge _bridge(
        .m_data_addr(m_data_addr),
        .m_data_wdata(m_data_wdata),
        .m_data_byteen(m_data_byteen),
        .m_data_rdata(m_data_rdata),

        .tmp_m_data_addr(tmp_m_data_addr),
        .tmp_m_data_wdata(tmp_m_data_wdata),
        .tmp_m_data_byteen(tmp_m_data_byteen),
        .tmp_m_data_rdata(tmp_m_data_rdata),

        .TC0_Addr(TC0_Addr),
        .TC0_WE(TC0_WE),
        .TC0_Din(TC0_Din),
        .TC0_Dout(TC0_Dout),

        .DT_Addr(DT_Addr),
        .dt_data_byteen(dt_data_byteen),
        .DT_Din(DT_Din),
        .DT_Dout(DT_Dout),

        .KEY_Dout(KEY_Dout),
        
        .DIP_SWITCH_Addr(DIP_SWITCH_Addr),
        .DIP_SWITCH_Dout(DIP_SWITCH_Dout),

        .led_data_byteen(led_data_byteen),
        .LED_Din(LED_Din),

        .UART_Din(UART_Din),
        .UART_Dout(UART_Dout),
        .UART_Addr(UART_Addr),
        .UART_WE(UART_WE)
    );

    DM _dm (
        .clka(mem_clk),                 // input clka
        .wea(m_data_byteen),            // input [3 : 0] wea
        .addra(m_data_addr >> 2),            // input [13 : 0] addra
        .dina(m_data_wdata),            // input [31 : 0] dina
        .douta(m_data_rdata)            // output [31 : 0] douta
    );

    IM _im (
        .clka(mem_clk),                 // input clka
        .wea(4'b0000),                     // input [0 : 0] wea
        .addra((i_inst_addr - 32'h0000_3000) >> 2),            // input [12 : 0] addra
        .douta(i_inst_rdata)            // output [31 : 0] douta
    );

    MiniUART _uart(
        .CLK_I(cpu_clk),
        .DAT_I(UART_Din),
        .DAT_O(UART_Dout),
        .RST_I(sys_rst),
        .ADD_I(UART_Addr[4:2]),
        .STB_I(1'b1),
        .WE_I(UART_WE),
        
        .RxD(uart_rxd),
        .TxD(uart_txd),

        .UART_Int(UART_Int)
    );

    TC _tc0(
        .clk(cpu_clk),
        .reset(sys_rst),

        .Addr(TC0_Addr[31:2]),
        .WE(TC0_WE),
        .Din(TC0_Din),
        .Dout(TC0_Dout),

        .IRQ(TC0_IRQ)
    );

    Switch _switch(
        .Addr(DIP_SWITCH_Addr),
        
        .dip_switch0(dip_switch0),
        .dip_switch1(dip_switch1),
        .dip_switch2(dip_switch2),
        .dip_switch3(dip_switch3),
        .dip_switch4(dip_switch4),
        .dip_switch5(dip_switch5),
        .dip_switch6(dip_switch6),
        .dip_switch7(dip_switch7),

        .DIP_SWITCH_Dout(DIP_SWITCH_Dout)
    );

    Key _key(
        .KEY_Din(user_key),
        .KEY_Dout(KEY_Dout)
    );
    
    LED _led(
        .clk(cpu_clk),
        .reset(sys_rst),

        .LED_Din(LED_Din),
        .led_data_byteen(led_data_byteen),
        
        .led_light(led_light)
    );

    DigitalTube _dt(
        .clk(cpu_clk),
        .reset(sys_rst),

        .Addr(DT_Addr),
        .dt_data_byteen(dt_data_byteen),
        .Din(DT_Din),
        .Dout(DT_Dout),

        .digital_tube2(digital_tube2),
        .digital_tube_sel2(digital_tube_sel2),
        .digital_tube1(digital_tube1),
        .digital_tube_sel1(digital_tube_sel1),
        .digital_tube0(digital_tube0),
        .digital_tube_sel0(digital_tube_sel0)
    );

endmodule
