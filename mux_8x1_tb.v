module mux_8x1_tb;
wire y;
reg [2:0]s;
reg [7:0]i;

mux_8x1 dut(.y(y), .i(i), .s(s));
initial begin 

$monitor("time = %0t, s=%b, i=%b, y=%b", $time, s, i, y);

s=3'b010; i=8'b00101010; #10;
s=3'b100; i=8'b11111111; #10;
s=3'b110; i=8'b01010101; #10;
s=3'b111; i=8'b01111111; #10;

$stop;
end
endmodule
