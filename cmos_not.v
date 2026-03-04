module cmos_not(output out, input in);
supply0 gnd;
supply1 vdd;

pmos P1(out, vdd, in);
nmos N1(out, gnd, in);

endmodule