module Mux16(in1,in2,sel,out);
    input [15:0] in1,in2;
    input sel;
    output [15:0] out;

    assign out = (sel == 0) ? in1 : in2;
endmodule
