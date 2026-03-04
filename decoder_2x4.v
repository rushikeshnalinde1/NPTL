module decoder(output reg [3:0]i, input a, b);
always @(*)
begin 
case ({a, b})

2'b00 : i=4'b0001;
2'b01 : i=4'b0010;
2'b10 : i=4'b0100;
2'b11 : i=4'b1000;
default : i=4'b0000;

endcase
end
endmodule