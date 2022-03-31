`timescale 1ns / 1ps
`include "def.v"

module D_CMP(
    input [2:0] CMPOp,
    input [31:0] rsData,
    input [31:0] rtData,
    output jump
    );

    wire eq = (rsData == rtData);
    wire ne = !eq;
    wire lt0 = ($signed(rsData) < 0);
    wire gt0 = ($signed(rsData) > 0);
    wire ne0 = ($signed(rsData) != 0);
    wire eq0 = !ne0;

    assign jump = (CMPOp == `CMP_beq && eq) ? 1'b1 :
                  (CMPOp == `CMP_bne && ne) ? 1'b1 :
                  (CMPOp == `CMP_bltz && lt0) ? 1'b1 :
                  (CMPOp == `CMP_bgtz && gt0) ? 1'b1 :
                  (CMPOp == `CMP_blez && (lt0 || eq0)) ? 1'b1 :
                  (CMPOp == `CMP_bgez && (gt0 || eq0)) ? 1'b1 :
                  1'b0;

endmodule
