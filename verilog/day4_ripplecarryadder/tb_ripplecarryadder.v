// tb_ripplecarryadder.v
module tb_ripplecarryadder;

    // Internal signals (must be 'reg' to be driven by the test bench)
    reg [3:0] A_tb;
    reg [3:0] B_tb;
    reg Cin_tb;
    
    // Output signals (must be 'wire' to receive output from the DUT)
    wire [3:0] Sum_tb;
    wire Cout_tb;

    // 1. Instantiate the Device Under Test (DUT)
    // Connect the internal signals to the ports of the ripple_carry_adder
    ripple_carry_adder DUT (
        .A(A_tb),
        .B(B_tb),
        .Cin(Cin_tb),
        .Sum(Sum_tb),
        .Cout(Cout_tb)
    );

    // 2. Stimulus Block (Applies test values)
    initial begin
        // Setup for waveform viewing (optional, but recommended)
        $dumpfile("tb_ripplecarryadder.vcd"); 
        $dumpvars(0, tb_ripplecarryadder);
        
        // Header to display in the console
        $display("Time | A     | B     | Cin | Sum   | Cout | Expected (A+B)");
        $display("---------------------------------------------------------");
        
        // Initial values at Time 0
        A_tb = 4'b0000;
        B_tb = 4'b0000;
        Cin_tb = 1'b0;
        #10;
        
        // Test Case 1: 5 + 3 = 8
        A_tb = 4'b0101; 
        B_tb = 4'b0011; 
        Cin_tb = 1'b0;
        #10;
        $display("%0d | %b  | %b  | %b  | %b  | %b  | %0d", $time, A_tb, B_tb, Cin_tb, Sum_tb, Cout_tb, A_tb + B_tb);
        
        // Test Case 2: 7 + 7 = 14
        A_tb = 4'b0111; // 7
        B_tb = 4'b0111; // 7
        Cin_tb = 1'b0;
        #10;
        $display("%0d | %b  | %b  | %b  | %b  | %b  | %0d", $time, A_tb, B_tb, Cin_tb, Sum_tb, Cout_tb, A_tb + B_tb);

        // Test Case 3: 15 + 1 = 16 (Overflow/Carry Out)
        A_tb = 4'b1111; // 15
        B_tb = 4'b0001; // 1
        Cin_tb = 1'b0;
        #10;
        $display("%0d | %b  | %b  | %b  | %b  | %b  | %0d", $time, A_tb, B_tb, Cin_tb, Sum_tb, Cout_tb, A_tb + B_tb);
        
        // Test Case 4: 10 + 10 = 20 (Cout=1, Sum=0100)
        A_tb = 4'b1010; // 10
        B_tb = 4'b1010; // 10
        Cin_tb = 1'b0;
        #10;
        $display("%0d | %b  | %b  | %b  | %b  | %b  | %0d", $time, A_tb, B_tb, Cin_tb, Sum_tb, Cout_tb, A_tb + B_tb);

        // End the simulation
        #10;
        $finish;
    end
endmodule
