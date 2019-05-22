module Computer(reset,clock);
    input reset,clock;
    wire writeM;
    wire [15:0] outM,inM,instruction;
    wire [14:0] addressM,pc_;

    RAM32K RAM32K(clock,outM,writeM,addressM,inM);
    miniCPU miniCPU(inM,instruction,reset,outM,writeM,addressM,pc_,clock);
    ROM32K ROM32K(clock,pc_,instruction);
endmodule
