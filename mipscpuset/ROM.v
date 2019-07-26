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

        mem[0] = 32'b10001100000000010000000000000000;
        mem[1] = 32'b10101100110000010000000000000001;
        mem[2] = 32'b10001100000000100000000000000001;
    end
endmodule
