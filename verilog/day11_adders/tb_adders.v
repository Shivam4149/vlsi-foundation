`timescale 1ns / 1ps

module tb_adders;
    reg A, B, Cin;
    wire Sum_HA, Carry_HA;
    wire Sum_FA, Carry_FA;

    // Instantiate Half Adder
    half_adder HA (.A(A), .B(B), .Sum(Sum_HA), .Carry(Carry_HA));

    // Instantiate Full Adder
    full_adder FA (.A(A), .B(B), .Cin(Cin), .Sum(Sum_FA), .Cout(Carry_FA));

    initial begin
        $display("A B Cin | HalfAdder(Sum Carry) | FullAdder(Sum Cout)");
        $monitor("%b %b %b |        %b      %b       |        %b      %b",
                  A, B, Cin, Sum_HA, Carry_HA, Sum_FA, Carry_FA);

        A=0; B=0; Cin=0; #10;
        A=0; B=1; Cin=0; #10;
        A=1; B=0; Cin=0; #10;
        A=1; B=1; Cin=0; #10;
        A=0; B=0; Cin=1; #10;
        A=0; B=1; Cin=1; #10;
        A=1; B=0; Cin=1; #10;
        A=1; B=1; Cin=1; #10;

        $finish;
    end
endmodule

