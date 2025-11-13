

module T_FF(
input T,clk,
output reg Q = 0,
output Qbar);
always@(posedge clk)
begin 
case(T)
1'b0 : Q <= Q;
1'b1: Q <= ~Q;
endcase 
end 
assign Qbar = ~Q;
endmodule
