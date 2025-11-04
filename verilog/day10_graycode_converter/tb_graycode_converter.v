module tb_graycode_converter;
    reg [3:0] binary;
    wire [3:0] gray, binary_back;

    binary_to_gray b2g(binary, gray);
    gray_to_binary g2b(gray, binary_back);

    initial begin
        $display("Binary\tGray\tBinary_Back");
        $monitor("%b\t%b\t%b", binary, gray, binary_back);

        binary = 4'b0000; #10;
        binary = 4'b0001; #10;
        binary = 4'b0010; #10;
        binary = 4'b0011; #10;
        binary = 4'b0100; #10;
        binary = 4'b0101; #10;
        binary = 4'b0110; #10;
        binary = 4'b0111; #10;
        binary = 4'b1000; #10;
        $finish;
    end
endmodule

