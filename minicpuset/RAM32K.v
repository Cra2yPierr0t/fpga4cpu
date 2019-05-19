module RAM32K(clock,in,load,address,out);
    input clock,load;
    input [14:0] address;
    input [15:0] in;
    output [15:0] out;

    reg [15:0] mem[32767:0];
    reg [15:0] out;

    always@(posedge clock)begin
        if(load)begin
            mem[address] <= in;
        end else begin
            out <= mem[address];
        end
    end

    integer i;
    initial begin
        for(i=0;i<32768;i++)
            mem[i] = 16'b0000000000000000;
    end

endmodule
