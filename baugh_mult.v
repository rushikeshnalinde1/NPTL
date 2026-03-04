
module baugh_mult(a, b, p);
input [3:0] a, b;
output [7:0] p;

supply1 one;
wire w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15, w16, w17, w18, w19, w20, w21, w22, w23;

assign p[0] = a[0]&b[0];

halfadder_dm H1(p[1], w1, a[1]&b[0], a[0]&b[1]);
halfadder_dm H2(w2, w3, a[2]&b[0], a[1]&b[1]);
halfadder_dm H3(w4, w5, ~(a[3]&b[0]), a[2]&b[1]);

fulladder_dm F1(p[2], w6, a[0]&b[2], w1, w2);
fulladder_dm F2(w7, w8, a[1]&b[2], w4, w3);
fulladder_dm F3(w9, w10, a[2]&b[2], ~(a[3]&b[1]), w5);

fulladder_dm F4(p[3], w11, ~(a[0]&b[3]), w6, w7);
fulladder_dm F5(w12, w13, ~(a[1]&b[3]), w8, w9);
fulladder_dm F6(w14, w15, ~(a[2]&b[3]), ~(a[3]&b[2]), w10);

fulladder_dm F7(p[4], w16, one, w11, w12);
halfadder_dm H4(w17, w18, w13, w14);
halfadder_dm H5(w19, w20, w15, a[3]&b[3]);

halfadder_dm H6(p[5], w21, w16, w17);
halfadder_dm H7(w22, w23, w18, w19);

halfadder_dm H8(p[6], p[7], w21, w22);

endmodule