synchronous-->
module d_flipflop(
	input clk,
	input rst,
	input d,
	output reg q_next_state);
always @(posedge clk) begin
	if(rst)
		q_next_state <= 1'b0;
	else
		q_next_state <= d;
end 
endmodule

asynchronous-->
module d_flipflop(
	input clk,
	input rst,
	input d,
	output reg q_next_state);
always @(posedge clk or posedge rst) begin
	if(rst)
		q_next_state <= 1'b0;
	else
		q_next_state <= d;
end 
endmodule
