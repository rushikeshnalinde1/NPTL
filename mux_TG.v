module mux_TG(output out, input i0, i1, s);
wire w1;

not (w1, s);

cmos_TG T1(.out(out), .ip(i0), .p(s), .n(w1));
cmos_TG T2(.out(out), .ip(i1), .p(w1), .n(s));

endmodule
