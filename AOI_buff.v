module AOI_buff(output y, input a, b, c, d, cont);
assign y = cont?!((a&b)|(c&d)): 1'bz;
endmodule
