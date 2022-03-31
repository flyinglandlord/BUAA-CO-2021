`timescale 1ns / 1ps
`include "def.v"

module D_GRF(
    input [31:0] PC,
    input [4:0] A1,
    input [4:0] A2,
    input [4:0] A3,
    input [31:0] WD,
    input clk,
    input reset,
    output [31:0] RD1,
    output [31:0] RD2
    );

    reg[31:0] reg_file[0:31];
    integer i;

    initial begin
        for(i=0; i<32; i=i+1) reg_file[i] = 32'd0;
    end

    always @(posedge clk) begin
        if(reset) begin
            for(i=0; i<32; i=i+1) reg_file[i] <= 32'd0;
        end else begin
            reg_file[A3] <= (A3 != 5'b00000) ? WD : 32'd0;
            //if(A3 != 5'b00000) $display("%d@%h: $%d <= %h", $time, PC, A3, WD);
        end
    end

    // 寄存器内部转发
    assign RD1 = (A1 == 5'b00000) ? 32'h0000_0000 :
                 (A3 == A1 && A1 != 5'b00000) ? WD : reg_file[A1];
    assign RD2 = (A2 == 5'b00000) ? 32'h0000_0000 :
                 (A3 == A2 && A2 != 5'b00000) ? WD : reg_file[A2];

endmodule
