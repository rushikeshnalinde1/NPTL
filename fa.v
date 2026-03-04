module fa(a, b, c, sum, carry);
input a, b, c;
output sum, carry;
wire d, e, f;
xor (sum, a, b, c);
and (d, a, b);
and (e, b, c);
and (f, a, c);
or (carry, d, e, f);
endmodule
