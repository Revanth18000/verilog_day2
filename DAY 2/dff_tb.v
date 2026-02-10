module dff_tb;
reg clk;
reg d;
reg reset;
wire q;

dff_reset uut (
    .clk(clk) , .d(d) , .q(q) , .reset(reset)
);

always #5 clk = ~clk ;

initial begin 
    clk = 0;
    reset = 1;
    d = 0;
    #10 reset = 0 ;
    #10 d = 1 ;
    #10 d = 0 ;
    #10 d = 1 ;

    #20 reset = 1 ;
    #10 reset = 0 ;
    #10 d = 1 ;

    #20 $finish ;

end 
endmodule