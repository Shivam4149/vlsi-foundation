// tb_gates.v
`timescale 1ns / 1ps
module tb_gates();
    reg A, B;
    wire AND_out, OR_out, NOT_out;

    // This instantiation line is critical:
    gates uut(A, B, AND_out, OR_out, NOT_out); // Using positional connection

    initial begin
        $monitor("A=%b B=%b | AND=%b OR=%b NOT(A)=%b", A, B, AND_out, OR_out, NOT_out);
        A=0; B=0; #10;
        A=0; B=1; #10;
        A=1; B=0; #10;
        A=1; B=1; #10;
        $finish;
    end
endmodule
