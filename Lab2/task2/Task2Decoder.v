//3x8 Decoder using gate level modeling
module decoderStructural(o1,o2,o3,o4,o5,o6,o7,o8,A,B,C);
input A,B,C;
output o1,o2,o3,o4,o5,o6,o7,o8;
wire a,b,c;
not (a,A);
not (b,B);
not (c,C);
and (o1,a,b,c);
and (o2,a,b,C);
and (o3,a,B,c);
and (o4,a,B,C);
and (o5,A,b,c);
and (o6,A,b,C);
and (o7,A,B,c);
and (o8,A,B,C);
endmodule

module testDecoderStructural();
reg x;
reg y;
reg z;
wire w1,w2,w3,w4,w5,w6,w7,w8;
decoderStructural a1(w1,w2,w3,w4,w5,w6,w7,w8,x,y,z);
initial
begin
x=0; y=0; z=0;
#50 x=0; y=0; z=1;
#50 x=0; y=1; z=0;
#50 x=0; y=1; z=1;
#50 x=1; y=0; z=0;
#50 x=1; y=0; z=1;
#50 x=1; y=1; z=0;
#50 x=1; y=1; z=1;
#50;
end
endmodule

//3x8 Decoder using data flow modeling
module decoderDataflow(o1,o2,o3,o4,o5,o6,o7,o8,A,B,C);
input A,B,C;
output o1,o2,o3,o4,o5,o6,o7,o8;
assign o1=(~A)&(~B)&(~C);
assign o2=(~A)&(~B)&C;
assign o3=(~A)&B&(~C);
assign o4=(~A)&B&C;
assign o5=A&(~B)&(~C);
assign o6=A&(~B)&C;
assign o7=A&B&(~C);
assign o8=A&B&C;
endmodule

module testDecoderDataflow();
reg x;
reg y;
reg z;
wire w1,w2,w3,w4,w5,w6,w7,w8;
decoderDataflow a1(w1,w2,w3,w4,w5,w6,w7,w8,x,y,z);
initial
begin
x=0; y=0; z=0;
#50 x=0; y=0; z=1;
#50 x=0; y=1; z=0;
#50 x=0; y=1; z=1;
#50 x=1; y=0; z=0;
#50 x=1; y=0; z=1;
#50 x=1; y=1; z=0;
#50 x=1; y=1; z=1;
#50;
end
endmodule
