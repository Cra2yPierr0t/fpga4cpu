//プログラムカウンタ作るよ！！！！！！！！
module pc(in,inc,load,reset,out,clock);
    input [15:0] in;
    input load,reset,clock,inc;
    output [15:0] out;

    reg [15:0] out;


    always@(posedge clock) begin
        if(reset) begin
            out <= 16'b0000000000000000;
        end else if(load) begin
            out <= in;
        end else if(inc) begin
            out <= out + 16'b0000000000000001;
        end else begin
            out <= out;
        end
    end
endmodule   
