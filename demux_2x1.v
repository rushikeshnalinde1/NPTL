module demux_2x1(output [1:0]y, input i, s);

wire w;

not (w,s);
and (y[0], w, i);
and (y[1], s, i);

endmodule