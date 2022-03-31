`timescale 1ns / 1ps

`include "def.v"

module CMP(
    input [31:0] rs,
    input [31:0] rt,
    input [2:0] CMPOp,
    output jump
    );

    wire eq = (rs == rt);
    wire ne = !eq;
    wire le0 = (rs < 0);
    wire ge0 = (rs > 0);
    wire eq0 = (rs == 0);

    assign jump = (CMPOp == `CMP_beq && eq) ? 1 :
                  0;

endmodule
