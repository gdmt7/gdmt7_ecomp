`timescale 1ns/1ps

module mc_tb;

wire bl, blb;
reg drive_bl, drive_blb;

mc uut(.bl(bl),
       .blb(blb)
      );

initial begin
    $dumpfile("dump.vcd");
    $dumpvars();

    # 10 drive_bl = 0;
    drive_blb = 1;

    #100; 
    $finish;
end

assign bl = drive_bl;
assign blb = drive_blb;

endmodule
