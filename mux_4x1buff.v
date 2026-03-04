
module mux_4x1buff(input [1:0]s, input [3:0]i, output y);

wire [3:0]w;
dec_2x4 dut(.a(s[1]), .b(s[0]), .y(w));

bufif1 (y,i[0],w[0]);
bufif1 (y,i[1],w[1]);
bufif1 (y,i[2],w[2]);
bufif1 (y,i[3],w[3]);

endmodule