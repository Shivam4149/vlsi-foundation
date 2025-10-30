`timescale 1ns/1ps
module tb_encoder8to3;
    reg [7:0] D;
    wire [2:0] Y;

    encoder8to3 uut (.D(D), .Y(Y));

    initial begin
        $display("8-to-3 Encoder Simulation");
        $display(" D \t\t -> Y ");
        $monitor("%b -> %b", D, Y);

        D = 8'b00000001; #10;
        D = 8'b00000010; #10;
        D = 8'b00000100; #10;
        D = 8'b00001000; #10;
        D = 8'b00010000; #10;
        D = 8'b00100000; #10;
        D = 8'b01000000; #10;
        D = 8'b10000000; #10;

        $finish;
    end
endmodule

