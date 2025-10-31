
module J_K_FF_tb();
reg J,K,clk;
wire Q,Qbar;
J_K_FF dut(.J(J), .K(K), .Q(Q), .Qbar(Qbar), .clk(clk));
initial
begin 
clk = 0;
forever #5
 clk = ~clk;
 end 
 initial 
 begin 
 J = 1'b0; K = 1'b1;
#5 J = 1'b1; K = 1'b0;
#5 J = 1'b1; K = 1'b1;
#20 $finish;
end 
endmodule
