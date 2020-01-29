`timescale 1ns / 1ps
`include "xdefs.vh"

module xled (
    input clk,
    input rst,
    input sel,
    input [7:0] in,
    output reg [7:0] out
);

always@(posedge clk, posedge rst) begin
    if(rst)
        out <= 7'b0;
    else if (sel)
        out <= in;
end
endmodule
