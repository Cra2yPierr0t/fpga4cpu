module ROM(address,instruction);
    input [31:0] address;
    output [31:0] instruction;

    reg [31:0] mem[1000:0];
    wire instruction;

    assign instruction = mem[address];

    integer i;
    initial begin
        for(i=0;i<1000;i=i+1)
            mem[i] = 32'b00000000000000000000000000000000;

        mem[0] = 32'b00100000000000111010101010101010;
        mem[1] = 32'b00100000001001000101010101010101;
        mem[2] = 32'b00000000010000000000100000100000;
    end
endmodule
