
module D_ff_with_reset_and_enable(
input D,rst,enable,clk,
output reg Q);
always@(posedge clk)
begin 
if(rst)
Q <= 1'b0;
else if(enable)
Q <= D;
else 
Q <= 1'b0;
end
endmodule
