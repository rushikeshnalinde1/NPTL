module AOIB(output y, input a, b, c, d, cont);
wire w1, w2, w3, w4;
assign w1 = a&b;
assign w2 = c&d;
assign w3 = w1|w2;
assign w4 = ~w3;
assign y = cont? w4: 1'bz;
endmodule
