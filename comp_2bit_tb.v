module comp_2bit_tb ;
reg [1:0]a,b;
wire e2,g2,l2;
comp_2bit dut(e2,g2,l2,a,b);
initial begin 

a=3; b=2; #10;
a=2; b=1; #10;
a=1; b=1; #10;
a=2; b=2; #10;
a=0; b=1; #10;
a=1; b=2; #10;

end
endmodule