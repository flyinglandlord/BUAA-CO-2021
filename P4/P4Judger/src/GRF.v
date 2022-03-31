`timescale 1ns / 1ps

`include "def.v"

module GRF(
    input [4:0] A1,
    input [4:0] A2,
    input [4:0] A3,
    input [31:0] WD,
    input [31:0] PC,
    input GRFWrEn,
    input reset,
    input clk,
    output [31:0] RD1,
    output [31:0] RD2
    );

    reg [31:0] rf[0:31];
    integer i;
    reg[31:0] WrData;

    initial begin
        for(i = 0; i < 32; i=i+1)
            rf[i] = 32'h00000000;
    end

    always @(posedge clk) begin
        if(reset) begin
            for(i = 0; i < 32; i=i+1)
                rf[i] <= 32'h00000000;
        end else if(GRFWrEn) begin
            WrData = (A3 != 5'b00000) ? WD : 32'h0000_0000;
            rf[A3] <= WrData;
            if(A3 != 5'b00000)
				$display("@%h: $%d <= %h", PC, A3, WrData);
        end
    end

    assign RD1 = rf[A1];
    assign RD2 = rf[A2];

endmodule
