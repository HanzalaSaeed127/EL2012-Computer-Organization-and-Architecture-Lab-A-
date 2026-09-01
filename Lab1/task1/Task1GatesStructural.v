
//And gate
module AndGate(a,b,c);
input a;
input b;
output c;
and al(c,a,b);
endmodule
module Andtestbench();
reg x;
reg y;
wire z;
AndGate uut(x,y,z);
initial
begin
x=0; y=0;
#50 x=0; y=1;
#50 x=1; y=0;
#50 x=1; y=1;
#50;
end
endmodule
//Or gate
module OrGate(a,b,c);
input a;
input b;
output c;
or al(c,a,b);
endmodule
module Ortestbench();
reg x;
reg y;
wire z;
OrGate uut(x,y,z);
initial
begin
x=0; y=0;
#50 x=0; y=1;
#50 x=1; y=0;
#50 x=1; y=1;
#50;
end
endmodule
//Not gate
module NotGate(a,c);
input a;
output c;
not al(c,a);
endmodule
module Nottestbench();
reg x;
wire z;
NotGate uut(x,z);
initial
begin
x=0;
#50 x=1;
#50;
end
endmodule
//Nand gate
module NandGate(a,b,c);
input a;
input b;
output c;
nand al(c,a,b);
endmodule
module Nandtestbench();
reg x;
reg y;
wire z;
NandGate uut(x,y,z);
initial
begin
x=0; y=0;
#50 x=0; y=1;
#50 x=1; y=0;
#50 x=1; y=1;
#50;
end
endmodule
//Nor gate
module NorGate(a,b,c);
input a;
input b;
output c;
nor al(c,a,b);
endmodule
module Nortestbench();
reg x;
reg y;
wire z;
NorGate uut(x,y,z);
initial
begin
x=0; y=0;
#50 x=0; y=1;
#50 x=1; y=0;
#50 x=1; y=1;
#50;
end
endmodule
//Xor gate
module XorGate(a,b,c);
input a;
input b;
output c;
xor al(c,a,b);
endmodule
module Xortestbench();
reg x;
reg y;
wire z;
XorGate uut(x,y,z);
initial
begin
x=0; y=0;
#50 x=0; y=1;
#50 x=1; y=0;
#50 x=1; y=1;
#50;
end
endmodule
//Xnor gate
module XnorGate(a,b,c);
input a;
input b;
output c;
xnor al(c,a,b);
endmodule
module Xnortestbench();
reg x;
reg y;
wire z;
XnorGate uut(x,y,z);
initial
begin
x=0; y=0;
#50 x=0; y=1;
#50 x=1; y=0;
#50 x=1; y=1;
#50;
end
endmodule

