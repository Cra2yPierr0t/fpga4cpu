module RAMtest();
    reg clock,load;
    reg [14:0] address;
    reg [15:0] in;
    wire [15:0] out;

    RAM32K RAM32K(clock,in,load,address,out);

    initial begin
        $dumpfile("ramwave.vcd");
        $dumpvars(0,RAM32K);
    end

    initial begin
        clock <= 1'b0;
        load <= 1'b0;
    end

    always #1 begin
        clock <= ~clock;
    end

    initial begin
        in <= 16'b0000000000000000;
        load <= 1'b0;
        address <= 15'b000000000000000;
        #5
        address <= 15'b000000111000000;
        load <= 1'b1;
        in <= 16'b1011010101010101;
        #2
        in <= 16'b0000000000000000;
        load <= 1'b0;
        address <= 15'b000000000000000;
        #1
        address <= 15'b000000000000000;
        load <= 1'b0;
        in <= 16'b0000000000000000;
        #5
        address <= 15'b000000111000000;
        load <= 1'b0;
        in <= 16'b0000000000000000;
        #10
        $finish;
    end
endmodule
