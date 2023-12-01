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
module contador(
    input  clk_in,
    output reg [23:0] count 
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
module duty(
  input clk_in,
  input switch1,
  input switch2,
  output reg [23:0] duty
);

  reg [23:0] duty_temp;  // Registro temporal para almacenar el valor actual de duty
  reg [15:0] counter;    // Contador para el incremento en 30000

  always @(posedge clk_in)
  begin
    // Incrementar duty_temp cuando switch1 está presionado
    if (switch1 == 1'b1)
    begin
      if (counter < 20000)
        counter <= counter + 1;
      else if (duty_temp + 70 <= 120000) // Asegurar que no supere 120000
      begin
        duty_temp <= duty_temp + 70;  // Incremento en 70
        counter <= 16'd0;
      end
    end

    // Restablecer duty_temp cuando switch2 está presionado
    if (switch2 == 1'b1)
    begin
      duty_temp <= 24'd20000; // Reiniciar desde 30000
      counter <= 16'd0;
    end
  end

  // Asignar el valor de duty_temp a duty
  always @*
  begin
    duty = duty_temp;
  end

endmodule
module ControlLed(
    input clk,
    input wire [19:0] contador2,  
    output reg led1,   
    output reg led2, 
    output reg led3   
);


parameter L1=20'd70000; //25 cm +
parameter L1m=20'd45000;  
parameter L2=20'd45000; //Para 15 cm
parameter L2m=20'd20000;
parameter L3=20'd20000; //Para 5 cm
parameter L3m=20'd1000;


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
module comparador (
    input clk,
    input [23:0] cont,
    input [23:0] dut,  // Corregido para especificar el ancho del bus en la entrada "dut"
    output reg pwm
);

wire [23:0] cable1 = cont;
wire [23:0] cable2 = dut;  // Corregido para asignar correctamente la entrada "dut"

always @(posedge clk) 
begin
    if (cable1 < cable2)
        pwm <= 1'b1;
    else
        pwm <= 1'b0;
end

endmodule

module top (
  input clk,
  input echo,
  input sw1,
  input sw2,
  output trig,
  output led3,
  output led5,
  output led7,
  output led2,
  output led1,
  output led4,
  output led6,
  output led8,
  output led9,
  output pwm,
  output sonido
);
  wire [19:0] s0;
  wire led1_temp;
  wire led6_temp;
  wire sonido_temp;
  wire [23:0] s1;
  wire [23:0] s2;
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
  // contador
  contador contador_i2 (
    .clk_in( clk ),
    .count( s1 )
  );
  // duty
  duty duty_i3 (
    .clk_in( clk ),
    .switch1( sw1 ),
    .switch2( sw2 ),
    .duty( s2 )
  );
  // ControlLed
  ControlLed ControlLed_i4 (
    .clk( clk ),
    .contador2( s0 ),
    .led1( led1_temp ),
    .led2( led6_temp ),
    .led3( sonido_temp )
  );
  // comparador
  comparador comparador_i5 (
    .clk( clk ),
    .cont( s1 ),
    .dut( s2 ),
    .pwm( pwm )
  );
  assign led3 = led1_temp;
  assign led5 = led6_temp;
  assign led7 = sonido_temp;
  assign led2 = led1_temp;
  assign led1 = led1_temp;
  assign led4 = led6_temp;
  assign led6 = led6_temp;
  assign led8 = sonido_temp;
  assign led9 = sonido_temp;
  assign sonido = sonido_temp;
endmodule
