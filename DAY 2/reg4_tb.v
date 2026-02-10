module reg4_tb;
reg clk;
reg [3:0] d;
wire [3:0] q;

reg4 uut (
    .clk(clk) , .d(d) , .q(q)
);

always #5 clk = ~clk ;

initial begin 
    clk =0 ;
    d = 4'b0000 ;

    #12 d=4'b0001;
    #10 d=4'b1010;
    #10 d=4'b1111;
    #10 d=4'b0101;

    #20 $finish;
end 
endmodule