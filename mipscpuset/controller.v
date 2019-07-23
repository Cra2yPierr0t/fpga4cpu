module controller(op,funct,zero,memtoreg,memwrite,pcsrc,alusrc,regdst,regwrite,jump,alucontrol);
    input [5:0] op, funct;
    input zero;
    output memtoreg;
    output memwrite;
    output pcsrc;
    output alusrc;
    output regdst;
    output regwrite;
    output jump;
    output [2:0] alucontrol;

    wire [1:0] aluop;
    wire branch;

    maindec maindec(op, memtoreg, memtowrite, pcsrc, alusrc, regdst, regwrite, jump, aluop);
    aludec aludec(funct, aluop, alucontrol);

    assign pcsrc = branch & zero;

endmodule
