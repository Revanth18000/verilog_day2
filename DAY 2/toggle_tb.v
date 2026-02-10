module toggle_tb;
reg clk ;
wire q ;

toggle_ff uut(
    .clk(clk) , .q(q)
);

always #5 clk = ~clk ;

initial begin 
    clk = 0 ;
    #50 $finish;
end 
endmodule