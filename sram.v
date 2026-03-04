module syncram(datain, dataout, addr, cs, clk, we, rd);

parameter adr = 8;
parameter dat = 8;
parameter dpth = 256;

input [adr-1:0] addr;
input cs, clk, we, rd;
input [dat-1:0] datain;

output reg[dat-1:0] dataout;

reg [dat-1:0] sram[0:dpth-1];

always @(posedge clk)
begin
	if(cs==1'b1)
	begin
		if(we==1'b1 && rd==1'b0)
		begin
			sram[addr]<=datain;
		end
		else if(we==1'b0 && rd == 1'b1)
		begin
			dataout <= sram[addr];
		end
		else if(we==1'b1 && rd==1'b1)
		begin 
			sram[addr]<=datain;
			dataout <= sram[addr];
		end
		else;
	end
	else;
end
endmodule

