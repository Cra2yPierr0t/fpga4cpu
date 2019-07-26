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

        mem[0] = 32'b00100000000000010000000011111111;
        mem[1] = 32'b00100000000000100000001011101001;
        mem[2] = 32'b00000000001000000001100000100000;
        mem[3] = 32'b10101100000000110000000000000000;
        mem[4] = 32'b00001000000000000000000000000000;
        mem[5] = 32'b00000000000000000000000000000000;
    end
endmodule
