`timescale 1ns/1ps
module tb_decoder_encoder_combination;
    reg [1:0] A;
    wire[1:0] Y;
 
    decoder_encoder_combination dut (.A(A), .Y(Y));

    initial begin
        $display("A -> Y");
        $monitor("%b -> %b", A,Y);
 
        A = 2'b00; #10;
        A = 2'b01; #10;
        A = 2'b10; #10;
        A = 2'b11; #10;
        $finish;
    end 
endmodule
