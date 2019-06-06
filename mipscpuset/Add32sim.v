module Add32sim();
    reg [31:0] X,Y;
    wire [31:0] out;
    wire c;

    Add32 Add32(X,Y,out,c);

    initial begin
        $monitor("%b + %b = %b carry = %b",X,Y,out,c);
    end

    initial begin
        #10
            X <= 32'hffffffff;
            Y <= 32'h00000001;
        #10
            X <= 32'hf0f0f0f0;
            Y <= 32'h0f0f0f0f;
        #10
            X <= 32'h00020002;
            Y <= 32'h000e000d;
        #10
        $finish;
    end
endmodule
