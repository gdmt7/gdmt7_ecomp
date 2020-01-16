`timescale 1ns/1ps

module mc(bl,blb);

inout bl;
inout blb;

assign bl = ~blb;
assign blb = ~bl;

endmodule
