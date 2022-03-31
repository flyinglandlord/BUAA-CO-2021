`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:30:52 10/22/2021 
// Design Name: 
// Module Name:    gray 
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
module gray(
    input [0:0] Clk,
    input [0:0] Reset,
    input [0:0] En,
    output reg [2:0] Output,
    output reg [0:0] Overflow
    );

    parameter Zero = 3'b000, One = 3'b001, Two = 3'b011, Three = 3'b010, Four = 3'b110, 
                Five = 3'b111, Six = 3'b101, Seven = 3'b100, OverflowZero = 4'b1000;/* Eight = 4'b1100, Nine = 4'b1101, 
                Ten = 4'b1111, Eleven = 4'b1110, Twelve = 4'b1010, Thirteen = 4'b1011, Fourteen = 4'b1001;*/
    
    reg [3:0] state, next_state;

    initial begin
        state = Zero;
        Overflow = 0;
    end

    always @(*) begin
        case(state) 
        OverflowZero:
            next_state = One;
        Zero:
            next_state = One;
        One:
            next_state = Two;
        Two:
            next_state = Three;
        Three:
            next_state = Four;
        Four:
            next_state = Five;
        Five:
            next_state = Six;
        Six:
            next_state = Seven;
        Seven:
            next_state = OverflowZero;
        default:
            next_state = state;
        endcase
    end

    always @(posedge Clk) begin
        if(Reset) begin
            Output <= Zero;
            state <= Zero;
            Overflow <= 1'b0;
        end else begin
            if(En) state <= next_state;
            else state <= state;
        end
    end

    always @(*) begin
        Output = state[2:0];
        if(state == OverflowZero) Overflow = 1'b1;
    end

endmodule
