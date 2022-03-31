`timescale 1ns / 1ps
`include "def.v"

//使用宏定义简化lb, lh, lbu, lhu, lw的处理
`define word                mem[Addr[11:2]][31:0]
`define half_word           mem[Addr[11:2]][(16*Addr[1]-1) -: 16]
`define byte                mem[Addr[11:2]][(8*Addr[1:0]-1) -: 8]
`define half_word_sign      mem[Addr[11:2]][16*Addr[1]-1]
`define byte_sign           mem[Addr[11:2]][8*Addr[1]-1]

module M_DM(
    input clk,
    input reset,
    input [31:0] PC,

    input [31:0] Addr,
    input [31:0] WD,
    input [2:0] DMOp,
    input DMWrEn,
    
    output [31:0] RD
    );

    reg[31:0] mem[0:3071];
    integer i;

    initial begin
        for(i=0; i<3072; i=i+1) mem[i] = 32'd0;
    end

    always @(posedge clk) begin
        if(reset) begin
            for(i=0; i<3072; i=i+1) mem[i] = 32'd0;
        end else if(DMWrEn) begin
            case(DMOp)
                `DM_b: begin
                    `byte <= WD[7:0];
                    case(Addr[1:0])
                        2'b00: $display("%d@%h: *%h <= %h", $time, PC, Addr, {mem[Addr[11:2]][31:8], WD[7:0]});
                        2'b01: $display("%d@%h: *%h <= %h", $time, PC, Addr, {mem[Addr[11:2]][31:16], WD[7:0], mem[Addr[11:2]][7:0]});
                        2'b10: $display("%d@%h: *%h <= %h", $time, PC, Addr, {mem[Addr[11:2]][31:24], WD[7:0], mem[Addr[11:2]][15:0]});
                        2'b11: $display("%d@%h: *%h <= %h", $time, PC, Addr, {WD[7:0], mem[Addr[11:2]][23:0]});
                    endcase
                end
                `DM_h: begin
                    `half_word <= WD[15:0];
                    case(Addr[1])
                        1'b0: $display("%d@%h: *%h <= %h", $time, PC, Addr, {mem[Addr[11:2]][31:16], WD[15:0]});
                        1'b1: $display("%d@%h: *%h <= %h", $time, PC, Addr, {WD[15:0], mem[Addr[11:2]][15:0]});
                    endcase
                end
                `DM_w: begin
                    `word <= WD;
                    $display("%d@%h: *%h <= %h", $time, PC, Addr, WD);
					//$display("%d@%h: *%h <= %h", $time, PC, Addr, WD);
                end
            endcase
        end
    end

    assign RD = (DMOp == `DM_b) ? {{24{`byte_sign}}, `byte} :
                (DMOp == `DM_bu) ? {{24{1'b0}}, `byte} :
                (DMOp == `DM_h) ? {{16{`half_word_sign}}, `half_word} :
                (DMOp == `DM_hu) ? {{16{1'b0}}, `half_word} :
                //如果有别的RD要求，加在这里
                `word;


endmodule
