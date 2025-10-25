`timescale 1ns/1ps

// Testbench for 1-bit Full Adder
module tb_fulladder;
  reg A, B, Cin;      // Inputs
  wire Sum, Cout;     // Outputs

  // Instantiate Design Under Test (DUT)
  full_adder dut (
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
  );

  // Apply test vectors
  initial begin
    $display("A B Cin | Sum Cout");
    $display("------------------");

    A=0; B=0; Cin=0; #10;
    $display("%b %b  %b  |  %b    %b", A,B,Cin,Sum,Cout);

    A=0; B=0; Cin=1; #10;
    $display("%b %b  %b  |  %b    %b", A,B,Cin,Sum,Cout);

    A=0; B=1; Cin=0; #10;
    $display("%b %b  %b  |  %b    %b", A,B,Cin,Sum,Cout);

    A=0; B=1; Cin=1; #10;
    $display("%b %b  %b  |  %b    %b", A,B,Cin,Sum,Cout);

    A=1; B=0; Cin=0; #10;
    $display("%b %b  %b  |  %b    %b", A,B,Cin,Sum,Cout);

    A=1; B=0; Cin=1; #10;
    $display("%b %b  %b  |  %b    %b", A,B,Cin,Sum,Cout);

    A=1; B=1; Cin=0; #10;
    $display("%b %b  %b  |  %b    %b", A,B,Cin,Sum,Cout);

    A=1; B=1; Cin=1; #10;
    $display("%b %b  %b  |  %b    %b", A,B,Cin,Sum,Cout);

    $finish;
  end
endmodule

