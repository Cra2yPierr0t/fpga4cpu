module HalfAdder(A,B,S,C);
    input A,B;
    output S;
    output C;

    assign C = A & B;
    assign S = A ^ B;
endmodule
