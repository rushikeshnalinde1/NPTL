module cmos_nand(output op, input a, b);

wire w;

supply0 gnd;
supply1 vdd;


pmos p1(op, vdd, a);
pmos p2(op, vdd, b);

nmos n1(op, w, a);
nmos n2(w, gnd, b);

endmodule

