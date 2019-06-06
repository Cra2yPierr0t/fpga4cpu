module FullAddersim();
reg X,Y,C;
wire out;
wire Cout; 

FullAdder FullAdder(X,Y,C,out,Cout);

    initial begin
        $monitor("%b + %b + %b = %b%b",X,Y,C,Cout,out);
    end

    initial begin
        #10
            X <= 1'b0;
            Y <= 1'b0;
            C <= 1'b0;
        #10
            X <= 1'b0;
            Y <= 1'b0;
            C <= 1'b1;
        #10
            X <= 1'b0;
            Y <= 1'b1;
            C <= 1'b0;
        #10
            X <= 1'b0;
            Y <= 1'b1;
            C <= 1'b1;
        #10
            X <= 1'b1;
            Y <= 1'b0;
            C <= 1'b0;
        #10
            X <= 1'b1;
            Y <= 1'b0;
            C <= 1'b1;
        #10
            X <= 1'b1;
            Y <= 1'b1;
            C <= 1'b1;
        #10
        $finish;
    end
endmodule
