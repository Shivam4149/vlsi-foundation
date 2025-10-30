`timescale 1ns/1ps
module tb_priority_encoder4to2;
    reg [3:0] D;
    wire [1:0] Y;

    priority_encoder4to2 uut(.D(D), .Y(Y));

    initial begin
        $dumpfile("tb_priority_encoder4to2.vcd");
        $dumpvars(0, tb_priority_encoder4to2);

        $display("D | Y");
        D = 4'b0000; #10 $display("%b | %b", D, Y);
        D = 4'b0001; #10 $display("%b | %b", D, Y);
        D = 4'b0010; #10 $display("%b | %b", D, Y);
        D = 4'b0100; #10 $display("%b | %b", D, Y);
        D = 4'b1000; #10 $display("%b | %b", D, Y);
        D = 4'b1010; #10 $display("%b | %b", D, Y);

        $finish;
    end
endmodule
