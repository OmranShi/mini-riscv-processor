module cpu_top(
input clk,
input reset
);

wire [31:0] pc_out;
wire [31:0] instruction;

pc PC(
.clk(clk),
.reset(reset),
.pc_out(pc_out)
);

instruction_memory IMEM(
.addr(pc_out),
.instruction(instruction)
);

endmodule
