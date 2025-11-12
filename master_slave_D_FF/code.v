
//SR_FLIP_FLOP

module SR_FLIP_FLOP(
input S,R,clk,
output reg Q,
output Qbar);

always@( posedge clk )
begin
case ({S,R})
2'b00 : Q <= Q;
2'b01 : Q <= 1'b0;
2'b10 : Q <= 1'b1;
2'b11 : Q <= 1'bx;
 endcase
end
assign Qbar = ~Q;
endmodule

//negative clk flopflop

module SR_FLIP_FLOP_neg(
input S,R,clk,
output reg Q,
output Qbar);
always@( posedge ~clk )
begin
case ({S,R})
2'b00 : Q <= Q;
2'b01 : Q <= 1'b0;
2'b10 : Q <= 1'b1;
2'b11 : Q <= 1'bx;
 endcase
end
assign Qbar = ~Q;
endmodule

//main_module

module master_slave_D_FF(
input D,D_bar,clk,clk_Bar,
output Q,Qbar );
assign D_bar = ~D;
wire w1,w2;
SR_FLIP_FLOP A1(.S(D), .R(D_bar),.clk(clk), .Q(w1), .Qbar(w2));
SR_FLIP_FLOP_neg A2(.S(w1), .R(w2), .clk(~clk), .Q(Q), .Qbar(Qbar));
endmodule
