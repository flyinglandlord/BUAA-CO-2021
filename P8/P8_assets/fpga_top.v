/* Template Top Module for CO-FPGA */

module fpga_top (
    // clock and reset
    input clk_in,
    input sys_rstn,
    // dip switch
    input [7:0] dip_switch0,
    input [7:0] dip_switch1,
    input [7:0] dip_switch2,
    input [7:0] dip_switch3,
    input [7:0] dip_switch4,
    input [7:0] dip_switch5,
    input [7:0] dip_switch6,
    input [7:0] dip_switch7,
    // key
    input [7:0] user_key,
    // led
    output [31:0] led_light,
    // digital tube
    output [7:0] digital_tube2,
    output digital_tube_sel2,
    output [7:0] digital_tube1,
    output [3:0] digital_tube_sel1,
    output [7:0] digital_tube0,
    output [3:0] digital_tube_sel0,
    // uart
    input uart_rxd,
    output uart_txd
);

    // Your code here

    always @(posedge clk_in) begin
        if (~sys_rstn) begin
            // synchronous reset
        end
        else begin
            // Your code here
        end
    end

    // Default assignment for peripherals not in use. Comment corresponding line(s) if you use them.
    // UART: idle
    assign uart_txd = 1'b1;
    // LED: off
    assign led_light = 32'hFFFF_FFFF;
    // Digital tube: off
    assign digital_tube_sel0 = 4'b1111;
    assign digital_tube_sel1 = 4'b1111;
    assign digital_tube_sel2 = 1'b1;
    assign digital_tube0 = 8'hFF;
    assign digital_tube1 = 8'hFF;
    assign digital_tube2 = 8'hFF;

endmodule