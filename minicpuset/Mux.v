module Mux(in1,in2,sel,out);
    input in1,in2,sel;
    output out;

    assign out = (sel == 0) ? in1 : in2;
endmodule
