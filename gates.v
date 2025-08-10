module gates(
    input a,
    input b,
    output [7:0] y
);
    assign y[0] = a & b;       // AND
    assign y[1] = a | b;       // OR
    assign y[2] = ~(a & b);    // NAND
    assign y[3] = ~(a | b);    // NOR
    assign y[4] = ~a;          // NOT A
    assign y[5] = a;           // BUFFER A
    assign y[6] = a ^ b;       // XOR
    assign y[7] = ~(a ^ b);    // XNOR
endmodule



