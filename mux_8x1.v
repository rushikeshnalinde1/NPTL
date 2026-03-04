module mux_8x1(output y, input [7:0]i, input [2:0]s);
wire w1,w2;

mux_4x1buff M1(.s(s[1:0]), .i(i[3:0]), .y(w1));
mux_4x1buff M2(.s(s[1:0]), .i(i[7:4]), .y(w2));
mux_2x1_buff M3(.y(y), .i({w2,w1}), .s(s[2]));

endmodule



