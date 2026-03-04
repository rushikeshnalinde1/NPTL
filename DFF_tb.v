`timescale 1ns/1ps
module dff_tb;
reg in, clock, res;

wire out, outb;

dff dut(.q(out), .qb(outb), .clk(clock), .d(in), .reset(res));

initial begin
in = 1'b0;
clock = 1'b0;
res = 1'b1;

#100;
res = 1'b0;

#20
forever #40 in = ~in;
end
always #10 clock = ~clock;
endmodule
