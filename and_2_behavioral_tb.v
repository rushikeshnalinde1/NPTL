`include "and_2_behavioral.v"
module and_2_behavioral_tb;
wire y;
reg a, b;
and_2_behavioral instance0(.y(y), .a(a), .b(b));
initial begin
a = 0; b = 0;
#1 a=0; b=1;
#1 a=1; b=0;
#1 a=1; b=1;
end
endmodule
