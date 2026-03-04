// f= ab+bc+ca

module boolen_nand(output out, input a, b, c);

wire p, q, r;
//gate instances
cmos_nand G1(p, a, b);
cmos_nand G2(q, b, c);
cmos_nand G3(r, c, a);
cmos_nand_3ip G4(.out(out), .a(p), .b(q), .c(r));

endmodule


