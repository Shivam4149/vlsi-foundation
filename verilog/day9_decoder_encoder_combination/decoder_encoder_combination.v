module decoder_encoder_combination (
    input [1:0] A,
    output [1:0] Y
);
    wire [3:0] dec_out;
   
    decoder2to4 d1 (.A(A), .Y(dec_out));
    encoder4to2 e1 (.D(dec_out), .Y(Y));

endmodule
