module ALU(x,y,zx,nx,zy,ny,f,no,out,zr,ng);
    input [15:0] x,y;
    input zx,nx,zy,ny,f,no;
    output [15:0] out;
    output zr,ng;

    wire [15:0] w1,w2;
    wire [15:0] notw1,w3;
    wire [15:0] notw2,w4;
    wire [15:0] xandy,addxy,w5;
    wire [15:0] notw5;
    wire [15:0] outbuffer;
    wire [7:0] out0to7,out8to15;
    wire or0to7,or8to15,or0to15;
    
    assign w1 = (zx == 1'b0) ? x : 16'b0000000000000000;
    assign w2 = (zy == 1'b0) ? y : 16'b0000000000000000;

    assign notw1 = ~w1;
    assign w3 = (nx == 1'b0) ? w1 : notw1;

    assign notw2 = ~w2;
    assign w4 = (ny == 1'b0) ? w2 : notw2;

    assign xandy = w3 & w4;

    assign addxy = w3 + w4;
    assign w5 = (f == 1'b0) ? xandy : addxy;

    assign notw5 = ~w5;
    assign outbuffer = (no == 1'b0) ? w5 : notw5;

    assign out = outbuffer;

    assign out0to7 = outbuffer[7:0];
    assign out8to15 = outbuffer[15:8];
    assign ng = outbuffer[15];

    assign or0to7 = |out0to7;
    assign or8to15 = |out8to15;
    assign or0to15 = or0to7 | or8to15;
    assign zr = ~or0to15;
endmodule
