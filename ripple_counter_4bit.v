module ripple_counter_4bit(output [3:0]q, input [3:0]t, input clk);
tff_bm T1(.t(t[0]), .q(q[0]), .clk(clk));
tff_bm T2(.t(t[1]), .q(q[1]), .clk(q[0]));
tff_bm T3(.t(t[2]), .q(q[2]), .clk(q[1]));
tff_bm T4(.t(t[3]), .q(q[3]), .clk(q[2]));
endmodule