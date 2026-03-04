module tff_bm(output q, input t, clk);
wire dt;
assign dt = t^q;
dff_bm dut(.q(q), .clk(clk), .d(dt));
endmodule
