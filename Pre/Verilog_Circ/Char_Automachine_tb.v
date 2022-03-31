`timescale 1ns/1ns
`include "Char_Automachine.v"

module Char_Automachine_tb ();
    reg clk;
    reg [7:0] char;
    wire ans;

    initial begin
        $dumpfile("Char_Automachine_wave.vcd");
        $dumpvars;
        clk <= 0;
        #1 char = "a";
        #20 char = "b";
        #20 char = "c";
        #20 char = "d";
        #20 char = "1"; 
        #20 char = "2"; 
        #20 char = "3"; 
        #20 char = "4"; 
        #20 char = "/";
        #20 char = "a";
        #20 char = "2";
        #20 char = "2";
        #20 char = "a";
        #20 char = "/";
        #20 char = "2";
        #6000 $finish;
    end

    always begin
        #10 clk = !clk;                 
    end

    id_fsm test(
        .clk(clk),
        .char(char),
        .out(ans)
    );

endmodule //Char_Automachine_tb