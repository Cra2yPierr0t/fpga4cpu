module ROM32K(clock,in,address,out);
    input clock;
    input [14:0] address;
    input [15:0] in;
    output [15:0] out;

    reg [15:0] out;

    RAM32K RAM32K(clock,in,1'b0,address,out);
endmodule
