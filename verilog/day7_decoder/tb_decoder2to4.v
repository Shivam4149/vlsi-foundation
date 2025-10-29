`timescale 1ns/1ps
module tb_decoder2to4;
    reg [1:0] A;
    wire [3:0] Y;

    decoder2to4 uut (
        .A(A),
        .Y(Y)
    );

    initial begin
        $display("A | Y");
        $monitor("%b | %b", A, Y);

        A = 2'b00; #10;
        A = 2'b01; #10;
        A = 2'b10; #10;
        A = 2'b11; #10;

        $finish;
    end
endmodule

