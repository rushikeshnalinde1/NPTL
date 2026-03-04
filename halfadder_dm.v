module halfadder_dm(output s, c, input a, b);
assign {c, s} = a+b;
endmodule
