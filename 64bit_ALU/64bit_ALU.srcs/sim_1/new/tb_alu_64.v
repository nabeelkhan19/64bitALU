`timescale 1ns / 1ps

module tb_alu_64;

    reg [63:0] A, B;
    reg [3:0] ALU_Sel;
    wire [63:0] ALU_Out;
    wire carryout, zero, negative, overflow;

    alu_64 dut (.A(A), .B(B), .ALU_Sel(ALU_Sel), .ALU_Out(ALU_Out), 
                .carryout(carryout), .zero(zero), .negative(negative), .overflow(overflow));

    initial begin
        A = 64'd10; B = 64'd5; ALU_Sel = 4'b0000; #10;
        ALU_Sel = 4'b0001; #10;
        ALU_Sel = 4'b0010; #10;
        ALU_Sel = 4'b0011; #10;
        ALU_Sel = 4'b0100; #10;
        ALU_Sel = 4'b0101; #10;
        ALU_Sel = 4'b0110; #10;
        ALU_Sel = 4'b0111; #10;
        ALU_Sel = 4'b1000; #10;
        ALU_Sel = 4'b1001; #10;
        ALU_Sel = 4'b1010; #10;
        ALU_Sel = 4'b1011; #10;
        ALU_Sel = 4'b1100; #10;
        $finish;
    end

endmodule
