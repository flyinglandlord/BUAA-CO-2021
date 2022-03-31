`timescale 1ns / 1ps
`include "def.v"

module Switch(
    input Addr,
    input [7:0] dip_switch0,
    input [7:0] dip_switch1,
    input [7:0] dip_switch2,
    input [7:0] dip_switch3,
    input [7:0] dip_switch4,
    input [7:0] dip_switch5,
    input [7:0] dip_switch6,
    input [7:0] dip_switch7,

    output [31:0] DIP_SWITCH_Dout
);

    assign DIP_SWITCH_Dout = (Addr == 1'b0) ? {~dip_switch3, ~dip_switch2, ~dip_switch1, ~dip_switch0} :
                                              {~dip_switch7, ~dip_switch6, ~dip_switch5, ~dip_switch4};

endmodule
