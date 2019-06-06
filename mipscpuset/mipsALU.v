module mipsALU(A,B,F,Y,C);
    input [31:0] A,B;
    input [2:0] F;
    output C;
    output [31:0] Y;

    wire [31:0] notB,w1,w2,w3,S,extended;

    assign notB = ~B;
    assign w1 = (F[2] == 1) ? notB : B;
    assign w2 = w1 & A;
    assign w3 = w1 | A;
    Add32 Add32(A,w1,S,C);
    assign extended[31:1] = 31'b0000000000000000000000000000000;
    assign extended[0] = S[31];
    assign Y = (F[1] == 0) ? ((F[0] == 0) ? w2 : w3) : ((F[0] == 0) ? S : extended);
endmodule    
