module dec_2x4_en(y,a,b,e);
output [3:0]y;
input a,b,e;
wire w1,w2;
not (w1,a);
not (w2,b);

and (y[0],w1,w2,e);
and (y[1],w1,b,e);
and (y[2],a,w2,e);
and (y[3],a,b,e);

endmodule