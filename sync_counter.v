module sync_counter(output wire [2:0]q, input clk);
wire [2:0]j, k;

assign j[0] = 1, k[0] = 1, j[1] = q[0], k[1] = q[0], j[2] = q[1]&q[0], k[2]=q[1]&q[0];

jkff_bm F0(.q(q[0]), .j(j[0]), .k(k[0]), .clk(clk));
jkff_bm F1(.q(q[1]), .j(j[1]), .k(k[1]), .clk(clk));
jkff_bm F2(.q(q[2]), .j(j[2]), .k(k[2]), .clk(clk));

endmodule
