module counter #( parameter WIDTH=4)
	(
		input rst, en,clk, up_down,
	output reg [WIDTH-1:0] count
);
always@(posedge clk) begin
	if(rst)
		count<=0;
	else if(en)begin
		if(up_down)
			count<=count+1;
		else
			count<=count-1;
	end
	else
		count<=count;
end
endmodule
