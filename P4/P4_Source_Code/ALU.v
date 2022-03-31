`timescale 1ns / 1ps

`include "def.v"

module ALU(
    input [31:0] A,
    input [31:0] B,
    input [3:0] ALUOp,
    input [4:0] shamt,
    //output reg overflow,
    output reg [31:0] C
    );

    always @(*) begin
        case(ALUOp)
            `ALU_add: C = A + B;
            `ALU_sub: C = A - B;
            `ALU_or: C = A | B;
            //`ALU_and: C = A & B;
            //`ALU_xor: C = A ^ B;
            `ALU_slt: C = ($signed(A) < $signed(B)) ? 32'b1 : 32'b0;
            //`ALU_srl: C = B >> shamt;
            //`ALU_sra: C = $signed($signed(B) >> shamt);
            `ALU_lui: C = B << 16;

            // Ready for add other instructions...

            default: C = 32'h0000_0000;
        endcase
    end

endmodule
