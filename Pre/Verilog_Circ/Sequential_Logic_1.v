module counting (
    input [1:0] num,
    input clk,
    output ans
);

    parameter S0 = 0, S1 = 1, S2 = 2, S3 = 3;
    reg [1:0] status, next_status;

    initial begin
        status = 0;
    end

    always @(*) begin
        case(status)
            S0: next_status = (num == 1) ? S1 : S0;
            S1: begin
                if(num == 1) next_status = S1;
                else if(num == 2) next_status = S2;
                else if(num == 3) next_status = S0;
                else next_status = S1;
            end
            S2: begin
                if(num == 1) next_status = S1;
                else if(num == 2) next_status = S0;
                else if(num == 3) next_status = S3;
                else next_status = S2;
            end
            S3: begin
                next_status = S3;
            end
        endcase
    end

    always @(posedge clk) begin
        status <= next_status;
    end

    assign ans = (status == S3);

endmodule