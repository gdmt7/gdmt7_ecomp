`timescale 1ns / 1ps
`include "xdefs.vh"

module xaddr_extdecoder(
    input [`EXT_ADDR_W-1:0] addr,
    input rd_en,
    input wr_en,
    input [6:0] switch_in,
    input [3:0] button_in,
	 input [2:0] lfsr_in,

    output reg [`DATA_W-1:0] data_out ,
    output reg led_sel,

    output reg [3:0] display_sel
);

reg switch_sel;
reg button_sel;
reg lfsr_sel;

always @(*) begin
    led_sel = 1'b0;
    switch_sel = 1'b0;
    button_sel = 1'b0;
    display_sel = 4'b0;
	 lfsr_sel = 1'b0;
    if ( addr == `LED_BASE)
        led_sel = wr_en;
    else if ( addr == `SWITCH_BASE)
        switch_sel = rd_en;
    else if ( addr == `BUTTON_BASE)
        button_sel = rd_en;
    else if ( addr == `DISPLAY0)
        display_sel[0] = wr_en;
    else if ( addr == `DISPLAY1)
        display_sel[1] = wr_en;
    else if ( addr == `DISPLAY2)
        display_sel[2] = wr_en;
    else if ( addr == `DISPLAY3)
        display_sel[3] = wr_en;
	 else if ( addr == `LFSR_BASE)
        lfsr_sel = rd_en;	  
end


always @(*) begin
    data_out = `DATA_W'd0;
    if(button_sel)
        data_out = button_in;
    else if(switch_sel)
        data_out = switch_in;
	 else if(lfsr_sel)
        data_out = lfsr_in;	
end
	
endmodule // xaddr_extdecoder
