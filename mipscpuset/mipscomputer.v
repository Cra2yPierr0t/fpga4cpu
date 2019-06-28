module mipscomputer(reset);
    input reset;

    wire clock;
    wire [31:0] SignImm, SignImm_shifted;
    wire [31:0] SrcA;
    wire [4:0] WriteReg;
    wire [31:0] ALUResult;
    wire [31:0] pc_in, pc_out, pc_puls4, pcBranch;
    wire [31:0] instruction, ALUresult;
    wire [31:0] ReadData, WriteData, Result;

    wire RegDst, RegWrite, ALUSrc, MemtoReg, Zero, Branch, PCSrc;
    wire [2:0] ALUControl;
    
    pc(pc_in, pc_out, reset, clock);
    assign pc_puls4 = pc_out + 4;
    assign pc_in = (PCSrc) ? pcBranch : pc_puls4;

    ROM(pc_out, instruction);

    SignExtender(instruction[15:0], SignImm);
    assign SignImm_shifted = (SignImm << 2);
    assign pcBranch = pc_puls4 + SignImm_shifted;

    Regfile(instruction[25:21], instruction[20:16], WriteReg, Result, WriteData, SrcA, RegWrite,clock);
    assign WriteReg = (RegDst) ? instrction[15:11] : instruction[20:16];

    mipsALU(SrcA, SrcB, ALUControl, ALUResult, Zero);
    assign SrcB = (ALUSrc) ? SignImm : RegWrite;
    assign PCSrc = Branch & Zero;

    RAM(ALUResult, WriteData, MemWrite, ReadData, clock);
    assign Result = (MemtoReg) ? ReadData : ALUResult;

    initial begin
        clock = 1'b0;
    end

    always #1 begin
        clock <= ~clock;
    end

endmodule
