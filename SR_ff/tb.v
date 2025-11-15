
module SR_FLIP_FLOP_tb( );
reg S,R,clk;
wire Q,Qbar;
SR_FLIP_FLOP dut(.S(S), .R(R), .clk(clk), .Q(Q), .Qbar(Qbar));
initial  
begin 
clk = 0;
forever #5 
    clk = ~clk;
end 
initial 
begin 
S = 1'b0; R = 1'b1;
#5 S = 1'b1; R = 1'b0;
#5 S = 1'b0; R = 1'b1;
#20 $finish;
end 
endmodule

