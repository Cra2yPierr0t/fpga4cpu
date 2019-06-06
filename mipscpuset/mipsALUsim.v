module mipsALUsim();
    reg [31:0] A,B;
    reg [2:0] F;
    wire C;
    wire [31:0] Y;

    mipsALU mipsALU(A,B,F,Y,C);

    initial begin
        $monitor("A = %b B = %b F = %b \n Y = %b C = %b",A,B,F,Y,C);
    end

    initial begin
        #10
            A <= 32'hffffffff;
            B <= 32'h00000001;
            F <= 3'b010;
        #10
            A <= 32'heeeeeeee;
            B <= 32'h00ee00ee;
            F <= 3'b110;
        #10
            A <= 32'h00011100;
            B <= 32'hfff000ff;
            F <= 3'b101;
        #10
            A <= 32'heeeeeeee;
            B <= 32'h00ee00ee;
            F <= 3'b100;
        #10
        $finish;
    end
endmodule
