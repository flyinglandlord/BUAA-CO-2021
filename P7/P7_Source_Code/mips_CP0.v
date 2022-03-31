`timescale 1ns / 1ps

`define im          SR[15:10]       //为 6 位中断屏蔽位，分别对应 6 个外部中断
                                    //相应位置 1 表示允许中断，置 0 表示禁止中断

`define ie          SR[0]           //为全局中断使能
                                    //该位置 1 表示允许中断，置 0 表示禁止中断

`define exl         SR[1]           //为异常级
                                    //该位置 1 表示已进入异常，不再允许中断，置 0 表示允许中断

`define ip          Cause[15:10]    //为 6 位待决的中断位，分别对应 6 个外部中断
                                    //相应位置 1 表示有中断，置 0 表示无中断

`define exc_code    Cause[6:2]      //异常编码，记录当前发生的是什么异常

`define bd          Cause[31]

module CP0(
    input [4:0] A1,         //读 CP0 寄存器编号	执行 mfc0 指令时产生
    input [4:0] A2,         //写 CP0 寄存器编号	执行 mtc0 指令时产生
    input [31:0] Din,       //CP0 寄存器的写入数据	执行 mtc0 指令时产生
    input [31:0] PC,        //中断/异常时的 PC	
    input isInDelaySlot,
    input [4:0] ExcCodeIn,  //中断/异常的类型	异常功能部件
    input [5:0] HWInt,      //6 个设备中断	外部设备
    input WE,               //CP0 寄存器写使能	执行 mtc0 指令时产生
    //input EXLSet,         //置位 SR 的EXL 位	流水线 W 级产生
    input EXLClr,           //置 0 SR 的EXL 位	执行 eret 指令时产生
    input clk,              //时钟信号
    input reset,            //复位信号
    output Req,             //中断请求	由 CP0 模块确认响应中断
    output [31:0] EPCOut,   //EPC 寄存器输出至 NPC
    output [31:0] DOut,     //CP0 寄存器的输出数据	执行 mfc0 指令时产生
    output TestIntResponse
    );

    reg [31:0] SR;
    reg [31:0] Cause;
    reg [31:0] EPC;
    reg [31:0] PRId;

    wire ExceptionRequest = !`exl && (| ExcCodeIn);
    wire InterruptRequest = !`exl && `ie && (| (HWInt & `im));
    assign Req = (ExceptionRequest) | (InterruptRequest);

    assign TestIntResponse = !`exl && `ie && (HWInt[2] & SR[12]);

    initial begin
        SR <= 0;
        Cause <= 0;
        EPC <= 0;
        PRId = 32'h2002_0907;
    end

    wire [31:0] tmp_EPC = (Req) ? (isInDelaySlot ? (PC - 32'd4) : PC)
                                : EPC;

    always @(posedge clk or posedge reset) begin
        if(reset) begin
            SR <= 0;
            Cause <= 0;
            EPC <= 0;
            PRId <= 32'h2002_0907;
        end else begin
            if(EXLClr) `exl <= 1'b0;
            //else if(EXLSet) `exl <= 1'b1;
            if(Req) begin
                `exc_code <= InterruptRequest ? 5'd0 : ExcCodeIn;
                `exl <= 1'b1;
                EPC <= tmp_EPC;
                `bd <= isInDelaySlot;
            end else if(WE) begin
                if(A2 == 12) SR <= Din;
                else if(A2 == 14) EPC <= Din;
            end
            `ip <= HWInt;
        end
    end

    assign EPCOut = tmp_EPC;

    assign DOut = (A1 == 12) ? SR :
                  (A1 == 13) ? Cause :
                  (A1 == 14) ? EPCOut :
                  (A1 == 15) ? PRId :
                  0;

endmodule
