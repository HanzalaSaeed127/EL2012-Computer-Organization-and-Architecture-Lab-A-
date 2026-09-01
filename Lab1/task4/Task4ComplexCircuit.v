module complexGate(a,b,c);
input a;
input b;
output c;
wire t1;
wire t2;
wire t3;
wire t4;
not al1(t1,a);
and al2(t3,t1,b);
not al3(t2,b);
and al4(t4,a,t2);
or (c,t3,t4);
endmodule
module ComplexTestbench(); 
reg x;
reg y;
wire z;
complexGate uut (x,y,z);
initial
begin
x=0; y=0;
#50 x=0; y=1;
#50 x=1; y=0;
#50 x=1; y=1;
#50;
end
endmodule

//code with Data flow modeling:
module complexGate(a,b,c);
input a;
input b;
output c;
wire t1;
wire t2;
wire t3;
wire t4;
assign t1=~a;
assign t3=t1&b;
assign t2=~b;
assign t4=a&t2;
assign c=t3|t4;
endmodule
module ComplexTestbench(); 
reg x;
reg y;
wire z;
complexGate uut (x,y,z);
initial
begin
x=0; y=0;
#50 x=0; y=1;
#50 x=1; y=0;
#50 x=1; y=1;
#50;
end
endmodule
