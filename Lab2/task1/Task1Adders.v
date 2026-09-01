//Half adder using gate level modeling
module halfAdder(sum,carry,n1,n2); 
input n1; input n2; 
output carry; 
output sum; 
xor su(sum,n1,n2); 
and ca(carry,n1,n2); 
endmodule module 
testhalfadder(); 
reg x; reg y; 
wire Sum; 
wire Carry; 
halfAdder ha(Sum,Carry,x,y); 
initial 
begin x=0; y=0; 
#50 x=0; y=1; 
#50 x=1; y=0; 
 
#50 x=1; y=1; #50; end endmodule 
//Full Adder using Gate level modeling 
module fullAdder(SUM,Cout,A,B,Cin); 
input A; input B; input Cin; 
output SUM; output Cout;
wire sum1; wire c1; wire c2; 
halfAdder ha1(sum1,c1,A,B); 
halfAdder ha2(SUM,c2,sum1,Cin); 
or ca(Cout,c1,c2); 
endmodule module 
testFullAdder(); reg x; reg y; reg z; 
wire Sum; wire Carry; 
fullAdder fa(Sum,Carry,x,y,z); 
initial 
begin
    x=0; y=0; z=0; 
#50 x=0; y=0; z=1; 
#50 x=0; y=1; z=0; 
#50 x=0; y=1; z=1; 
#50 x=1; y=0; z=0; 
#50 x=1; y=0; z=1; 
#50 x=1; y=1; z=0; 
#50 x=1; y=1; z=1; #50; end endmodule 
//Half adder using data flow modeling 
module halfAdder(sum,carry,n1,n2); 
input n1; input n2; 
output carry; output 
sum; assign sum=n1^n2; 
assign carry=n1&n2; 
endmodule module testhalfadder(); 
reg x; reg y;
wire Sum; 
wire Carry; halfAdder ha(Sum,Carry,x,y); 
initial
begin x=0; y=0; 
#50 x=0; y=1; 
#50 x=1; y=0; 
#50 x=1; y=1; #50; end endmodule 
//Full Adder using data flow modeling 
module fullAdder(SUM,Cout,A,B,Cin); 
input A; input B; input Cin; 
output SUM; output Cout; 
assign SUM=A^B^Cin; 
assign Cout=(A&B)|(B&Cin)|(A&Cin); 
endmodule 
 
module testFullAdder(); reg x; reg y; reg z; wire Sum; wire Carry; fullAdder fa(Sum,Carry,x,y,z); 
initial
begin x=0; y=0; z=0; 
#50 x=0; y=0; z=1; 
#50 x=0; y=1; z=0; 
#50 x=0; y=1; z=1; 
#50 x=1; y=0; z=0; 
#50 x=1; y=0; z=1; 
#50 x=1; y=1; z=0; #50 x=1; y=1; z=1; 
#50;
 end endmodule 

