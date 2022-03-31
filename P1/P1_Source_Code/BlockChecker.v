`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:06:32 10/22/2021 
// Design Name: 
// Module Name:    BlockChecker 
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
module BlockChecker(
    input clk,
    input reset,
    input [7:0] in,
    output reg result
    );

    wire begin_out, end_out;

    BeginChecker uut_begin(
        .clk(clk),
        .reset(reset),
        .in(in),
        .get_begin(begin_out)
    );

    EndChecker uut_end(
        .clk(clk),
        .reset(reset),
        .in(in),
        .get_end(end_out)
    );

    localparam START = 0, MATCH = 1, DISMATCH = 2, TMP_MATCH = 3, TMP_DISMATCH = 4, ERR = 5, TMP_ERR = 6;
    reg [2:0] last_state, state, next_state;
    reg [31:0] begin_num;
    reg tmp_mismatch, tmp_match;

    initial begin
        state = MATCH;
    end

    always @(*) begin
        case(state)
        START: 
            if(begin_out == 1 && in == " ") begin
                next_state = DISMATCH; 
                //$display("##\n");
            end
            else if(end_out == 1 && in == " ") next_state = ERR;
            else next_state = START;
        MATCH: 
            if(begin_out == 1) begin
                if(in == " ") begin
                    next_state = DISMATCH;
                end
                else begin
                    next_state = state;
                    tmp_mismatch = 1;
                end
            end else if(end_out == 1) begin
                if(in == " ") next_state = ERR;
                else begin
                    next_state = state;
                    tmp_mismatch = 1;
                end 
            end
            else next_state = state;
        DISMATCH:
            if(begin_out == 1) begin
                if(in == " ") begin
                    next_state = DISMATCH;
                end 
                else next_state = state;
            end else if(end_out == 1) begin
                if(begin_num == 1 && in != " ") tmp_match = 1;
                if(in == " ") begin
                    if(begin_num == 0) next_state = MATCH;
                    else next_state = state;
                end
                else next_state = state;
            end else begin
                next_state = state;
            end
        ERR: next_state = ERR;
        default: next_state = state;
        endcase
    end

    always @(posedge clk, posedge reset) begin
        if(reset) begin
            begin_num <= 0;
            tmp_mismatch <= 0;
            tmp_match <= 0;
            state <= MATCH;
            result <= 1;
        end else begin
            tmp_mismatch <= 0;
            tmp_match <= 0;
            state <= next_state;
        end
    end

    always @(*) begin
        if(begin_out && in == " ") begin_num = begin_num + 1;
        else if(end_out && in == " ") begin_num = begin_num - 1;
    end

    always @(*) begin
        result = ((tmp_match == 1 || state == MATCH) && tmp_mismatch == 0) ? 1'b1 : 1'b0;
    end

endmodule

module BeginChecker(
    input clk,
    input reset,
    input [7:0] in,
    output reg get_begin
    );

    localparam START = 0, B = 1, BE = 2, BEG = 3, BEGI = 4, BEGIN = 5, ERR = 6;
    reg [2:0] state, next_state;

    always @(*) begin
        case(state)
        START: begin
            if(in == "B" || in == "b") next_state = B;
            else if(in == " ") next_state = START;
            else next_state = ERR;
        end 
        B: begin
            if(in == "E" || in == "e") next_state = BE;
            else next_state = ERR;
        end
        BE: begin
            if(in == "G" || in == "g") next_state = BEG;
            else next_state = ERR;
        end
        BEG: begin
            if(in == "I" || in == "i") next_state = BEGI;
            else next_state = ERR;
        end
        BEGI: begin
            if(in == "N" || in == "n") next_state = BEGIN;
            else next_state = ERR;
        end
        BEGIN: begin
            if(in == " " || in == " ") next_state = START;
            else next_state = ERR;
        end
        ERR: begin
            if(in == " ") next_state = START;
            else next_state = ERR;
        end
        default: next_state = state;
        endcase
    end

    always @(posedge clk, posedge reset) begin
        if(reset) begin
            state <= START;
            get_begin <= 0;
        end else begin
            state <= next_state;
        end
    end

    always @(*) begin
        get_begin = (state == BEGIN) ? 1'b1 : 1'b0;
    end

endmodule

module EndChecker(
    input clk,
    input reset,
    input [7:0] in,
    output reg get_end
    );

    localparam START = 0, E = 1, EN = 2, END = 3, ERR = 4;
    reg [2:0] state, next_state;

    always @(*) begin
        case(state)
        START: begin
            if(in == "E" || in == "e") next_state = E;
            else if(in == " ") next_state = START;
            else next_state = ERR;
        end
        E: begin
            if(in == "N" || in == "n") next_state = EN;
            else next_state = ERR;
        end
        EN: begin
            if(in == "D" || in == "d") next_state = END;
            else next_state = ERR;
        end
        END: begin
            if(in == " ") next_state = START;
            else next_state = ERR;
        end
        ERR: begin
            if(in == " ") next_state = START;
            else next_state = ERR;
        end
        default: next_state = state;
        endcase
    end

    always @(posedge clk, posedge reset) begin
        if(reset) begin
            state <= START;
            get_end <= 0;
        end else begin
            state <= next_state;
        end
    end

    always @(*) begin
        get_end = (state == END) ? 1'b1 : 1'b0;
    end

endmodule