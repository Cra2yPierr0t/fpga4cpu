module mipsCPU();
    reg instruction[31:0];
    wire address[31:0];
    ROM ROM(address,instruction);
    Regfile Regfile(intruction[25:21],instruction[20:16],instruction[20:16],Result,
