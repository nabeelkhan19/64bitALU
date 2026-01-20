
module tb_alu;

    reg [63:0] A, B;
    reg [3:0] ALU_Sel;
    wire [63:0] ALU_Out;
    wire carryout, zero, negative, overflow;

    
    tb_alu uut (
        .A(A), .B(B),
        .ALU_Sel(ALU_Sel),
        .ALU_Out(ALU_Out),
        .carryout(carryout),
        .zero(zero),
        .negative(negative),
        .overflow(overflow)
    );

    initial begin
        
        $display("Time | A | B | ALU_Sel | ALU_Out | Carry | Zero | Neg | OF");
        $monitor("%0t | %h | %h | %b | %h | %b | %b | %b | %b",
                 $time, A, B, ALU_Sel, ALU_Out, CarryOut, Zero, Negative, Overflow);

      
        A = 64'h000000000000000A; B = 64'h0000000000000005; ALU_Sel = 4'b0000; #10; // ADD
        ALU_Sel = 4'b0001; #10; 
        ALU_Sel = 4'b0010; #10; 
        ALU_Sel = 4'b0011; #10; 
        ALU_Sel = 4'b0100; #10; 
        ALU_Sel = 4'b0110; #10; 
        ALU_Sel = 4'b0111; #10; 
        ALU_Sel = 4'b1010; #10; 
        ALU_Sel = 4'b1100; #10; 

        $stop;
    end

endmodule
