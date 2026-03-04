module cmos_TG(output out, input ip, p, n);

pmos p1(out, ip, p);
nmos n1(ip, out, n);

endmodule