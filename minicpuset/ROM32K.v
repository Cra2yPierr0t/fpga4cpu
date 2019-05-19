module ROM32K(clock,address,out);
    input clock;
    input [14:0] address;
    output [15:0] out;

    reg [15:0] out;

    RAM32K RAM32K(clock,16'b0000000000000000,1'b0,address,out);
endmodule
