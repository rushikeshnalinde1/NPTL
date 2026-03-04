module incod_8x3(a,b,c,x);
output a,b,c;
input [8:1]x;
or M1(a,x[5],x[6],x[7],x[8]);
or M2(b,x[3],x[4],x[7],x[8]);
or M3(c,x[2],x[4],x[6],x[8]);
endmodule