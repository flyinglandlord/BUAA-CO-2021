`timescale 1ns/1ns
`include "Counter.v"

module Counter_tb ();

    reg clk;
    reg reset;
    reg slt;
    reg en;
    wire [63:0] o1, o0;

    initial begin
        $dumpfile("Counter_wave.vcd");
        $dumpvars;
        clk = 0;
        en = 1;
        slt = 1;
        reset = 1;
        #20 reset = 0;
        #300 slt = 0;
        #6000 $finish;
    end

    always begin
        #10 clk = ~clk;
    end

    code test(
        .Clk(clk), 
        .Reset(reset), 
        .Slt(slt), 
        .En(en), 
        .Output0(o0),
        .Output1(o1)
    );

    always @(posedge clk) begin
        
    end

endmodule //Counter_tb