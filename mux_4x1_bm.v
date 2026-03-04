module mux_4x1_dm(output reg y, input a, b, c, d, s1, s0);

always @(*) 
begin 
case({s1,s0})
2'b00: y=a;
2'b01: y=b;
2'b10: y=c;
2'b11: y=d;
default: y = 1'b0;
endcase
end
endmodule
