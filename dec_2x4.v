module dec_2x4(y,a,b);
output [3:0]y;
input a,b;
wire w1,w2;
not (w1,a);
not (w2,b);

and (y[0],w1,w2);
and (y[1],w1,b);
and (y[2],a,w2);
and (y[3],a,b);

endmodule