`timescale 1ns / 1ps
`include "../a/verilog.v"

module ROM_32KB (
    input clk,
    input [14:0] addr,
    input [7:0] data_in,
    output reg [7:0] data_out,
    input we
);

wire [7:0] data_in_aux [31:0];
wire [7:0] data_out_aux [31:0];

genvar i;
    for (i = 0 ; i < 5; i = i + 1) begin : ROM
        ROM ROM0 (
            .clk(clk),
            .addr(addr[9:0]),
            .data_out(data_out_aux[i]),
            .data_in(data_in_aux[i]),
            .we(we)
        );
    end

always @(posedge clk) begin
    case (addr[14:10])
        5'b0: 
            if(we)
                data_in_aux[0] = data_in;
            else
                data_out = data_out_aux[0]
        5'b1: 
            if(we)
                data_in_aux[1] = data_in;
            else
                data_out = data_out_aux[1];        
        5'b2: 
            if(we)
                mem[addr] = data_in;
            else
                data_out = mem[addr];        
        5'b3:
             if(we)
                mem[addr] = data_in;
            else
                data_out = mem[addr];         
        5'b4: 
            if(we)
                mem[addr] = data_in;
            else
                data_out = mem[addr];           
        5'b5:
            if(we)
                mem[addr] = data_in;
            else
                data_out = mem[addr];          
        5'b6: 
            if(we)
                mem[addr] = data_in;
            else
                data_out = mem[addr];         
        5'b7: 
            if(we)
                mem[addr] = data_in;
            else
                data_out = mem[addr];         
        5'b8: 
             if(we)
                mem[addr] = data_in;
            else
                data_out = mem[addr];        
        5'b9:  
            if(we)
                mem[addr] = data_in;
            else
                data_out = mem[addr];         
        5'b10:
            if(we)
                mem[addr] = data_in;
            else
                data_out = mem[addr];          
        5'b11: 
            if(we)
                mem[addr] = data_in;
            else
                data_out = mem[addr];         
        5'b12:
            if(we)
                mem[addr] = data_in;
            else
                data_out = mem[addr];          
        5'b13: 
            if(we)
                mem[addr] = data_in;
            else
                data_out = mem[addr];         
        5'b14:
            if(we)
                mem[addr] = data_in;
            else
                data_out = mem[addr];         
        5'b15:
            if(we)
                mem[addr] = data_in;
            else
                data_out = mem[addr];          
        5'b16: 
            if(we)
                mem[addr] = data_in;
            else
                data_out = mem[addr];         
        5'b17: 
            if(we)
                mem[addr] = data_in;
            else
                data_out = mem[addr];         
        5'b18: 
            if(we)
                mem[addr] = data_in;
            else
                data_out = mem[addr];         
        5'b19: 
            if(we)
                mem[addr] = data_in;
            else
                data_out = mem[addr];          
        5'b20: 
            if(we)
                mem[addr] = data_in;
            else
                data_out = mem[addr];         
        5'b21:
            if(we)
                mem[addr] = data_in;
            else
                data_out = mem[addr];          
        5'b22: 
            if(we)
                mem[addr] = data_in;
            else
                data_out = mem[addr];         
        5'b23:
            if(we)
                mem[addr] = data_in;
            else
                data_out = mem[addr];          
        5'b24:
            if(we)
                mem[addr] = data_in;
            else
                data_out = mem[addr];           
        5'b25: 
            if(we)
                mem[addr] = data_in;
            else
                data_out = mem[addr];         
        5'b26:
            if(we)
                mem[addr] = data_in;
            else
                data_out = mem[addr];          
        5'b27: 
            if(we)
                mem[addr] = data_in;
            else
                data_out = mem[addr];         
        5'b28:
            if(we)
                mem[addr] = data_in;
            else
                data_out = mem[addr];          
        5'b29:
            if(we)
                mem[addr] = data_in;
            else
                data_out = mem[addr];          
        5'b30: 
            if(we)
                mem[addr] = data_in;
            else
                data_out = mem[addr];         
        5'b31:
            if(we)
                mem[addr] = data_in;
            else
                data_out = mem[addr];                                                                         
        default: 
    endcase 

end

endmodule