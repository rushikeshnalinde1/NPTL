module mux_2x1_tb;
reg [1:0]i;
reg s0;
wire y;

mux_2x1 dut(.y(y),
		.i(i),
		.s0(s0));
initial begin 

$monitor("time = %0t i=%b  s0=%b y=%b", $time,i,s0,y);

s0 = 1'b0; i= 2'b01; #10;
s0=1'b1; i=2'b00; #10;
s0=1'b1; i=2'b10; #10;
s0=1'b1; i=2'b11; #10;

$stop;
end
endmodule
