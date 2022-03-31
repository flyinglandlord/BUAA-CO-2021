`timescale 1ns / 1ps
`include "def.v"

`define word                m_data_rdata[31:0]
`define half_word           m_data_rdata[(16*Addr[1] + 15) -: 16]
`define byte                m_data_rdata[(8*Addr[1:0] + 7) -: 8]
`define half_word_sign      m_data_rdata[16*Addr[1] + 15]
`define byte_sign           m_data_rdata[8*Addr[1:0] + 7]

`define StartAddrDM         32'h0000_0000
`define EndAddrDM           32'h0000_2fff
`define StartAddrTC1        32'h0000_7f00
`define EndAddrTC1          32'h0000_7f0b
`define StartAddrTC2        32'h0000_7f10
`define EndAddrTC2          32'h0000_7f1b

module M_DE(
    input [31:0] Addr,
    input [2:0] DEOp,
    input [31:0] m_data_rdata,

    input M_EXC_DMOv,

    input load,

    output reg [31:0] DMRD,
    output M_EXC_AdEL
    );

    wire ErrAlign = ((DEOp == `DE_lw) && (|Addr[1:0])) ||
                    ((DEOp == `DE_lh || DEOp == `DE_lhu) && (Addr[0]));
    
    wire ErrOutOfRange = !(((Addr >= `StartAddrDM) && (Addr <= `EndAddrDM)) ||
                           ((Addr >= `StartAddrTC1) && (Addr <= `EndAddrTC1)) ||
                           ((Addr >= `StartAddrTC2) && (Addr <= `EndAddrTC2)));
    
    wire ErrTimer = (DEOp != `DE_lw) && (Addr >= `StartAddrTC1);

    assign M_EXC_AdEL = (load) && (ErrAlign || ErrOutOfRange || ErrTimer || M_EXC_DMOv);

    always @(*) begin
        case(DEOp) 
            `DE_lw: DMRD = `word;
            `DE_lh: DMRD = {{16{`half_word_sign}}, `half_word};
            `DE_lhu: DMRD = {{16{1'b0}}, `half_word};
            `DE_lb: DMRD = {{24{`byte_sign}}, `byte};
            `DE_lbu: DMRD = {{24{1'b0}}, `byte};
        endcase
    end

endmodule
