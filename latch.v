module latch(output q, qb, input sb, rb);

nand (q, sb, qb);
nand (qb, rb, q);

endmodule
