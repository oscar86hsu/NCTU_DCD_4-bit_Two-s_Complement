`timescale 1ns / 1ps // Define time tick unit.
`include "comp2_4bit.v"

module comp2_4bit_tb;

	// Input signals
	reg [3:0] I;

	// Output signals
	wire [3:0] O;

	// Instantiate the Unit Under Test (UUT)
	comp2_4bit uut (I, O);

initial begin
    // Setup the signal dump file.
    $dumpfile("comp2_4bit.vcd"); // Set the name of the dump file.
    $dumpvars;                   // Save all signals to the dump file.

    // Display the signal values whenever there is a change.
    $monitor("%b, %b, %b, %b | %b, %b, %b, %b", I[3], I[2], I[1], I[0], O[3], O[2], O[1], O[0]);

    // Initialize the input signals
    I[0] = 0; I[1] = 0; I[2] = 0; I[3] = 0;

    // Change input signals; wait 20 time units for each change
    #20; I[0] = 1'b0; I[1] = 1'b0; I[2] = 1'b0; I[3] = 1'b0;
    #20; I[0] = 1'b0; I[1] = 1'b0; I[2] = 1'b0; I[3] = 1'b1;
    #20; I[0] = 1'b0; I[1] = 1'b0; I[2] = 1'b1; I[3] = 1'b0;
    #20; I[0] = 1'b0; I[1] = 1'b0; I[2] = 1'b1; I[3] = 1'b1;

    #20; I[0] = 1'b0; I[1] = 1'b1; I[2] = 1'b0; I[3] = 1'b0;
    #20; I[0] = 1'b0; I[1] = 1'b1; I[2] = 1'b0; I[3] = 1'b1;
    #20; I[0] = 1'b0; I[1] = 1'b1; I[2] = 1'b1; I[3] = 1'b0;
    #20; I[0] = 1'b0; I[1] = 1'b1; I[2] = 1'b1; I[3] = 1'b1;

    #20; I[0] = 1'b1; I[1] = 1'b0; I[2] = 1'b0; I[3] = 1'b0;
    #20; I[0] = 1'b1; I[1] = 1'b0; I[2] = 1'b0; I[3] = 1'b1;
    #20; I[0] = 1'b1; I[1] = 1'b0; I[2] = 1'b1; I[3] = 1'b0;
    #20; I[0] = 1'b1; I[1] = 1'b0; I[2] = 1'b1; I[3] = 1'b1;

    #20; I[0] = 1'b1; I[1] = 1'b1; I[2] = 1'b0; I[3] = 1'b0;
    #20; I[0] = 1'b1; I[1] = 1'b1; I[2] = 1'b0; I[3] = 1'b1;
    #20; I[0] = 1'b1; I[1] = 1'b1; I[2] = 1'b1; I[3] = 1'b0;
    #20; I[0] = 1'b1; I[1] = 1'b1; I[2] = 1'b1; I[3] = 1'b1;
    #20; $finish; // End the simulation.
end
endmodule
