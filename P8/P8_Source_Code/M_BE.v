`timescale 1ns / 1ps
`include "def.v"

`define be_word                rt_data[31:0]
`define be_half_word           rt_data[15:0]
`define be_byte                rt_data[7:0]

module M_BE(
    input [1:0] BEOp,
    input [31:0] Addr,
    input [31:0] rt_data,
    input DMWrEn,
    input M_EXC_DMOv,

    input store,

    output reg [3:0] m_data_byteen,
    output reg [31:0] m_data_wdata,
    output M_EXC_AdES
    );

    wire ErrAlign = ((BEOp == `BE_sw) && (|Addr[1:0])) ||
                    ((BEOp == `BE_sh) && (Addr[0]));
    
    wire ErrOutOfRange = !(((Addr >= `StartAddrDM) && (Addr <= `EndAddrDM)) ||
                           ((Addr >= `StartAddrTC0) && (Addr <= `EndAddrTC0)) ||
                           ((Addr >= `StartAddrUART) && (Addr <= `EndAddrUART)) ||
                           ((Addr >= `StartAddrDigTube) && (Addr <= `EndAddrDigTube)) ||
                           ((Addr >= `StartAddrLED) && (Addr <= `EndAddrLED))
                           );
    
    wire ErrTimer = (BEOp != `BE_sw && ((Addr <= `EndAddrTC0 && Addr >= `StartAddrTC0) || (Addr <= `EndAddrUART && Addr >= `StartAddrUART)));

    assign M_EXC_AdES = (store) && (ErrAlign || ErrOutOfRange || ErrTimer || M_EXC_DMOv);

    always @(*) begin
        case(BEOp)
            `BE_sw: m_data_wdata = rt_data;
            `BE_sh: begin
                if(Addr[1] == 1'b0) m_data_wdata = {16'b0, `be_half_word};
                else m_data_wdata = {`be_half_word, 16'b0};
            end
            `BE_sb: begin
                if(Addr[1:0] == 2'b00) m_data_wdata = {24'b0, `be_byte};
                else if(Addr[1:0] == 2'b01) m_data_wdata = {16'b0, `be_byte, 8'b0};
                else if(Addr[1:0] == 2'b10) m_data_wdata = {8'b0, `be_byte, 16'b0};
                else m_data_wdata = {`be_byte, 24'b0};
            end
            default: m_data_wdata = 32'd0;
        endcase
    end

    always @(*) begin
        if(DMWrEn) begin
            case(BEOp)
                `BE_sw: m_data_byteen = 4'b1111;
                `BE_sh: begin
                    if(Addr[1] == 1'b0) m_data_byteen = 4'b0011;
                    else m_data_byteen = 4'b1100;
                end
                `BE_sb: begin
                    if(Addr[1:0] == 2'b00) m_data_byteen = 4'b0001;
                    else if(Addr[1:0] == 2'b01) m_data_byteen = 4'b0010;
                    else if(Addr[1:0] == 2'b10) m_data_byteen = 4'b0100;
                    else m_data_byteen = 4'b1000;
                end
                default: m_data_byteen = 4'b0000;
            endcase
        end else m_data_byteen = 4'b0000;
    end

endmodule
