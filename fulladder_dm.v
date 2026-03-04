module fulladder_dm(
			output s, car,
			input a, b, c);

assign {car, s} = a+b+c;

endmodule

