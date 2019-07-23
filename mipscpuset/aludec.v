module aludec(funct, aluop, alucontrol);
    
    input [5:0] funct;
    input [1:0] aluop;
    output [2:0] alucontrol;

    assign alucontrol = decode(funct, aluop);

    function [2:0] decode(input [5:0] funct, input [1:0] aluop);
    begin
        case(aluop)
        2'b00: decode <= 3'b010;
        2'b01: decode <= 3'b110;
        default: case(funct)
            6'b100000: decode <= 3'b010;
            6'b100010: decode <= 3'b110;
            6'b100100: decode <= 3'b000;
            6'b100101: decode <= 3'b001;
            6'b101010: decode <= 3'b111;
            default:   decode <= 3'bxxx;
            endcase
        endcase
    end
    endfunction

endmodule
