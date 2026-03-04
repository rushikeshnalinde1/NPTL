module mux_2x1_buff_tb;

reg [1:0]i;
reg s;
wire y;

mux_2x1_buff dut(.y(y), .s(s), .i(i));
initial begin 
$monitor("time=%0t s=%b i=%b y=%b", $time,s,i,y);
s=1'b0; i=2'b01; #10;
s=1'b0; i=2'b11; #10;
s=1'b1; i=2'b00; #10;
s=1'b1; i=2'b01; #10;
$stop;
end
endmodule
