module miniCPU(inM,instruction,reset,outM,writeM,addressM,pc_,clock);
    input [15:0] inM,instruction;
    input reset,clock;
    output [15:0] outM;
    output writeM;
    output [14:0] addressM,pc_;

    wire h,o,j,n,i,e,p,q,k,l,u,v,m,w,s;
    wire [15:0] a,f,b1,g,c,pc_buf;

    assign h = instruction[15] & instruction[4];
    assign o = instruction[15] & instruction[5];
    assign j = instruction[15] & instruction[12];
    assign n = ~instruction[15];
    assign i = o | n;
    Mux16 Mux160(f,instruction,n,a);
    Register ARegister(clock,a,i,b1);
    assign addressM = b1[14:0];
    Mux16 Mux161(b1,inM,j,c);
    pc pc(b1,1'b1,e,reset,pc_buf,clock);
    assign pc_ = pc_buf[14:0];
    Register DRegister(clock,f,h,g);
    ALU ALU(g,c,instruction[11],instruction[10],instruction[9],instruction[8],instruction[7],instruction[6],outM,p,q);
    assign f = outM;
    assign k = p & instruction[1];
    assign l = q & instruction[2];
    assign u = p | q;
    assign v = ~u;
    assign m = k | l;
    assign w = v & instruction[0];
    assign s = w | m;
    assign e = s & instruction[15];
    assign writeM = instruction[3] & instruction[15];
endmodule

