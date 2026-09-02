//2x1 MUX
module mux2x1(y,a,b,select);
input a;
input b;
input select;
output reg y;

always @*
begin
if(select==0)
y=a&b;
else
y=a|b;
end

endmodule

module testMux2x1();
reg a;
reg b;
reg select;
wire y;

mux2x1 uut(y,a,b,select);

initial
begin
a=0; b=0; select=0;
#50 a=0; b=1; select=0;
#50 a=1; b=0; select=0;
#50 a=1; b=1; select=0;
#50 a=0; b=0; select=1;
#50 a=0; b=1; select=1;
#50 a=1; b=0; select=1;
#50 a=1; b=1; select=1;
#50;
end

endmodule