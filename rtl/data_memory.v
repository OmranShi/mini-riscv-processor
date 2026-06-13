module data_memory(
input clk,
input memwrite,
input [31:0] addr,
input [31:0] write_data,
output [31:0] read_data
);

reg [31:0] memory [0:255];

assign read_data = memory[addr[9:2]];

always @(posedge clk) begin
if(memwrite)
memory[addr[9:2]] <= write_data;
end

endmodule
