dataflow-->
module decoder2to4(
	input [1:0] a,
	output [3:0] y);
assign y[0] = ~(a[1]) & ~(a[0]);
assign y[1] = ~(a[1]) & (a[0]);
assign y[2] = (a[1]) & ~(a[0]);
assign y[3] = (a[1]) & (a[0]);
endmodule

behavioral-->
module decoder2to4(
	input [1:0] a,
	output reg [3:0] y);
always @(*) begin
	y[0] = ~(a[1]) & ~(a[0]);
	y[1] = ~(a[1]) & (a[0]);
	y[2] = (a[1]) & ~(a[0]);
	y[3] = (a[1]) & (a[0]);
end
endmodule
