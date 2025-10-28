// magnitude_comparator.v
module magnitude_comparator (
    input [3:0] A,
    input [3:0] B,
    output A_gt_B,
    output A_lt_B,
    output A_eq_B
);

assign A_eq_B = (A[3] ~^ B[3]) & (A[2] ~^ B[2]) & (A[1] ~^ B[1]) & (A[0] ~^ B[0]);
assign A_gt_B = (A[3] & ~B[3]) |
                ((A[3] ~^ B[3]) & A[2] & ~B[2]) |
                ((A[3] ~^ B[3]) & (A[2] ~^ B[2]) & A[1] & ~B[1]) |
                ((A[3] ~^ B[3]) & (A[2] ~^ B[2]) & (A[1] ~^ B[1]) & A[0] & ~B[0]);

assign A_lt_B = (~A[3] & B[3]) |
                ((A[3] ~^ B[3]) & ~A[2] & B[2]) |
                ((A[3] ~^ B[3]) & (A[2] ~^ B[2]) & ~A[1] & B[1]) |
                ((A[3] ~^ B[3]) & (A[2] ~^ B[2]) & (A[1] ~^ B[1]) & ~A[0] & B[0]);

endmodule

