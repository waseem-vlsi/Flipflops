
module SR_LATCH_tb( );
reg S,R;
wire Q,Qbar;
SR_LATCH dut(.S(S), .R(R), .Q(Q), .Qbar(Qbar));
initial
begin 
 S = 1'b0; R = 1'b1;
#5 S = 1'b1; R = 1'b0;
#5 S = 1'b0; R = 1'b0;
#5 $finish;
    end 
endmodule
