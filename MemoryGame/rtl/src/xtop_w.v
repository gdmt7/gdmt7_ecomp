`timescale 1ns / 1ps
`include "xdefs.vh"

module xtop_w (
    input clk,
    input rst,
    output trap,

    input [6:0] sw,
    input [3:0] btn,
    output [7:0] leds,
    output [11:0] seg
);
//CONNECTION WIRES
wire [`ADDR_W-2:0] addr_wire;
wire [`DATA_W-1:0] datain_wire;
wire [`DATA_W-1:0] dataout_wire;

wire rden_wire;
wire wren_wire;

wire ledsel_wire;
wire [3:0] displaysel_wire;
//wire lfsrsel_wire;
wire [2:0] lfsr_wire;
wire timersel_wire;
wire timer_wire;

//ASSIGNMENTS

//COMPONENTS INSTANTIATION
xtop top(
    .clk(clk),
    .rst(rst),
    .trap(trap),
    .par_addr(addr_wire),
    .par_in(dataout_wire),
    .par_re(rden_wire),
    .par_out(datain_wire),
    .par_we(wren_wire)
);
xaddr_extdecoder addr_extdecoder(
    .addr(addr_wire[`EXT_ADDR_W-1:0]),
    .rd_en(rden_wire),
    .wr_en(wren_wire),
    .button_in(btn),
    .switch_in(sw),
    .lfsr_in(lfsr_wire),
    .timer_in(timer_wire),

    .data_out(dataout_wire),
    .led_sel(ledsel_wire),
    .display_sel(displaysel_wire),
    //.lfsr_sel(lfsrsel_wire),
    .timer_sel(timersel_wire)
);
xled led (
    .clk(clk),
    .rst(rst),
    .sel(ledsel_wire),
    .in(datain_wire[7:0]),
    .out(leds)
);
xdisplay display (
    .clk(clk),
    .rst(rst),
    .n_display(displaysel_wire),
    .segments(datain_wire[7:0]),
    .out(seg)
);
xLFSR LFSR (
    .clk(clk),
    .rst(rst),
    .out(lfsr_wire)
);

/*xtimer timer (
    .clk(clk),
    .rst(rst),
    .en(timersel_wire),
    .tc(timer_wire)
);*/
endmodule // xtop_w