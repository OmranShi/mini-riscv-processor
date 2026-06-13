module control_unit(
input [6:0] opcode,
output reg regwrite,
output reg alusrc
);

always @(*) begin
regwrite = 0;
alusrc = 0;

case(opcode)

7'b0110011: begin
regwrite = 1;
alusrc = 0;
end

7'b0010011: begin
regwrite = 1;
alusrc = 1;
end

default: begin
regwrite = 0;
alusrc = 0;
end

endcase
end

endmodule
