module mipsALU(A,B,F,Y,C);
input [31:0] A,B;
input [2:0] F;
output C;
output [31:0] Y;

wire [31:0] notB,w1,w2,w3;

assign notB = ~B;
assign w1 = (F[2] == 1) ? notB : B;
assign w2 = w1 & A;
assign w3 = w1 | A;
assign 
