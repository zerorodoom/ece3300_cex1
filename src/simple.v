`timescale 1ns / 1ps
//
//  Add code inside the module below to implement the following truth table:
//
//   a[2:0]         result[6:0]
//  ==============================
//    000     |   0000000
//    001     |   0000001
//    010     |   0000011
//    011     |   0000111
//    100     |   0001111
//    101     |   0011111
//    110     |   0111111
//    111     |   1111111
//
//  The github tests will test the output of your code.
//  If it passes, you will see a green check mark at the top of the repository.
//

module simple(
	      input [2:0]  a,
	      output reg [6:0] result);
	integer i;
	
	always @ (*)
		begin
			result = 7'b0000000;
			for(i=3'b001;i<3'b111;i=i+1)
				begin
					result[i] = 1;
				end
		end

   
endmodule


