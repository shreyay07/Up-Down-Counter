module counter_tb;
parameter WIDTH=4;
reg rst;
reg en;
reg clk;
reg up_down;
wire [WIDTH-1:0] count;

counter uut(
	.rst(rst),
	.en(en),
	.clk(clk),
	.up_down(up_down),
	.count(count)
);

always #5 clk=~clk;
initial begin
	clk=0;
	$monitor("Time=%0t \t clk=%b \t reset=%b \t enable=%b \t up_down=%b \t count=%b", $time,clk,rst,en,up_down,count);
	rst=1; en=1; up_down=1; #10;
	rst=0; #10;
	en=0; #5;
	rst=1; #10;
	rst=0; en=1; #30;
	up_down=0; #100;
	$finish;
end

initial begin
	$dumpfile("counter.vcd");
	$dumpvars();
end
endmodule
	
