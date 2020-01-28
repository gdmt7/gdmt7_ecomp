`timescale 1ns / 1ps
`include "xdefs.vh"

module xdisplay (
    input clk,
    input rst,
    input [3:0] n_display,
    input [7:0] segments,
    output reg [11:0] out
);

reg [17:0] cntDiv = 18'h0;
wire enRegister;
reg [3:0] shiftRegister= 4'b1;
reg [7:0] dis_reg_aux0;
reg [7:0] dis_reg_aux1;
reg [7:0] dis_reg_aux2;
reg [7:0] dis_reg_aux3;

always@(posedge clk, posedge rst) begin
    if(rst)
        cntDiv <= 4'b0;
    else
        cntDiv <= cntDiv + 1;
end

always@(posedge clk, posedge rst) begin
    if(rst)
        shiftRegister <= 4'b1;
    else if (shiftRegister == 4'b0000)
        shiftRegister <= 4'b1;
    else if (enRegister)
        shiftRegister <= shiftRegister << 1;
end

assign enRegister = (cntDiv == 18'h3FFFF);

always @(posedge clk, posedge rst) begin
    if (rst)
        dis_reg_aux0 <= 8'hFF;
    else
        if (n_display[0])
            dis_reg_aux0 <= segments;
end

always @(posedge clk, posedge rst) begin
    if (rst)
        dis_reg_aux1 <= 8'hFF;
    else
        if (n_display[1])
            dis_reg_aux1 <= segments;
end

always @(posedge clk, posedge rst) begin
    if (rst)
        dis_reg_aux2 <= 8'hFF;
    else
        if (n_display[2])
            dis_reg_aux2 <= segments;
end

always @(posedge clk, posedge rst) begin
    if (rst)
        dis_reg_aux3 <= 8'hFF;
    else
        if (n_display[3])
            dis_reg_aux3 <= segments;
end

always@(*) begin
    if (rst)
        out = 12'hFFF;
    else
    case (shiftRegister)
        1: out = {4'hE, dis_reg_aux0};
        2: out = {4'hD, dis_reg_aux1};
        4: out = {4'hB, dis_reg_aux2};
        8: out = {4'h7, dis_reg_aux3};
        default: 
            out = 12'b0;
    endcase
end

endmodule