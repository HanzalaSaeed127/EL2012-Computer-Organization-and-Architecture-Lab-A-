module comparator2bit(A,B,equal,greater,less);
input [1:0] A;
input [1:0] B;
output equal;
output greater;
output less;

assign equal = (A==B);
assign greater = (A>B);
assign less = (A<B);

endmodule

module testComparator2bit();
reg [1:0] A;
reg [1:0] B;
wire equal;
wire greater;
wire less;

comparator2bit uut(A,B,equal,greater,less);

initial
begin
A=2'b00; B=2'b00;
#50 A=2'b00; B=2'b01;
#50 A=2'b01; B=2'b00;
#50 A=2'b01; B=2'b01;
#50 A=2'b10; B=2'b01;
#50 A=2'b01; B=2'b10;
#50 A=2'b10; B=2'b10;
#50 A=2'b11; B=2'b10;
#50 A=2'b10; B=2'b11;
#50 A=2'b11; B=2'b11;
#50;
end

endmodule