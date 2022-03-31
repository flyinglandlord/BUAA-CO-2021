`timescale 1ns/1ns
`include "Sequential_Logic_2.v"

module Sequential_Logic_tb ();

    reg clk;
    reg [1:0] num;
    wire ans;

    initial begin
        $dumpfile("Sequential_Logic.vcd");
        $dumpvars;
        clk <= 1;
        num <= 1;
        #6000 $finish;
    end

    always begin
        #10 clk = !clk;                 
    end

    always @(posedge clk) begin
        #1 num = {$random}%3 + 1;
    end

    counting test(.num(num), .clk(clk), .ans(ans));

endmodule //Sequential_Logic_tb