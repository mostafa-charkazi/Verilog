`timescale 1ns/1ns
module my_multiplexer(input s0,s1,a,b,c,d, output w);
	wire s0bar,s1bar,x,y,i,j;
	not (s0bar, s0);
	not (s1bar, s1);
	and(x,s0bar,s1bar,a);
	and(y,s0bar,s1,b);
	and(i,s0,s1bar,c);
	and(j,s0,s1,d);
	or(w,x,y,i,j);
endmodule