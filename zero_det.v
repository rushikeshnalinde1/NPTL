module zero_det(output reg y_out, input x_in, clock, reset);

reg[1:0] state, next_state;
parameter s0=2'b00, s1=2'b01, s2=2'b10, s3=2'b11;

always @(posedge clock or negedge reset)
if(reset == 0) state <= s0;
else state<=next_state;

always @(state, x_in)
case(state)

s0 : if(x_in) next_state=s1; else next_state =s0;
s1 : if(x_in) next_state=s2; else next_state =s0;
s2 : if(~x_in) next_state=s0; else next_state = s2;
s3 : if(x_in) next_state=s2; else next_state = s0;
default : next_state=s0;
endcase

always @(state, x_in)
case(state)
s0: y_out = 0;
s1: y_out = ~x_in;
s2: y_out = ~x_in;
s3: y_out = ~x_in;
default : y_out=1'b0;
endcase
endmodule
