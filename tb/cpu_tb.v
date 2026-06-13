module cpu_tb;

reg clk;
reg reset;

cpu_top DUT(
.clk(clk),
.reset(reset)
);

initial begin
clk = 0;
forever #5 clk = ~clk;
end

initial begin
reset = 1;
#20;
reset = 0;

#200;
$finish;
end

endmodule
