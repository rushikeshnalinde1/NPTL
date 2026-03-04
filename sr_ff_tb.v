module sr_ff_tb;
reg s, r, clk;
wire q, qn;

sr_ff dut(.s(s), .r(r), .clk(clk), .q(q), .qn(qn));
always #5 clk = ~clk;
initial begin

clk=0;
r=0;
s=0;

$monitor("time=%0t clk=%b s=%b r=%b q=%b qn=%b", $time, clk, s, r, q, qn);

 // HOLD
    #10 s = 0; r = 0;

    // SET
    #10 s = 1; r = 0;

    // HOLD
    #10 s = 0; r = 0;

    // RESET
    #10 s = 0; r = 1;

    // HOLD
    #10 s = 0; r = 0;

    // INVALID CONDITION
    #10 s = 1; r = 1;

    #20 $stop;
end

endmodule
