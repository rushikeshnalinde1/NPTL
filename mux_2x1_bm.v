module mux_2x1_bm(output reg y, input a, b, s);

always @(*) begin
if(s)
	y=b;	
else
	y=a;

end
endmodule

