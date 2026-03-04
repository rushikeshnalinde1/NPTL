module cmos_nor(output out, input in);
wire w;
supply0 gnd;
supply1 vdd;

pmos p1(w, vdd, a);
pmos p2(op, w, b);
nmos n1(op, gnd, a);
nmos n2(op, gnd, b);

endmodule
