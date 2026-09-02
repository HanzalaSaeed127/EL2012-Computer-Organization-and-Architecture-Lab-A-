//4 Bit adder and subtractor with control input
module addSub(result,A,B,select);
input [3:0] A;
input [3:0] B;
input select;
output reg [3:0] result;

always @*
begin
if(select==0)
result=A+B;
else
result=A-B;
end
endmodule

module testAdderSubtractor();
reg [3:0] A;
reg [3:0] B;
reg select;
wire [3:0] result;

addSub uut(result,A,B,select);

initial
begin
A=4'b0011; B=4'b0001; select=0;
#50 A=4'b0101; B=4'b0010; select=0;
#50 A=4'b0110; B=4'b0011; select=1;
#50 A=4'b1000; B=4'b0010; select=1;
#50;
end

endmodule
