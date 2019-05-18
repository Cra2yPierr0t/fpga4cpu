module miniCPU(inM,instruction,reset,outM,writeM,addressM,pc,clock);
    input [15:0] inM,instruction;
    input reset,clock;
    output [15:0] outM;
    output writeM;
    output [14:0] addressM,pc;

    wire h,o,j,n,i;
    wire [15:0] a,f,b1,c;

    assign h = instruction[15] & instruction[4];
    assign o = instruction[15] & instruction[5];
    assign j = instruction[15] & instruction[12];
    assign n = ~instruction[15];
    assign i = o | n;
    Mux16 Mux16(f,instruction,n,a);
    Register ARegister(clock,a,i,b1);
    assign addressM = b1[14:0];
    Mux16 Mux16(b1,inM,j,c);
    pc pc(b1,inc,reset,e,

