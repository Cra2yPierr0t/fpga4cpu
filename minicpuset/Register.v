module Register(clock,in,load,out);
    input clock;
    input [15:0] in;
    input load;
    output [15:0] out;

    reg [15:0] out;

    always @(posedge clock) begin
            if(load) begin
                    out <= in;
            end else begin
                    out <= out;
            end     
    end
endmodule


