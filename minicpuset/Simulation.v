module Simulation();
    reg reset;
    reg clock;

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0,Computer,Computer.RAM32K.mem[0],Computer.RAM32K.mem[1],Computer.RAM32K.mem[2],Computer.RAM32K.mem[16]);
    end

    Computer Computer(reset,clock);

    initial begin
        reset = 1'b0;
        clock = 1'b0;
    end

    always #1 begin
        clock <= ~clock;
    end

    initial begin
        #100
        $finish;
    end
endmodule
