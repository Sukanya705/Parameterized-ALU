`timescale 1ns/1ps
module alu_tb;

    reg  [7:0] a;
    reg  [7:0] b;
    reg  [2:0] op;
     wire [7:0] result;
    wire zero;
    
    // DUT instantiation
    alu dut (
        .a(a),
        .b(b),
        .op(op),
        .result(result),
        .zero(zero)
    );
    initial begin

        // Test ADD
        a = 8'd10; b = 8'd5; op = 3'b000;
        #10;   //delay for 10 nanoseconds

        // Test SUB
        a = 8'd10; b = 8'd3; op = 3'b001;
        #10;

        // Test AND
        a = 8'b1100_1100; b = 8'b1010_1010; op = 3'b010;
        #10;

        // Test OR
        a = 8'b1100_1100; b = 8'b1010_1010; op = 3'b011;
        #10;

        // Test XOR
        a = 8'b1111_0000; b = 8'b1010_1010; op = 3'b100;
        #10;

        // Test ZERO flag
        a = 8'd5; b = 8'd5; op = 3'b001; // 5-5 = 0
        #10;
     $finish;
    
    end
    endmodule
