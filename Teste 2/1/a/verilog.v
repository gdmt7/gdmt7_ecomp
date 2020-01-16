`timescale 1ns / 1ps

module ROM (
    input clk,
    input [9:0] addr,
    input [7:0] data_in,
    output reg [7:0] data_out,
    input we
);

reg [7:0] mem [0:1023];

initial
begin
    $readmemb("memory",mem,0,1023);
end

always@(posedge clk) begin
    if(we)
        mem[addr] = data_in;
    else
        data_out = mem[addr];
end

endmodule