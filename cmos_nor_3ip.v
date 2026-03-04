module cmos_nor_3ip(output out, input a, b, c);
supply0 gnd;

rnmos n1(out, gnd, a);
rnmos n2(out, gnd, b);
rnmos n3(out, gnd, c);

pullup(out);
endmodule
