module sr_flipflop(
	input s,
	input r,
	input clk,
	input rst,
	output reg q);
always@(posedge clk or posedge rst) begin
	if (rst == 1)
		q <= 1'b0;
	else begin
		case({s,r})
			2'b00: q <= q;
			2'b01: q <= 1'b0;
			2'b10: q <= 1'b1;
			2'b11: q <= 1'bx;
		endcase
	end
end 
endmodule
