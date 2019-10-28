`timescale 1ns / 1ps

module sub_shft_div (
                     input         clk,
                     input         rst,
                     input         start,
                     input         [3:0] D, 
                     input         [3:0] d,
                     output reg    q,
                     output reg    [3:0] r
                     );
  
  reg [3:0] D_aux;
  reg [3:0] d_aux;
  reg [7:0] RD;
  
  always@(posedge clk) begin
    if(rst) begin
      D_aux <= 0;
      d_aux <= 0;
      RD <= 0;
    end
    else if(start) begin
      D_aux <= D;
      d_aux <= d;
    end
    else begin
      RD <= {r,RD[2:0],q};
    end 
 end

  always@* begin
    if(D_aux > d_aux) begin
      r = D_aux - d_aux;
      q = 1;
    end
    else begin
      r = D_aux;
      q = 0;
   end
  end

endmodule


module sub_shft_div_tb ();

   reg clk, rst;
   reg [3:0] D, d;
   wire [3:0] r;
   wire q;
   wire [7:0] RD;
   reg start;
   
   sub_shft_div div0 (
                       .clk(clk),
                       .rst(rst),
                       .start(start),
                       .D(D),
                       .d(d),
                       .q(q),
                       .r(r)
                     );   

   initial begin

      $dumpfile("dump.vcd");
      $dumpvars;
      
      rst = 1;
      clk = 1;
      start = 0;

      D = 14;
      d = 3;

      @(posedge clk) #1 rst=0;

      #3 @(posedge clk) #1 start=1;
      @(posedge clk) #1 start=0;

      //@(posedge done)$display("%d /%d =%d *%d +%d",a ,b ,c ,b ,d);
      
      $finish;
   end
   
   always #10 clk = ~clk;
 
endmodule
