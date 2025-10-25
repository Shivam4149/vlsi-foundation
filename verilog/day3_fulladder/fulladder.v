//Full Adder Design
`timescale 1ns/1ps

module full_adder (
  input A, B, Cin,     //Inputs
  output Sum, Cout     //Outputs
);
  // Logic for full Adder
  assign Sum = A^B^Cin;    //Xor for sum
  assign Cout = (A & B)|(B & Cin) | (A & Cin);   //Majority function for carry
endmodule 
