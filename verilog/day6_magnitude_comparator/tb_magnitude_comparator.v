`timescale 1ns/1ps

module tb_magnitude_comparator;
  reg [3:0] A, B;
  wire A_gt_B, A_lt_B, A_eq_B;

  // DUT instantiation
  magnitude_comparator dut (.A(A), .B(B), .A_gt_B(A_gt_B), .A_lt_B(A_lt_B), .A_eq_B(A_eq_B));

  initial begin
    $display("A\tB\tA>B\tA<B\tA=B");
    $display("----------------------------------");

    A=4'b0000; B=4'b0000; #10;
    $display("%b\t%b\t%b\t%b\t%b", A,B,A_gt_B,A_lt_B,A_eq_B);

    A=4'b1010; B=4'b1001; #10;
    $display("%b\t%b\t%b\t%b\t%b", A,B,A_gt_B,A_lt_B,A_eq_B);

    A=4'b0111; B=4'b1110; #10;
    $display("%b\t%b\t%b\t%b\t%b", A,B,A_gt_B,A_lt_B,A_eq_B);

    A=4'b1100; B=4'b1100; #10;
    $display("%b\t%b\t%b\t%b\t%b", A,B,A_gt_B,A_lt_B,A_eq_B);

    $finish;
  end
endmodule

