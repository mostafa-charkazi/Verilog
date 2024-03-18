`timescale 1ns/1ns
module my_multiplexer(input s0,s1,a,b,c,d,output w);
	assign w = (~s0&~s1&a) | (~s0&s1&b) | (s0&~s1&c) | (s0&s1&d);
endmodule