module comp_2bit(e2,g2,l2,a,b);
output e2,g2,l2;
input [1:0]a,b;
wire e0,e1,g0,g1,l0,l1,w1,w2;

comp_1bit M1(e0,g0,l0,a[0],b[0]);
comp_1bit M2(e1,g1,l1,a[1],b[1]);

and (e2,e1,e0);
and (w1,g0,e1);
and (w2,e1,l0);
or  (g2,w1,g1);
or  (l2,w2,l1);

endmodule
