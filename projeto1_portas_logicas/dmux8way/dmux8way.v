module dmux8way(
    input in,
    input [2:0] sel, // Sinal de seleção de 3 bits
    output a,
    output b,
    output c,
    output d,
    output e,
    output f,
    output g,
    output h
);
    // Demultiplexador de 1 para 8
    // A entrada 'in' é direcionada para uma das 8 saídas (a a h)
    // conforme o valor de 'sel'. As outras saídas são 0.
    
    assign a = (sel == 3'b000) ? in : 1'b0;
    assign b = (sel == 3'b001) ? in : 1'b0;
    assign c = (sel == 3'b010) ? in : 1'b0;
    assign d = (sel == 3'b011) ? in : 1'b0;
    assign e = (sel == 3'b100) ? in : 1'b0;
    assign f = (sel == 3'b101) ? in : 1'b0;
    assign g = (sel == 3'b110) ? in : 1'b0;
    assign h = (sel == 3'b111) ? in : 1'b0;

endmodule