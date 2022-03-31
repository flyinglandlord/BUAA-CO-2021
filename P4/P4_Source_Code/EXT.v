`timescale 1ns / 1ps

`include "def.v"

module EXT(
    input [15:0] imm16,
    input EXTOp,
    output [31:0] out32
    );

    assign out32 = (EXTOp == `EXT_sign) ? {{16{imm16[15]}}, imm16} :
                   (EXTOp == `EXT_unsign) ? {{16{1'b0}}, imm16} :
                   32'h0000_0000;

endmodule
