module pc(in,out,reset,clock);
    input [31:0] in;
    input reset,clock;
    output [31:0] out;

    reg [31:0] out;

    always@(posedge clock) begin
        if(reset) begin
            out <= 32'b00000000000000000000000000000000;
        end else begin
            out <= out + 1'b1;
        end
    end
endmodule
