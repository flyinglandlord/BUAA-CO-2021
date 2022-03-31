`timescale 1ns / 1ps
`include "def.v"

module E_ALU(
    input ALUDMOv,
    input ALUAriOv,

    input [31:0] A,
    input [31:0] B,
    input [3:0] ALUOp,
    output reg [31:0] C,
    output EXC_AriOv,
    output EXC_DMOv
    );

    wire [32:0] ext_A = {A[31], A}, ext_B = {B[31], B};
    wire [32:0] ext_add = ext_A + ext_B;
    wire [32:0] ext_sub = ext_A - ext_B;
    assign EXC_AriOv = (ALUAriOv) && 
                       ((ALUOp == `ALU_add && ext_add[32] != ext_add[31]) ||
                       (ALUOp == `ALU_sub && ext_sub[32] != ext_sub[31]));
    assign EXC_DMOv = (ALUDMOv) && 
                       ((ALUOp == `ALU_add && ext_add[32] != ext_add[31]) ||
                       (ALUOp == `ALU_sub && ext_sub[32] != ext_sub[31]));

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
