`timescale 1ns / 1ps

`include "def.v"

`define word            mem[Addr[11:2]]
`define half_word       mem[Addr[11:2]][(15+Addr[1]*16) -: 16]
`define byte            mem[Addr[11:2]][(7+Addr[1:0]*8) -: 8]
`define byte_sign       mem[Addr[11:2]][(7+Addr[1:0]*8)]
`define half_word_sign  mem[Addr[11:2]][(15+Addr[1]*16)]

module DM(
    input [31:0] Addr,
    input [31:0] WD,
    input [31:0] PC,
    input DMWrEn,
    input [2:0] DMOp,
    input clk,
    input reset,
    output [31:0] RD
    );

    reg[31:0] mem[0:1023];
    integer i;

    initial begin
        for(i = 0; i < 1024; i=i+1)
            mem[i] = 32'h0000_0000;
    end

    always @(posedge clk) begin
        if(reset) begin
            for(i = 0; i < 1024; i=i+1)
                mem[i] <= 32'h0000_0000;
        end else if(DMWrEn) begin
            case(DMOp)
                `DM_b: begin
                    `byte <= WD[7:0];
                    case(Addr[1:0])
                        2'b00: $display("@%h: *%h <= %h", PC, Addr, {mem[Addr[11:2]][31:8], WD[7:0]});
                        2'b01: $display("@%h: *%h <= %h", PC, Addr, {mem[Addr[11:2]][31:16], WD[7:0], mem[Addr[11:2]][7:0]});
                        2'b10: $display("@%h: *%h <= %h", PC, Addr, {mem[Addr[11:2]][31:24], WD[7:0], mem[Addr[11:2]][15:0]});
                        2'b11: $display("@%h: *%h <= %h", PC, Addr, {WD[7:0], mem[Addr[11:2]][23:0]});
                    endcase
                end
                `DM_h: begin
                    `half_word <= WD[15:0];
                    case(Addr[1])
                        1'b0: $display("@%h: *%h <= %h", PC, Addr, {mem[Addr[11:2]][31:16], WD[15:0]});
                        1'b1: $display("@%h: *%h <= %h", PC, Addr, {WD[15:0], mem[Addr[11:2]][15:0]});
                    endcase
                end
                `DM_w: begin
                    `word <= WD;
                    $display("@%h: *%h <= %h", PC, Addr, WD);
                end
                default: `word <= WD;
            endcase
        end
    end

    assign RD = (DMOp == `DM_b) ? {{24{`byte_sign}}, `byte} :
                (DMOp == `DM_bu) ? {{24{1'b0}}, `byte} :
                (DMOp == `DM_h) ? {{16{`half_word_sign}}, `half_word} :
                (DMOp == `DM_hu) ? {{16{1'b0}}, `half_word} :
                (DMOp == `DM_w) ? `word :
                32'h0000_0000;
endmodule
