`timescale 1ns / 1ps
`include "def.v"

module LED(
    input clk,
    input reset,

    input [3:0] led_data_byteen,
    input [31:0] LED_Din,
    output reg [31:0] led_light
);
    always @(posedge clk) begin
        if(reset) begin
            led_light <= 0;
        end begin
            if(led_data_byteen[3]) led_light[31:24] <= LED_Din[31:24];
            if(led_data_byteen[2]) led_light[23:16] <= LED_Din[23:16];
            if(led_data_byteen[1]) led_light[15:8] <= LED_Din[15:8];
            if(led_data_byteen[0]) led_light[7:0] <= LED_Din[7:0];   
        end
    end

endmodule
