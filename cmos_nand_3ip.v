module cmos_nand_3ip(output out, input a, b, c);
wire w1, w2;

nand G1(w1, a, b);
nand G2(w2, w1, w1);
nand G3(out, w2, c);

endmodule
