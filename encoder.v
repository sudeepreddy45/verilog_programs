dataflow-->
module encoder(
	input [3:0] a,
	output [1:0] y);
assign y[0] = a[2] | a[3];
assign y[1] = a[1] | a[3];
endmodule

behavioral-->
module encoder(
	input [3:0] a,
	output reg [1:0] y);
always @(*) begin
	case(a)
		4'b0001: y = 2'b00;
		4'b0010: y = 2'b01;
		4'b0100: y = 2'b10;
		4'b1000: y = 2'b11;
	endcase
end
endmodule
