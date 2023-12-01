module ContadorConTrigger(
    input wire clk,          
    output reg trigger       
);

reg [19:0] contador1;        
parameter limite = 20'd500000;     

always @(posedge clk) begin
    if (contador1 < limite) begin
        contador1 <= contador1 + 1;
        trigger <= 1;
    end else begin
        contador1 = 0;
        trigger = 0;
    end
end

endmodule
module ContadorConEcho(
    input wire clk,           // Entrada de reloj
    input wire echo,          // Entrada de control (cuando echo=1, se incrementa el contador)
    output reg [19:0] contador2 // Salida del contador de 32 bits
);

always @(posedge clk) 
    begin
		if(echo==1)
			begin
				contador2=contador2+1; //Se va almacenando en un contador si el ultrasonido genera el echo
			end
		else
			begin 
				contador2=0;
			end
	end

endmodule
module ControlLed(
    input clk,
    input wire [19:0] contador2,  
    output reg led1,   
    output reg led2, 
    output reg led3   
);


parameter L1=20'd70000; 
parameter L1m=20'd50000; //Para entre 30cm 
parameter L2=20'd50000;  //Para entre 10cm
parameter L2m=20'd30000;
parameter L3=20'd30000; //Para entre 2cm
parameter L3m=20'd3000; //Para 1cm


always @(contador2) 
	begin

		if (contador2>L1m && contador2<L1)
			begin
				led1 <= 0;
				led2 <= 1;
				led3 <= 1;  
			end
		else if (contador2>L2m && contador2<L2)
			begin
				led1 <= 1;
				led2 <= 0;
				led3 <= 1;  
			end
		else if (contador2>L3m && contador2<L3)
			begin
				led1 <= 1;
				led2 <= 1;
				led3 <= 0;  
			end
	end

endmodule

module ultras (
  input clk,
  input echo,
  output trig,
  output led1,
  output led2,
  output led3
);
  wire [19:0] s0;
  // ContadorConTrigger
  ContadorConTrigger ContadorConTrigger_i0 (
    .clk( clk ),
    .trigger( trig )
  );
  // ContadorConEcho
  ContadorConEcho ContadorConEcho_i1 (
    .clk( clk ),
    .echo( echo ),
    .contador2( s0 )
  );
  // ControlLed
  ControlLed ControlLed_i2 (
    .clk( clk ),
    .contador2( s0 ),
    .led1( led1 ),
    .led2( led2 ),
    .led3( led3 )
  );
endmodule
