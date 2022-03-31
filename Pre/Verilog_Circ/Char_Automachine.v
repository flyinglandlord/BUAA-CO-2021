module id_fsm (
    input [7:0] char,
    input clk,
    output out
);

    parameter NUM = 2, CHAR = 1, ILLEGAL = 0;
    reg [1:0] status, next_status;

    initial begin
        status = ILLEGAL;
    end

    always @(*) begin
        case(status)
            NUM: begin
                if($unsigned($unsigned(char)) >= 48 && $unsigned($unsigned(char)) <= 57) next_status = NUM;
                else if($unsigned($unsigned(char)) >= 97 && $unsigned(char) <= 122 || $unsigned(char) >= 65 && $unsigned(char) <= 90) next_status = CHAR;
                else next_status = ILLEGAL;
            end
            CHAR: begin
                if($unsigned(char) >= 48 && $unsigned(char) <= 57) next_status = NUM;
                else if($unsigned(char) >= 97 && $unsigned(char) <= 122 || $unsigned(char) >= 65 && $unsigned(char) <= 90) next_status = CHAR;
                else next_status = ILLEGAL;
            end
            ILLEGAL: begin
                if($unsigned(char) >= 97 && $unsigned(char) <= 122 || $unsigned(char) >= 65 && $unsigned(char) <= 90) next_status = CHAR;
                else next_status = ILLEGAL;
            end
        endcase
    end

    always @(posedge clk) begin
        status <= next_status;
    end

    assign out = (status == NUM);

endmodule //Char_Automachine