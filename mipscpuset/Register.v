module Register(in,load,out,clock);
    input [31:0] in;
    input in,clock;
    output [31:0] out;

    reg [31:0] out;
    
    always@(posedge clock) begin
        if(load)begin
            out <= in;
        end else begin
            out <= out;
        end
    end
endmodule
