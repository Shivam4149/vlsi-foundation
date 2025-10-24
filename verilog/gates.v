// gates.v
module gates (
    input A, 
    input B,
    output AND_out, // Must match the testbench's 'AND_out'
    output OR_out,  // Must match the testbench's 'OR_out'
    output NOT_out  // Must match the testbench's 'NOT_out'
);
    // Gate implementations
    and G1 (AND_out, A, B);
    or G2 (OR_out, A, A, B); // Typo corrected: OR gate takes 2 inputs
    not G3 (NOT_out, A); 
    
endmodule
