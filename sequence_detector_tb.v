module sequence_detector_tb;

	// Inputs
	reg clk;
	reg reset;
	reg x;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	sequence_detector uut (
		.clk(clk), 
		.reset(reset), 
		.x(x), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		clk = 1;
		reset = 1;
		x = 0;

		// Wait 100 ns for global reset to finish
		#100;
		reset = 0;
		x=0;
		#100
		x=1;
		#100
		x=0;
		#100
      x=1;
		#100
		x=0;
		#100
		x=0;
      #100
      x=1;
      #100
      x=0; 		
		#100
		x=1;
		#100
		x=0;
		#100
		x=0;
		#100
		x=1;
		#100
		x=0;
	

	end
	always
	begin
	#50 clk=~clk;
   end   
endmodule
