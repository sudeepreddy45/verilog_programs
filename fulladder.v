dataflow-->
module adder(
	input a,
	input b,
	input c,
	output s,
	output carry);
assign s = a ^ b ^ c;
assign carry = (a&b) | (c&(a ^ b));
endmodule

behavioral-->
module adder(
	input a,
	input b,
	input c,
	output reg s,
	output reg c);
always@(*) begin
	s = a ^ b ^ c;
	carry = (a&b) | (c&(a ^ b));
end
endmodule
