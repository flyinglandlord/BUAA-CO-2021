`timescale 1ns / 1ps

module sign_test();
    reg [7:0] a, b;
    reg [7:0] t_a, t_b;
    reg [7:0] d1, d2;
    initial begin
        d1 = -8'd3;
        d2 = -8'd5;
        $display("%b", $unsigned(16'd0 + -8'd1));
        {t_a, t_b} = $signed($signed(-8'd3) * $signed(-8'd5));
        $display("%b",$signed(-8'd3) * $unsigned(-8'd5) + $signed(16'b0));
        $display("%b %b", t_a, t_b);
        $display("%b", {t_a, t_b});
        $display("%b", $signed(16'b0 + $signed(-8'd3) * $signed(-8'd5)));
        $display("%d", $unsigned(16'd0)  + $unsigned($signed(-8'd3) * $signed(-8'd5)));
        {a, b} = /*{t_a, t_b} +*/ $signed(16'd0) + $signed(d1) * $signed(d2);
        $display("%d", {a, b});
    end

endmodule
