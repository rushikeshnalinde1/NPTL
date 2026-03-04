`timescale 1ns/1ps
module mux_tb;
reg select, i0, i1;
wire out;

mux m1(.select(select), .i0(i0), .i1(i1), .out(out));

initial begin

#10 select = 0; i0 = 0; i1 = 1;
#10 select = 1; i0 = 0; i1 = 1;
#10 select = 0; i0 = 1; i1 = 0;
#10 select = 1; i0 = 1; i1 = 0;
end
endmodule
