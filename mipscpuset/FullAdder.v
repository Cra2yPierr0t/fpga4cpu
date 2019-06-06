module FullAdder(X,Y,Cin,out,Cout);

    input X,Y;
    input Cin;
    output out;
    output Cout;

    wire s0,c0,c1;

    HalfAdder HalfAdder_0(X,Y,s0,c0);
    HalfAdder HalfAdder_1(s0,Cin,out,c1);

    assign Cout = c0 | c1;
endmodule
