module mipssim();
    reg reset;
    reg clock;

    mipscomputer mipscomputer(clock, reset);

    initial begin
        $dumpfile("wave.vcd");
    end


    initial begin
        reset = 1'b0;
        clock = 1'b0;
    end

    always #1 begin
        clock <= ~clock;
    end
    
    initial begin
        #500
        $finish;
    end
endmodule
