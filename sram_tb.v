`timescale 1ns/1ps
module syncram_tb;

reg[7:0] datain;
reg[7:0] addr;
reg cs, we, rd, clk;

wire[7:0] dataout;

syncram dut(.datain(datain), .dataout(dataout), .addr(addr), .cs(cs), .we(we), .rd(rd), .clk(clk));

initial 
begin

datain = 8'h0;
addr   = 8'h0;
cs     = 1'b0;
we     = 1'b0;
rd     = 1'b0;
clk    = 1'b0;

#100;

datain = 8'h0;
addr   = 8'h0;
cs     = 1'b1;
we     = 1'b1;
rd     = 1'b0;
#20;

datain = 8'h1;
addr   = 8'h1;
#20;

datain = 8'h10;
addr   = 8'h2;
#20;

datain = 8'h6;
addr   = 8'h3;
#20;

datain = 8'h12;
addr   = 8'h4;
#20;

addr = 8'h0;
we   = 1'b0;
rd   = 1'b1;
#20;

addr = 8'h0;
#20;

addr = 8'h1;
#20;

addr = 8'h2;
#20;

addr = 8'h3;
#20;

addr = 8'h4;
#20;
end

always #10 clk = ~clk;
endmodule








