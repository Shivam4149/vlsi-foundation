module tb_carry_lookahead_adder;
    reg [3:0] A, B;
    reg Cin;
    wire [3:0] Sum;
    wire Cout;

    carry_lookahead_adder dut(A, B, Cin, Sum, Cout);

    initial begin
        $dumpfile("tb_carrylookaheadadder.vcd");
        $dumpvars(0, tb_carry_lookahead_adder);
        $monitor("A=%b B=%b Cin=%b | Sum=%b Cout=%b", A, B, Cin, Sum, Cout);

        A = 4'b0001; B = 4'b0010; Cin = 0; #10;
        A = 4'b0101; B = 4'b0011; Cin = 1; #10;
        A = 4'b1111; B = 4'b0001; Cin = 0; #10;
        A = 4'b1010; B = 4'b0101; Cin = 1; #10;

        $finish;
    end
endmodule

