module ROM(address,instruction);
    input [31:0] address;
    output [31:0] instruction;

    reg [31:0] mem[4294967295:0];
    wire instruction;

    assign instruction = mem[address];

    integer i;
    initial begin
        for(i=0;i<4294987296;i=i+1)
            mem[i] = 32'b00000000000000000000000000000000;
    end
endmodule
