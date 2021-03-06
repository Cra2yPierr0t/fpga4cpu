module RAM(address,writedata,load,out,clock);
    input [31:0] address,writedata;
    input load,clock;
    output [31:0] out;

    reg [31:0] mem[1000:0];
    wire [31:0] out;

    always@(posedge clock or address) begin
        if(load) mem[address] <= writedata;
    end

    assign out = mem[address];


    integer i;
    initial begin
        for(i=0;i<1000;i=i+1)
            mem[i] = 32'b00000000000000000000000000000000;

        mem[0] = 32'b00011110111101111011110111101111;
    end
endmodule
