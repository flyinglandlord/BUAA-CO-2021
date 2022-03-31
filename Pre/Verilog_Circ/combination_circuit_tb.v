`timescale 1ps/1ps
`include "Pre_combination_circuit_2.v"

module testbench();
    reg [3:0] a;
    reg [3:0] b;
    reg [1:0] c;
    wire [3:0] ans;
    reg [1:0] op;

    initial begin
        $dumpfile("combination_tb.vcd");
        $dumpvars;
        a = 4'b1000;
        b = 4'b0000;
        c = 4'b0010;
        op = 1;
        #6000 $finish;
    end

    always begin
        #20;
        a <= {$random}%16;
        b <= {$random}%16;
        c <= {$random}%4;
        op <= {$random}%2;
    end

    ALU ins(
        .inA(a),
        .inB(b),
        .inC(c),
        .op(op),
        .ans(ans)
    );

endmodule