module dec_3x8(y,a,b,c);
output [7:0]y;
input a,b,c;
wire w1;
not (w1,c);

dec_2x4_en D1(.y(y[3:0]),.a(a),.b(b),.e(c));

dec_2x4_en D2(.y(y[7:4]),.a(a),.b(b),.e(w1));

endmodule;