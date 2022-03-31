`timescale 1ns / 1ps
`include "def.v"

module DigitalTube(
    input clk,
    input reset,
    input Addr,
    input [3:0] dt_data_byteen,
    input [31:0] Din,
    output [31:0] Dout,

    output [7:0] digital_tube2,
    output digital_tube_sel2,
    output [7:0] digital_tube1,
    output reg [3:0] digital_tube_sel1,
    output [7:0] digital_tube0,
    output reg [3:0] digital_tube_sel0
);

    reg [31:0] time_cnt;

    // 两个寄存器分别控制两组每组4个八段数码管
    reg [31:0] reg0, reg1;
    reg [1:0] sync_sel;              //本次刷新的是哪一个数字位(0~4)
    reg [3:0] tube1_val, tube0_val;  //当前刷新位的四位二进制数值，表示一个十六进制数字

    assign digital_tube_sel2 = 1'b1;

    function[7:0] dt_translate;
        input [3:0] data;
        dt_translate = (data == 4'd0) ? `Zero :
                       (data == 4'd1) ? `One :
                       (data == 4'd2) ? `Two :
                       (data == 4'd3) ? `Three :
                       (data == 4'd4) ? `Four :
                       (data == 4'd5) ? `Five :
                       (data == 4'd6) ? `Six :
                       (data == 4'd7) ? `Seven :
                       (data == 4'd8) ? `Eight :
                       (data == 4'd9) ? `Nine :
                       (data == 4'd10) ? `A :
                       (data == 4'd11) ? `B :
                       (data == 4'd12) ? `C :
                       (data == 4'd13) ? `D :
                       (data == 4'd14) ? `E :
                       `F ;
                       
    endfunction

    assign digital_tube2 = dt_translate(reg1[3:0]);
    assign digital_tube1 = dt_translate(tube1_val);
    assign digital_tube0 = dt_translate(tube0_val);

    always @(posedge clk) begin
        if(reset) begin
            time_cnt <= 0;
            reg0 <= 0;
            reg1 <= 0;
            sync_sel <= 0;
            tube1_val <= 0;
            tube0_val <= 0;
            digital_tube_sel0 <= 0;
            digital_tube_sel1 <= 0;
        end else begin
            time_cnt <= time_cnt + 1;
            if(time_cnt == 32'd500000) begin
                time_cnt <= 0;
                digital_tube_sel1[sync_sel - 2'b1] <= 1'b0;
                case(sync_sel)
                    2'b00: tube1_val <= reg0[19:16];
                    2'b01: tube1_val <= reg0[23:20];
                    2'b10: tube1_val <= reg0[27:24];
                    2'b11: tube1_val <= reg0[31:28];
                endcase
                digital_tube_sel1[sync_sel] <= 1'b1;
                digital_tube_sel0[sync_sel - 2'b1] <= 1'b0;
                case(sync_sel)
                    2'b00: tube0_val <= reg0[3:0];
                    2'b01: tube0_val <= reg0[7:4];
                    2'b10: tube0_val <= reg0[11:8];
                    2'b11: tube0_val <= reg0[15:12];
                endcase
                digital_tube_sel0[sync_sel] <= 1'b1;
                sync_sel <= sync_sel + 1'b1;
            end
        end

        if(| dt_data_byteen) begin
            case (Addr)
                1'b0: begin
                    if(dt_data_byteen[3]) reg0[31:24] <= Din[31:24];
                    if(dt_data_byteen[2]) reg0[23:16] <= Din[23:16];
                    if(dt_data_byteen[1]) reg0[15:8] <= Din[15:8];
                    if(dt_data_byteen[0]) reg0[7:0] <= Din[7:0];
                end
                1'b1: begin
                    if(dt_data_byteen[3]) reg1[31:24] <= Din[31:24];
                    if(dt_data_byteen[2]) reg1[23:16] <= Din[23:16];
                    if(dt_data_byteen[1]) reg1[15:8] <= Din[15:8];
                    if(dt_data_byteen[0]) reg1[7:0] <= Din[7:0];
                end
            endcase
        end
    end

    assign Dout = (Addr == 1'b0) ? reg0 : reg1;

endmodule
