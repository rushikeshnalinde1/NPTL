module cmos_BE(output out, input a, b, c);
wire w1, w2, w3, w4, w5, w6;
supply1 vdd;
supply0 gnd;
pmos p1(w1, vdd, a);
pmos p2(w1, vdd, b);
pmos p3(w2, w1, b);
pmos p4(w2, w1, c);
pmos p5(w3, w2, c);
pmos p6(w3, w2, a);

nmos n1(w3, w4, a);
nmos n2(w4, gnd, b);
nmos n3(w3, w5, b);
nmos n4(w5, gnd, c);
nmos n5(w3, w6, c);
nmos n6(w6, gnd, a);

pmos p7(out, vdd, w3);
nmos n7(out, gnd, w3);

endmodule;



