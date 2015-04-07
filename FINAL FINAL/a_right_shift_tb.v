`timescale 1ns/1ps
module a_right_shift_tb;
	reg [31:0] operand;
	reg [4:0] shift;
	wire [31:0] result;
	right_shifter rs(.result(result), .operand(operand), .shift(shift));
	initial begin	
		#5;
		#5 operand='b1; shift='b1;
		#5 golden(result,'b0, operand, shift);
		#5 operand='b10000000000000000000000000000000; shift='b1;
		#5 golden(result,'b1000000000000000000000000000000, operand, shift);
		#5 operand='b10; shift='b10;
		#5 golden(result,'b0, operand, shift);
		#5 operand='b100; shift='b10;
		#5 golden(result,'b1, operand, shift);
		#5 operand='b100; shift='b11;
		#5 golden(result,'b0, operand, shift);
		#5 operand='b11000; shift='b11;
		#5 golden(result,'b11, operand, shift);
		#5 operand='b10000000000000000000000000000000; shift='b1;
		#5 golden(result,'b1000000000000000000000000000000, operand, shift);
		#5 operand='b1; shift='b101;
		#5 golden(result,'b0, operand, shift);
		#5 operand='b10000000000000000000000000000000; shift='b1;
		#5 golden(result,'b1000000000000000000000000000000, operand, shift);
		#5 operand='b10; shift='b10000;
		#5 golden(result,'b0, operand, shift);
		#5 operand='b100; shift='b10;
		#5 golden(result,'b1, operand, shift);
		#5 operand='b100; shift='b11;
		#5 golden(result,'b0, operand, shift);
		#5 operand='b11000; shift='b11;
		#5 golden(result,'b11, operand, shift);
		#5 operand='b11111111111111111111111111111111; shift='b1;
		#5 golden(result,'b1111111111111111111111111111111, operand, shift);
		#5 operand='b11111111111111111111111111111111; shift='b10000;
		#5 golden(result,'b1111111111111111, operand, shift);
		#5 operand='b11111111111111111111111111111111; shift='b11111;
		#5 golden(result,'b1, operand, shift);
		#5 operand='b10000000000000000000000000000000; shift='b11111;
		#5 golden(result,'b1, operand, shift);
		/*#5;
		#5 operand='b1; shift='b1;
		#5 golden(result,'b0, operand, shift);
		#5;
		#5 operand='b10; shift='b1;
		#5 golden(result,'b1, operand, shift);
		#5;
		#5 operand='b11; shift='b1;
		#5 golden(result,'b1, operand, shift);
		#5;
		#5 operand='b100; shift='b1;
		#5 golden(result,'b10, operand, shift);
		#5;
		#5 operand='b101; shift='b1;
		#5 golden(result,'b10, operand, shift);
		#5;
		#5 operand='b110; shift='b1;
		#5 golden(result,'b11, operand, shift);
		#5;
		#5 operand='b111; shift='b1;
		#5 golden(result,'b11, operand, shift);
		#5;
		#5 operand='b1001; shift='b1;
		#5 golden(result,'b100, operand, shift);
		#5;
		#5 operand='b1010; shift='b1;
		#5 golden(result,'b101, operand, shift);
		#5;
		#5 operand='b1011; shift='b1;
		#5 golden(result,'b101, operand, shift);
		#5;
		#5 operand='b1100; shift='b1;
		#5 golden(result,'b110, operand, shift);
		#5;
		#5 operand='b1101; shift='b1;
		#5 golden(result,'b110, operand, shift);
		#5;
		#5 operand='b1110; shift='b1;
		#5 golden(result,'b111, operand, shift);
		#5;
		#5 operand='b1111; shift='b1;
		#5 golden(result,'b111, operand, shift);
		#5;
		#5 operand='b0; shift='b10;
		#5 golden(result,'b0, operand, shift);
		#5;
		#5 operand='b1; shift='b10;
		#5 golden(result,'b0, operand, shift);
		#5;
		#5 operand='b10; shift='b10;
		#5 golden(result,'b0, operand, shift);
		#5;
		#5 operand='b11; shift='b10;
		#5 golden(result,'b0, operand, shift);
		#5;
		#5 operand='b100; shift='b10;
		#5 golden(result,'b1, operand, shift);
		#5;
		#5 operand='b101; shift='b10;
		#5 golden(result,'b1, operand, shift);
		#5;
		#5 operand='b110; shift='b10;
		#5 golden(result,'b1, operand, shift);
		#5;
		#5 operand='b111; shift='b10;
		#5 golden(result,'b1, operand, shift);
		#5;
		#5 operand='b1001; shift='b10;
		#5 golden(result,'b10, operand, shift);
		#5;
		#5 operand='b1010; shift='b10;
		#5 golden(result,'b10, operand, shift);
		#5;
		#5 operand='b1011; shift='b10;
		#5 golden(result,'b10, operand, shift);
		#5;
		#5 operand='b1100; shift='b10;
		#5 golden(result,'b11, operand, shift);
		#5;
		#5 operand='b1101; shift='b10;
		#5 golden(result,'b11, operand, shift);
		#5;
		#5 operand='b1110; shift='b10;
		#5 golden(result,'b11, operand, shift);
		#5;
		#5 operand='b1111; shift='b10;
		#5 golden(result,'b11, operand, shift);
		#5;
		#5 operand='b0; shift='b11;
		#5 golden(result,'b0, operand, shift);
		#5;
		#5 operand='b1; shift='b11;
		#5 golden(result,'b0, operand, shift);
		#5;
		#5 operand='b10; shift='b11;
		#5 golden(result,'b0, operand, shift);
		#5;
		#5 operand='b11; shift='b11;
		#5 golden(result,'b0, operand, shift);
		#5;
		#5 operand='b100; shift='b11;
		#5 golden(result,'b0, operand, shift);
		#5;
		#5 operand='b101; shift='b11;
		#5 golden(result,'b0, operand, shift);
		#5;
		#5 operand='b110; shift='b11;
		#5 golden(result,'b0, operand, shift);
		#5;
		#5 operand='b111; shift='b11;
		#5 golden(result,'b0, operand, shift);
		#5;
		#5 operand='b1001; shift='b11;
		#5 golden(result,'b1, operand, shift);
		#5;
		#5 operand='b1010; shift='b11;
		#5 golden(result,'b1, operand, shift);
		#5;
		#5 operand='b1011; shift='b11;
		#5 golden(result,'b1, operand, shift);
		#5;
		#5 operand='b1100; shift='b11;
		#5 golden(result,'b1, operand, shift);
		#5;
		#5 operand='b1101; shift='b11;
		#5 golden(result,'b1, operand, shift);
		#5;
		#5 operand='b1110; shift='b11;
		#5 golden(result,'b1, operand, shift);
		#5;
		#5 operand='b1111; shift='b11;
		#5 golden(result,'b1, operand, shift);*/
	end

	task golden;
		input [31:0] calculated;
		input [31:0] expected;
		input [31:0] operand;
		input [5:0] shift;
		begin

			if (calculated==expected) begin
				$write("[PASSED]");
			end else begin
			$write("%d << %d = %d got %d", operand, shift, expected, calculated);
				$write("[FAILED]");
			end 
			$write("\n");
		end

	endtask
endmodule 