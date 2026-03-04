module mux_2x1_buff(output y, input [1:0]i, input s);

wire w0;
not (w0,s);
bufif1 B1(y, i[0], w0);
bufif1 B2(y, i[1], s);

endmodule
