//8x1 MUX using gate level modeling
module mux8x1Structural(y,d0,d1,d2,d3,d4,d5,d6,d7,s0,s1,s2);
input d0,d1,d2,d3,d4,d5,d6,d7;
input s0,s1,s2;
output y;
wire n0,n1,n2;
wire a0,a1,a2,a3,a4,a5,a6,a7;
not g1(n0,s0);
not g2(n1,s1);
not g3(n2,s2);
and g4(a0,d0,n2,n1,n0);
and g5(a1,d1,n2,n1,s0);
and g6(a2,d2,n2,s1,n0);
and g7(a3,d3,n2,s1,s0);
and g8(a4,d4,s2,n1,n0);
and g9(a5,d5,s2,n1,s0);
and g10(a6,d6,s2,s1,n0);
and g11(a7,d7,s2,s1,s0);
or g12(y,a0,a1,a2,a3,a4,a5,a6,a7);
endmodule

module testMux8x1Structural();
reg d0,d1,d2,d3,d4,d5,d6,d7;
reg s0,s1,s2;
wire y;
mux8x1Structural uut(y,d0,d1,d2,d3,d4,d5,d6,d7,s0,s1,s2);
initial
begin
d0=0; d1=1; d2=0; d3=1; d4=0; d5=1; d6=0; d7=1; s2=0; s1=0; s0=0;
#50 s2=0; s1=0; s0=1;
#50 s2=0; s1=1; s0=0;
#50 s2=0; s1=1; s0=1;
#50 s2=1; s1=0; s0=0;
#50 s2=1; s1=0; s0=1;
#50 s2=1; s1=1; s0=0;
#50 s2=1; s1=1; s0=1;
#50;
end
endmodule

//8x1 MUX using data flow modeling
module mux8x1Dataflow(y,d0,d1,d2,d3,d4,d5,d6,d7,s0,s1,s2);
input d0,d1,d2,d3,d4,d5,d6,d7;
input s0,s1,s2;
output y;
assign y=(d0&~s2&~s1&~s0)|(d1&~s2&~s1&s0)|(d2&~s2&s1&~s0)|(d3&~s2&s1&s0)|
         (d4&s2&~s1&~s0)|(d5&s2&~s1&s0)|(d6&s2&s1&~s0)|(d7&s2&s1&s0);
endmodule

module testMux8x1Dataflow();
reg d0,d1,d2,d3,d4,d5,d6,d7;
reg s0,s1,s2;
wire y;
mux8x1Dataflow uut(y,d0,d1,d2,d3,d4,d5,d6,d7,s0,s1,s2);
initial
begin
d0=0; d1=1; d2=0; d3=1; d4=0; d5=1; d6=0; d7=1; s2=0; s1=0; s0=0;
#50 s2=0; s1=0; s0=1;
#50 s2=0; s1=1; s0=0;
#50 s2=0; s1=1; s0=1;
#50 s2=1; s1=0; s0=0;
#50 s2=1; s1=0; s0=1;
#50 s2=1; s1=1; s0=0;
#50 s2=1; s1=1; s0=1;
#50;
end
endmodule
