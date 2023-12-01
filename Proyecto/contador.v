module contador(
    input  clk_in,
    output reg [23:0] count = 0
);

parameter SIZE = 24; 
parameter LIMIT = 24'd10000000; /*FPGA 50000000/50hz=10000000  */

always@(posedge clk_in)
begin
  if(count == LIMIT)
  begin
    count <= 0;
  end
  else
  begin
    count <= count + 1;
  end
end    

endmodule
