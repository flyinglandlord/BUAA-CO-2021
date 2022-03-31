`timescale 1ns/1ns
`include "counter.v"

module clock_pulse();
    reg  clock;
    wire [31:0] print;
    initial begin
        $dumpfile("clock_pulse.vcd");
        $dumpvars;
        clock <= 1;                         // 初始clock信号为1
        #6000 $finish;                      // 6000个单位时间后结束模拟
    end

    always begin
        #10 clock = !clock;                 // 每20个单位clock取反
    end

    counter ins(clock, print);


endmodule //clock_pulse