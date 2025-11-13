

module T_FF_tb( );
reg T,clk;
wire Q,Qbar;
T_FF dut (.T(T), .clk(clk), .Q(Q), .Qbar(Qbar));
initial 
begin 
clk = 0;
forever #5 
clk = ~clk;
end 
initial 
begin 
T = 1'b0;
#5 T = 1'b1;
#5 T = 1'b0;
#5 $finish;
end 
endmodule
