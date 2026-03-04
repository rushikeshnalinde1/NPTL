module seq_det_111(output  y, input x, clk);
wire j0, k0, j1, k1, q0, q1;

assign j0 = x;
assign k0 = ~(x&q1);
assign j1 = x&q0;
assign k1 = ~x;
assign y  = q1&q0&x;

jkff_bm FF0(.j(j0), .k(k0), .clk(clk), .q(q0));
jkff_bm FF1(.j(j1), .k(k1), .clk(clk), .q(q1));

endmodule
