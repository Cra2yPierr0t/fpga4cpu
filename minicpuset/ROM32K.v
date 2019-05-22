module ROM32K(clock,address,out);
    input clock;
    input [14:0] address;
    output [15:0] out;

    reg [15:0] mem[32767:0];
    reg [15:0] out;

    always@(posedge clock)begin
        out <= mem[address];
    end

    integer i;
    initial begin
        for(i=0;i<32678;i++)
            mem[i] = 16'b0000000000000000;

        mem[0] = 16'b0000000000000000;
        mem[1] = 16'b1110111111010000;
        mem[2] = 16'b1110001100001000;
        mem[3] = 16'b1110011111010000;
        mem[4] = 16'b0000000000000001;
        mem[5] = 16'b1111110000010000;
        mem[6] = 16'b0000000000000010;
        mem[7] = 16'b1110001100001000;
    end
endmodule
