module servo (
    input  clk, input switch1, input switch2, input switch3,
    output reg pwm=1'b0
 );
wire [23:0]cable1;
wire [23:0]cable2;

contador contador1(.clk_in(clk), .count(cable1));
duty duty1(.clk_in(clk), .switch2(switch2), .switch1(switch1), .duty(cable2));

always@(posedge clk) /*comparador*/
begin
if (cable1 < cable2)
	pwm <= 1'b1;
else
	pwm <= 1'b0;
end

endmodule

