module hdl_using_fsm(output y, input x, clk, reset);

parameter s0 = 2'b00,
          s1 = 2'b01,
          s2 = 2'b10,
          s3 = 2'b11;

reg [1:0] state, nextstate;

/////////////////////////////
// State Register
/////////////////////////////
always @(posedge clk or negedge reset)
begin
    if (!reset)
        state <= s0;
    else
        state <= nextstate;
end

/////////////////////////////
// Next State Logic
/////////////////////////////
always @(*)
begin
    case(state)
        s0: if (x) nextstate = s1; else nextstate = s0;
        s1: if (x) nextstate = s2; else nextstate = s0;
        s2: if (x) nextstate = s3; else nextstate = s0;
        s3: if (x) nextstate = s3; else nextstate = s0;
        default: nextstate = s0;
    endcase
end

/////////////////////////////
// Output Logic (Moore FSM)
/////////////////////////////
assign y = (state == s3);

endmodule

