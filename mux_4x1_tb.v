module mux_4x1_tb;
wire y;
reg [3:0]i;
reg [1:0]s;

mux_4x1 dut(.y(y),
		.i(i[3:0]),
		.s(s[1:0]));
initial begin
i=0; s[1]=0; s[0]=0; #10;
i=0; s[1]=0; s[0]=1; #10;
i=0; s[1]=1; s[0]=0; #10;
i=0; s[1]=1; s[0]=1; #10;
i=1; s[1]=0; s[0]=0; #10;
i=2; s[1]=0; s[0]=1; #10;
i=4; s[1]=1; s[0]=0; #10;
i=8; s[1]=1; s[0]=1; #10;
end
endmodule
