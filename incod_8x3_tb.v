module incod_8x3_tb;
wire a,b,c;
reg [8:1]x;

incod_8x3 dut(a,b,c,x);
initial begin 
x[1]=1;x[2]=0;x[3]=0;x[4]=0; x[5]=0; x[6]=0; x[7]=0; x[8]=0; #10;
x[1]=0;x[2]=0;x[3]=0;x[4]=0; x[5]=0; x[6]=0; x[7]=0; x[8]=1; #10;
end 
endmodule