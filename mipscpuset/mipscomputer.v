module mipscomputer(clock, reset);
    input reset, clock;

    wire clock;
    wire [31:0] SignImm, SignImm_shifted;
    wire [31:0] SrcA, SrcB;
    wire [4:0] WriteReg;
    wire [31:0] ALUResult;
    wire [31:0] pc_in, pc_out, pc_puls4, pcBranch, pc_in_pre;
    wire [31:0] instruction, ALUresult, PCjump_pre, PCjump;
    wire [31:0] ReadData, WriteData, Result;

    wire RegDst, RegWrite, ALUSrc, MemtoReg, Zero, Branch, PCSrc, jump, MemWrite;
    wire [2:0] ALUControl;

    controller controller(instruction[31:26], instruction[5:0], Zero, MemtoReg, MemWrite, PCSrc, ALUSrc, RegDst, RegWrite, jump, ALUControl);

    pc pc(pc_in, pc_out, reset, clock);
    assign pc_puls4 = pc_out + 4;
    assign pc_in_pre = (PCSrc) ? pcBranch : pc_puls4;
    assign pc_in = (jump) ? PCjump : pc_in_pre;

    ROM ROM(pc_out, instruction);

    SignExtender SignExtender(instruction[15:0], SignImm);
    assign SignImm_shifted = (SignImm << 2);
    assign PCjump_pre = (instruction << 2);
    assign PCjump = { pc_puls4[31:28], PCjump_pre[27:0] };
    assign pcBranch = pc_puls4 + SignImm_shifted;

    Regfile Regfile(instruction[25:21], instruction[20:16], WriteReg, Result, RegWrite, SrcA, WriteData,clock,reset);
    assign WriteReg = (RegDst) ? instruction[15:11] : instruction[20:16];

    mipsALU mipsALU(SrcA, SrcB, ALUControl, ALUResult, Zero);
    assign SrcB = (ALUSrc) ? SignImm : WriteData;
    assign PCSrc = Branch & Zero;

    RAM RAM(ALUResult, WriteData, MemWrite, ReadData, clock);
    assign Result = (MemtoReg) ? ReadData : ALUResult;

endmodule
