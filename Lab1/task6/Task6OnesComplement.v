//With Gate level modeling
module oneCompliment(a,b,c,d,w,x,y,z);
input a;
input b;
input c;
input d;
output w;
output x;
output y;
output z;
not g1(w,a);
not g2(x,b);
not g3(y,c);
not g4(z,d);
endmodule

module testbench();
reg a, b, c, d;
wire w, x, y, z;
oneCompliment uut(a,b,c,d,w,x,y,z);
initial
begin
a=0; b=0; c=0; d=0;
#50 a=0; b=0; c=0; d=1;
#50 a=0; b=0; c=1; d=0;
#50 a=0; b=0; c=1; d=1;
#50 a=0; b=1; c=0; d=0;
#50 a=0; b=1; c=0; d=1;
#50 a=0; b=1; c=1; d=0;
#50 a=0; b=1; c=1; d=1;
#50 a=1; b=0; c=0; d=0;
#50 a=1; b=0; c=0; d=1;
#50 a=1; b=0; c=1; d=0;
#50 a=1; b=0; c=1; d=1;
#50 a=1; b=1; c=0; d=0;
#50 a=1; b=1; c=0; d=1;
#50 a=1; b=1; c=1; d=0;
#50 a=1; b=1; c=1; d=1;
#50;
end
endmodule
//with Data flow model
module oneCompliment(a,b,c,d,w,x,y,z);
input a;
input b;
input c;
input d;
output w;
output x;
output y;
output z;
assign w=~a;
assign x=~b;
assign y=~c;
assign z=~d;
endmodule

module testbench();
reg a, b, c, d;
wire w, x, y, z;
oneCompliment uut(a,b,c,d,w,x,y,z);
initial
begin
a=0; b=0; c=0; d=0;
#50 a=0; b=0; c=0; d=1;
#50 a=0; b=0; c=1; d=0;
#50 a=0; b=0; c=1; d=1;
#50 a=0; b=1; c=0; d=0;
#50 a=0; b=1; c=0; d=1;
#50 a=0; b=1; c=1; d=0;
#50 a=0; b=1; c=1; d=1;
#50 a=1; b=0; c=0; d=0;
#50 a=1; b=0; c=0; d=1;
#50 a=1; b=0; c=1; d=0;
#50 a=1; b=0; c=1; d=1;
#50 a=1; b=1; c=0; d=0;
#50 a=1; b=1; c=0; d=1;
#50 a=1; b=1; c=1; d=0;
#50 a=1; b=1; c=1; d=1;
#50;
end
endmodule

