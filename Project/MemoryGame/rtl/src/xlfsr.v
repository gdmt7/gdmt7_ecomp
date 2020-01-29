`timescale 1ns / 1ps

module xLFSR (
   input clk,
   input rst,
   output reg [2:0] out
);

//CONNECTING WIRES
wire feedback;

//ASSIGNEMETS
assign feedback = ~(out[2] ^ out[1]);

always @(posedge clk, posedge rst)
    if (rst)
        out = 3'b0;
    else
        out = {out[1:0],feedback};
endmodule