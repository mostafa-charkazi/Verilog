`timescale 1ns/1ns
module my_multiplexer_testbench();
	reg ss0,ss1,aa,bb,cc,dd;
	wire ww;
	my_multiplexer MUX1(.s0(ss0),.s1(ss1),.a(aa),.b(bb),.c(cc),.d(dd),.w(ww));
	initial begin
		repeat(4) begin
			aa = 0; bb = 0; cc = 1; dd = 1;
			#100
			aa = 0; bb = 1; cc = 0; dd = 1;
			#100;
		end
	end
	initial begin
		ss0 = 0; ss1 = 0;
		#200
		ss0 = 0; ss1 = 1;
		#200
		ss0 = 1; ss1 = 0;
		#200
		ss0 = 1; ss1 = 1;
		#200
		$stop;
	end
endmodule