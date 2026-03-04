module Dff_edge(output q, qn, input d, clk);
wire p1, p2, p3, p4, w1, w2;

nand G1(p3, p4, p1);
nand G2(p1, p3, clk);
nand G31(w1, p1, clk);
nand G32(w2, w1, w1);
nand G33(p2, w2, p4);
nand G4(p4, d, p2);
nand G5(q, p1, qn);
nand G6(qn, q, p2);

endmodule
