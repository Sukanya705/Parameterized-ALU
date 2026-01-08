module alu #( parameter WIDTH = 8)(
    input  wire [WIDTH-1:0] a,
    input  wire [WIDTH-1:0] b,
    input  wire [2:0] op,
    output reg  [WIDTH-1:0] result,
    output wire zero
);
  
always @(*) begin
    case (op)
        3'b000: result = a + b;   // ADD
        3'b001: result = a - b;   // SUB
        3'b010: result = a & b;   // AND
        3'b011: result = a | b;   // OR
        3'b100: result = a ^ b;   // XOR
        default: result = {WIDTH{1'b0}};
    endcase
end

assign zero = (result == {WIDTH{1'b0}});
endmodule
