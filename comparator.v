dataflow-->
module comparator(
	input a,
	input b,
	output lt,
	output gt,
	output eq);
assign lt = (~a)&b;
assign gt = a&(~b);
assign eq = ~(a ^ b); 
endmodule

behavioral-->
module comparator(
	input a,
	input b,
	output reg lt,
	output reg gt,
	output reg eq);
always @(*)
begin
	if(a==b) begin
		eq = 1; gt = 0; lt = 0;
	end
	else if (a > b) begin
            eq = 0; gt = 1; lt = 0;
        end
        else begin
            eq = 0; gt = 0; lt = 1;
        end
end
endmodule
