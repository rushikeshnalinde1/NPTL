
module mux_4x1_buff(output y, input [1:0]s, input [3:0]i);

wire w1,w2;

mux_2x1_buff M1( .y(w1), .s(s[0]), .i(i[1:0]));
mux_2x1_buff M2( .y(w2), .s(s[0]), .i(i[3:2]));
mux_2x1_buff M3( .y(y),  .s(s[1]), .i({w2,w1}));

endmodule