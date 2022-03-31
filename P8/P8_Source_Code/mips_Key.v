`timescale 1ns / 1ps
`include "def.v"

module Key(
    input [7:0] KEY_Din,
    output [31:0] KEY_Dout
);
    assign KEY_Dout = {24'd0, ~KEY_Din};

endmodule
