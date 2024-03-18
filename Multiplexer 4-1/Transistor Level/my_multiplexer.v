`timescale 1ns/1ns
module my_multiplexer(input s0,s1,a,b,c,d,output w);
	wire s0bar,s1bar,w1,w2,w3;
	wire w4,w5,w6,w7;
	wire outbar;
	supply0 gnd;
	supply1 vdd;
	
	not (s0bar, s0);
	not (s1bar, s1);
	
	pmos(w1,vdd,a);
	pmos(w1,vdd,s0bar);
	pmos(w1,vdd,s1bar);
	
	pmos(w2,w1,b);
	pmos(w2,w1,s0bar);
	pmos(w2,w1,s1);
	
	pmos(w3,w2,c);
	pmos(w3,w2,s0);
	pmos(w3,w2,s1bar);
	
	pmos(outbar,w3,d);
	pmos(outbar,w3,s0);
	pmos(outbar,w3,s1);
	
	nmos(w4,gnd,a);
	nmos(w5,gnd,b);
	nmos(w6,gnd,c);
	nmos(w7,gnd,d);
	
	nmos(w8,w4,s1bar);
	nmos(w9,w5,s1);
	nmos(w10,w6,s1bar);
	nmos(w11,w7,s1);
	
	nmos(outbar,w8,s0bar);
	nmos(outbar,w9,s0bar);
	nmos(outbar,w10,s0);
	nmos(outbar,w11,s0);
	
	not(w,outbar);
endmodule