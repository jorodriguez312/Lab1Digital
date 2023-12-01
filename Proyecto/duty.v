module duty(
  input clk_in,
  input switch1,
  input switch2,
  output reg [23:0] duty = 24'd0
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
