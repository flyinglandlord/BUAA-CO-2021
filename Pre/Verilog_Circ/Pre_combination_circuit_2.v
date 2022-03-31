module ALU(
    input [3:0] inA,
    input [3:0] inB,
    input [1:0] inC,
    input [1:0] op,
    output reg [3:0] ans
);
    always @(*) begin
        case(op)
            2'b00: ans <= $signed($signed(inA) >>> inC);
            2'b01: ans <= inA >> inC;
            2'b10: ans <= inA - inB;
            2'b11: ans <= inA + inB;
            default: ans <= 4'b0000;
        endcase
    end
endmodule