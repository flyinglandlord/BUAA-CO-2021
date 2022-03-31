`timescale 1ns / 1ps
`include "def.v"

module D_EXT(
    input [15:0] imm16,
    input EXTOp,
    output [31:0] ext32
    );

    assign ext32 = (EXTOp == `EXT_sign) ? {{16{imm16[15]}}, imm16} :
                   {{16{1'b0}}, imm16};
    
endmodule
