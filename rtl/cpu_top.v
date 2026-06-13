module cpu_top(
input clk,
input reset
);

wire [31:0] pc_out;
wire [31:0] instruction;

wire [6:0] opcode;
wire [4:0] rs1;
wire [4:0] rs2;
wire [4:0] rd;

wire regwrite;
wire alusrc;

wire [31:0] rd1;
wire [31:0] rd2;
wire [31:0] alu_result;

pc PC(
.clk(clk),
.reset(reset),
.pc_out(pc_out)
);

instruction_memory IMEM(
.addr(pc_out),
.instruction(instruction)
);

decoder DEC(
.instruction(instruction),
.opcode(opcode),
.rs1(rs1),
.rs2(rs2),
.rd(rd)
);

control_unit CU(
.opcode(opcode),
.regwrite(regwrite),
.alusrc(alusrc)
);

register_file RF(
.clk(clk),
.we(regwrite),
.rs1(rs1),
.rs2(rs2),
.rd(rd),
.wd(alu_result),
.rd1(rd1),
.rd2(rd2)
);

alu ALU(
.a(rd1),
.b(rd2),
.alu_control(3'b000),
.result(alu_result)
);

endmodule
