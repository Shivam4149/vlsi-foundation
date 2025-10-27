module carry_lookahead_adder(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] Sum,
    output Cout 
);

    wire [3:0] G,P;
    wire [3:1] C;
   
    //Generate and Propagate
    assign G = A & B ;
    assign P = A ^ B ;
  
    // Carry look-ahead logic
    assign C[1] = G[0] | (P[0] & Cin);
    assign C[2] = G[1] | (P[1] & C[1]);
    assign C[3] = G[2] | (P[2] & C[2]);
    assign Cout = G[3] | (P[3] & C[3]);

    //Sum calculation
    assign Sum[0] = P[0] ^ Cin;
    assign Sum[1] = P[1] ^ C[1];
    assign Sum[2] = P[2] ^ C[2];
    assign Sum[3] = P[3] ^ C[3];
endmodule
