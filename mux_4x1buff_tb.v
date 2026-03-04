module mux_4x1buff_tb;
reg [3:0]i;
reg [1:0]s;
wire y;

mux_4x1buff dut(.i(i), .s(s), .y(y));
initial begin 

$monitor("time=%0t s=%b i=%b y=%b", $time, s, i, y);

s=2'b00; i=4'b1110; #10;
s=2'b01; i=4'b0000; #10;
s=2'b10; i=4'b0110; #10;
s=2'b11; i=4'b1011; #10;

$stop;
end
endmodule


