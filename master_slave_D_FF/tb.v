
module master_slave_D_FF_tb( );
reg D,clk;
wire Q,Qbar;
master_slave_D_FF dut(.D(D), .clk(clk), .Q(Q), .Qbar(Qbar));
initial  
begin 
clk = 0;
forever #5 
    clk = ~clk;
end 
initial 
begin 
D = 1'b0;
#5 D = 1'b1;
#5 D = 1'b1;
#5 D = 1'b0;
#5 D = 1'b0;
#5 D = 1'b1;
#20 $finish;
end 
endmodule


