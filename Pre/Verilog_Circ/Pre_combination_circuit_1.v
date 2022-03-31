module ALU(
    input [3:0] inA,
    input [3:0] inB,
    input [1:0] op,
    output [3:0] ans
);
    reg [3:0] out;
    always @(*) begin
        case(op)
            2'b00: out <= inA & inB;
            2'b01: out <= inA | inB;
            2'b10: out <= inA ^ inB;
            2'b11: out <= inA + inB;
        endcase
    end

    assign ans = out;

endmodule