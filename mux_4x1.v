module mux_4x1(output y,
		input [3:0]i,
		input [1:0]s);
wire w1,w0,a0,a1,a2,a3;

not (w1,s[1]);
not (w0,s[0]);

and (a0,w1,w0, i[0]);
and (a1,w1,s[0], i[1]);
and (a2,s[1],w0, i[2]);
and (a3,s[1],s[0],i[3]);

or (y, a0,a1,a2,a3);
endmodule

