`timescale 1ns / 1ps
`include "def.v"

module E_ALU(
    input [31:0] A,
    input [31:0] B,
    input [3:0] ALUOp,
    output reg [31:0] C
    );

    always @(*) begin
        case(ALUOp)
            `ALU_add: C = A + B;
            `ALU_sub: C = A - B;
            `ALU_or: C = A | B;
            `ALU_lui: C = B << 16;
            `ALU_and: C = A & B;
            `ALU_xor: C = A ^ B;
            `ALU_nor: C = ~(A | B);
            `ALU_slt: C = $signed(A) < $signed(B);
            `ALU_sltu: C = A < B;
            `ALU_shift_left: C = A << B;
            `ALU_shift_right_logic: C = A >> B;
            `ALU_shift_right_algorithm: C = $signed($signed(A) >>> $signed(B));

            // Ready for add other instructions...

            default: C = 32'd0;
        endcase
    end

endmodule
