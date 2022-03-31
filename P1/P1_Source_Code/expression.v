`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:39:40 10/22/2021 
// Design Name: 
// Module Name:    string
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module string(
    input clk,
    input clr,
    input [7:0] in,
    output reg out
    );

    parameter START = 0, NUM = 1, OPT = 2, ERR = 3;

    reg [2:0] state, next_state;

    initial begin
        state = START;
        out = 0;
    end

    always @(*) begin
        case(state)
        START: begin
            if(in >= "0" && in <= "9") next_state = NUM;
            else next_state = ERR;
        end
        NUM: begin
            if(in == "*" || in == "+") next_state = OPT;
            else next_state = ERR;
        end
        OPT: begin
            if(in >= "0" && in <= "9") next_state = NUM;
            else next_state = ERR;
        end
        ERR: next_state = ERR;
        default: next_state = state;
        endcase
    end

    always @(posedge clk, posedge clr) begin
        if(clr) begin
            state <= START;
            out <= 0;
        end else begin
            state <= next_state;
        end
    end

    always @(*) begin
        out = (state == NUM) ? 1'b1 : 1'b0;
    end

endmodule
