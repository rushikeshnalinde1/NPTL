
module AOI(output y, input a, b, c, d);
assign y = !((a&b)|(c&d));
endmodule