module Mux(in1,in2,sel,out);
    input in1,in2,sel;
    output out;

    wire w1,w2,notsel;

    assign notsel = ~sel;
    assign w1 = in1 & notsel;
    assign w2 = in2 & sel;
    assign out = w1 | w2;
endmodule
