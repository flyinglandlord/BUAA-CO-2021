module code (
    input Clk,
    input Reset,
    input Slt,
    input En,
    output reg [63:0] Output0,
    output reg [63:0] Output1
);

    reg [3:0] cnt;

    initial begin
        cnt = 4'b0000;
        Output0 = 0;
        Output1 = 0;
    end

    always @(posedge Clk) begin
        if(Reset) begin
            Output0 <= 0;
            Output1 <= 0;
        end
        else begin
            if(En) begin
                if(Slt == 0) begin
                    Output0 <= Output0 + 1;
                end
                else begin
                    if(cnt == 3) begin
                        Output1 <= Output1 + 1;
                        cnt <= 0;
                    end
                    else cnt <= cnt + 1;
                end
            end
        end
    end

endmodule //counter