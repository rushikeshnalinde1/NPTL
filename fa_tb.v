module fa_tb;
reg a, b, c;
wire sum, carry;
fa dut(.a(a), .b(b), .c(c), .carry(carry), .sum(sum));
initial begin
#10 a=1'b0; b=1'b0; c =1'b0;
#10 a=1'b0; b=1'b0; c=1'b1;
end
endmodule
