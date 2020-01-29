`timescale 1ns / 1ps
`include "xdefs.vh"

module xtimer (
    input clk,
    input rst,
    input en,
    output reg tc
);

//reg [19:0] cntDiv;
reg [3:0] cntDiv;

always@(posedge clk, posedge rst) begin
    if (rst)
        cntDiv <= 0;  
    else if (en)
        cntDiv <= 0;
    else
        cntDiv <= cntDiv + 1;   
end


always@(posedge clk, posedge rst) begin
    if (rst)
        tc <= 0;
    else if (en) 
        tc <= 0;   
    else if(cntDiv == 4'hF)
        tc <= 1;  
end        

//assign tc = (cntDiv == 4'hF);
//assign tc = (cntDiv == 20'hFFFFF);

endmodule
