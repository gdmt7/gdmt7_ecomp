`timescale 1ns / 1ps
`include "../a/verilog.v"

module ROM_16KB (
    input clk,
    input [13:0] addr,
    input [31:0] data_in,
    output reg [31:0] data_out,
    input we
);

wire [7:0] data_in_aux_0;
wire [7:0] data_in_aux_1;
wire [7:0] data_in_aux_2;
wire [7:0] data_in_aux_3;
wire [7:0] data_in_aux_4;
wire [7:0] data_in_aux_5;
wire [7:0] data_in_aux_6;
wire [7:0] data_in_aux_7;
wire [7:0] data_in_aux_8;
wire [7:0] data_in_aux_9;
wire [7:0] data_in_aux_10;
wire [7:0] data_in_aux_11;
wire [7:0] data_in_aux_12;
wire [7:0] data_in_aux_13;
wire [7:0] data_in_aux_14;
wire [7:0] data_in_aux_15;

wire [7:0] data_out_aux_0;
wire [7:0] data_out_aux_1;
wire [7:0] data_out_aux_2;
wire [7:0] data_out_aux_3;
wire [7:0] data_out_aux_4;
wire [7:0] data_out_aux_5;
wire [7:0] data_out_aux_6;
wire [7:0] data_out_aux_7;
wire [7:0] data_out_aux_8;
wire [7:0] data_out_aux_9;
wire [7:0] data_out_aux_10;
wire [7:0] data_out_aux_11;
wire [7:0] data_out_aux_12;
wire [7:0] data_out_aux_13;
wire [7:0] data_out_aux_14;
wire [7:0] data_out_aux_15;

ROM ROM0 (
    .clk(clk),
    .addr(addr[9:0]),
    .data_out(data_out_aux_0),
    .data_in(data_in_aux_0),
    .we(we)
);

ROM ROM1 (
    .clk(clk),
    .addr(addr[9:0]),
    .data_out(data_out_aux_1),
    .data_in(data_in_aux_1),
    .we(we)
);

ROM ROM2 (
    .clk(clk),
    .addr(addr[9:0]),
    .data_out(data_out_aux_2),
    .data_in(data_in_aux_2),
    .we(we)
);

ROM ROM3 (
    .clk(clk),
    .addr(addr[9:0]),
    .data_out(data_out_aux_3),
    .data_in(data_in_aux_3),
    .we(we)
);

ROM ROM4 (
    .clk(clk),
    .addr(addr[9:0]),
    .data_out(data_out_aux_4),
    .data_in(data_in_aux_4),
    .we(we)
);

ROM ROM5 (
    .clk(clk),
    .addr(addr[9:0]),
    .data_out(data_out_aux_5),
    .data_in(data_in_aux_5),
    .we(we)
);

ROM ROM6 (
    .clk(clk),
    .addr(addr[9:0]),
    .data_out(data_out_aux_6),
    .data_in(data_in_aux_6),
    .we(we)
);

ROM ROM7 (
    .clk(clk),
    .addr(addr[9:0]),
    .data_out(data_out_aux_7),
    .data_in(data_in_aux_7),
    .we(we)
);

ROM ROM8 (
    .clk(clk),
    .addr(addr[9:0]),
    .data_out(data_out_aux_8),
    .data_in(data_in_aux_8),
    .we(we)
);

ROM ROM9 (
    .clk(clk),
    .addr(addr[9:0]),
    .data_out(data_out_aux_9),
    .data_in(data_in_aux_9),
    .we(we)
);
ROM ROM10 (
    .clk(clk),
    .addr(addr[9:0]),
    .data_out(data_out_aux_10),
    .data_in(data_in_aux_10),
    .we(we)
);

ROM ROM11 (
    .clk(clk),
    .addr(addr[9:0]),
    .data_out(data_out_aux_11),
    .data_in(data_in_aux_11),
    .we(we)
);

ROM ROM12 (
    .clk(clk),
    .addr(addr[9:0]),
    .data_out(data_out_aux_12),
    .data_in(data_in_aux_12),
    .we(we)
);

ROM ROM13 (
    .clk(clk),
    .addr(addr[9:0]),
    .data_out(data_out_aux_13),
    .data_in(data_in_aux_13),
    .we(we)
);

ROM ROM14 (
    .clk(clk),
    .addr(addr[9:0]),
    .data_out(data_out_aux_14),
    .data_in(data_in_aux_14),
    .we(we)
);

ROM ROM15 (
    .clk(clk),
    .addr(addr[9:0]),
    .data_out(data_out_aux_15),
    .data_in(data_in_aux_15),
    .we(we)
);

always @(posedge clk) begin
    if(addr[13:10] == 4'b0) begin
        if(we)
            {data_in_aux_3,data_in_aux_2,data_in_aux_1,data_in_aux_0} = data_in;
        else
            data_out = {data_out_aux_3,data_out_aux_2,data_out_aux_1,data_out_aux_0};
    end        
    else if(addr[13:10] == 4'b1) begin
        if(we)
            {data_in_aux_7,data_in_aux_6,data_in_aux_5,data_in_aux_4} = data_in;
        else
            data_out = {data_out_aux_7,data_out_aux_6,data_out_aux_5,data_out_aux_4};    
    end
    else if(addr[13:10] == 4'b2) begin
        if(we)
            {data_in_aux_11,data_in_aux_10,data_in_aux_9,data_in_aux_8} = data_in;
        else
            data_out = {data_out_aux_11,data_out_aux_10,data_out_aux_9,data_out_aux_8};
    end
    else if(addr[13:10] == 4'b3) begin
        if(we)
            {data_in_aux_15,data_in_aux_14,data_in_aux_13,data_in_aux_12} = data_in;
        else
            data_out = {data_out_aux_15,data_out_aux_14,data_out_aux_13,data_out_aux_12};
    end
end

endmodule