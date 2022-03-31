`timescale 1ns / 1ps
`include "def.v"

`define word                m_data_rdata[31:0]
`define half_word           m_data_rdata[(16*Addr[1] + 15) -: 16]
`define byte                m_data_rdata[(8*Addr[1:0] + 7) -: 8]
`define half_word_sign      m_data_rdata[16*Addr[1] + 15]
`define byte_sign           m_data_rdata[8*Addr[1:0] + 7]


module M_DE(
    input [31:0] Addr,
    input [2:0] DEOp,
    input [31:0] m_data_rdata,
    output reg [31:0] DMRD
    );

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
