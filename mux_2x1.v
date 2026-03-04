module mux_2x1(output y,
		input s0,
		input [1:0]i);

wire a0,a1,w0;

not (w0,s0);
and (a0,w0,i[0]);
and (a1,s0,i[1]);

or (y,a0,a1);

endmodule
