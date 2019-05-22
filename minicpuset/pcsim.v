module pcsim();
    reg [15:0] in;
    reg load,reset,clock,inc;
    wire [15:0] out;

    initial begin
        clock <= 1'b0;
    end

    always #1 begin
        clock <= ~clock;
    end

    pc pc(in,inc,load,reset,out,clock);

    initial begin
        $dumpfile("pcwave.vcd");
        $dumpvars(0,pc);
    end

    initial begin
        reset <= 1'b1;
        inc <= 1'b1;
        #2
        reset <= 1'b0;
        #100
        $finish;
    end
endmodule

