
module D_ff_with_reset_and_enable_tb( );
reg  D,rst,enable,clk;
wire Q;
D_ff_with_reset_and_enable DUT(.D(D), .rst(rst), .enable(enable), .clk(clk), .Q(Q));
initial 
begin 
clk = 1'b0;
forever 
#10 clk = ~clk;
end 
initial 
begin 
rst = 1'b1; enable = 1'b0; D = 1'b0;
#10 D = 1'b1;
#12 rst = 1'b0; enable = 1'b1; 
#10  rst = 1'b0; enable = 1'b1; D = 1'b0;
$display ("time = %0t rst = %b Q = %b enable = %b", $time, rst, Q, enable);
#10 $finish;
end 
initial 
begin 
$monitor ("time = %0t rst = %b Q = %b enable = %b", $time, rst,Q, enable);
end  
endmodule

