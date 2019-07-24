module mipssim();
    reg reset;
    reg clock;

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0,mipscomputer);
    end

    mipscomputer mipscomputer(clock, reset);

    initial begin
        reset = 1'b1;
        clock = 1'b0;
    end

    always #1 begin
        clock <= ~clock;
    end
    
    initial begin
        #2
        reset = 1'b0;
        #500
        $finish;
    end
endmodule
