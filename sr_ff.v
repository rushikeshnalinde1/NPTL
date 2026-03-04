module sr_ff(q,qn,s,r,clk);
output q,qn;
input s,r,clk;
wire w1,w2;

nand (w1, s, clk);
nand (w2, r, clk);

nand (q, w1, qn);
nand (qn, w2, q);

endmodule