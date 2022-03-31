`timescale 1ns / 1ps
`include "def.v"

module E_MDU(
    input clk,
    input reset,
    input Req,

    input [2:0] MDUOp,
    input [31:0] D1,
    input [31:0] D2,
    input Start,

    output reg Busy,
    output reg [31:0] HI,
    output reg [31:0] LO
    );

    reg [31:0] cycle_cnt, tmp_HI, tmp_LO;

    initial begin
        HI = 0;
        LO = 0;
        tmp_HI = 0;
        tmp_LO = 0;
        cycle_cnt = 0;
    end


    always @(posedge clk) begin
        if(MDUOp == `MDU_mthi && !Req) HI <= D1;
        else if(MDUOp == `MDU_mtlo && !Req) LO <= D1; 
    end

    always @(posedge clk) begin
        if(reset) begin
            cycle_cnt <= 0;
            Busy <= 1'b0;
            HI <= 32'd0;
            LO <= 32'd0;
        end else if(!Req) begin
            if(cycle_cnt == 0) begin
                if(Start) begin
                    Busy <= 1;
                    if(MDUOp == `MDU_multu || MDUOp == `MDU_mult) cycle_cnt <= 5;
                    else if(MDUOp == `MDU_div || MDUOp == `MDU_divu) cycle_cnt <= 10;

                    if(MDUOp == `MDU_multu) {tmp_HI, tmp_LO} <= D1 * D2;
                    else if(MDUOp == `MDU_mult) {tmp_HI, tmp_LO} <= $signed(D1) * $signed(D2);
                    else if(MDUOp == `MDU_div) begin
                        tmp_LO <= $signed(D1) / $signed(D2);
                        tmp_HI <= $signed(D1) % $signed(D2);
                    end else if(MDUOp == `MDU_divu) begin
                        tmp_LO <= D1 / D2;
                        tmp_HI <= D1 % D2;              
                    end    
                end else begin
                    cycle_cnt <= 0;
                end
            end else if(cycle_cnt == 1) begin
                LO <= tmp_LO;
                HI <= tmp_HI;
                Busy <= 1'b0;
                cycle_cnt <= 0;
            end else begin
                cycle_cnt <= cycle_cnt - 1;
            end
        end
    end


endmodule
