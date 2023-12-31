# SIMULACIÓN DE SISTEMAS DIGITALES CON HERRAMIENTAS OPEN SOURCE.

## Autores
- _Santiago Mariño Cortés_
- _Jonathan David Rodríguez Larrotta_
- _Juan Pablo Ávila Suárez_

## Descripción

El objetivo de esta pràctica es explorar herramientas de simulaciòn de tipo open source como digital, iverilog, y gtkwave para implementar el diseño de circuitos digitales como sumadores completos y sumadores-restadores, con dichas herramientas digitales se va a realizar un anàlisis de caracterìsticas de cada circuito como las tablas de verdad , mapas de Karnaugh, ecuaciones, entre otros mètodos.

## Contenido
1. [Autores](#autores)
2. [Descripción](#descripción)
3. [Marco Teórico](#marcoteórico)
4. [Herramientas](#herramientas-y-materiales)
5. [Resultados y Simulaciones](#resultados-y-simulaciones)
6. [Análisis de Resultados](#análisis-de-resultados)
7. [Conclusiones](#conclusiones)
8. [Referencias Bibliográficas](#referencias-bibliográficas)


## Marco Teórico

**1.Sumador medio:**
La suma es la operación básica de la aritmética que consiste en cuatro casos posibles para dos entradas binarias, como se muestra en la siguiente tabla, para los primeros tres casos de la salida constan de un dígito binario, pero para el cuarto se necesita el uso de un nuevo término binario denominado carry el cuál será el mas sgnificativo en los valores de la salida.

| A | B | Sum | Cout |
|---|---|-----|------|
| 0 | 0 | 0   | 0    |
| 0 | 1 | 1   | 0    |
| 1 | 0 | 1   | 0    |
| 1 | 1 | 0   | 1    |

Con la tabla de verdad generada, se pueden obtener las siguientes ecuaciones:

La ecuación para el bit de acarreo de salida (Cout) en función de los bits de entrada A y B es:
 $C_{out} = A \cdot B$ 

La ecuación para la suma $\sum$ en función de los bits de entrada A y B es:
$\sum = A \oplus B$

El diagrama lògico del sumador medio es el siguiente

<img src="https://github.com/jorodriguez312/Lab1Digital/blob/main/Imagenes/ImagenesLab2/semisumador.png" alt="Diagrma lógico del sumador medio" style="width:0.0005;">

**2.Sumador completo:**
Circuito combinacional que realiza la operación aritmética de la suma para tres bits para obtener dos salidas. Dos de las entradas (A Y B) representan los dos bits significativos mientras que la entrada denotada por Cin será el carry. El uso de dos salidas se debe a que la suma de las tres entradas binarias tendrá valores de 3 y 2, y como en el caso del sumador medio valores de salida superiores de "1" requieren más de dos bits que serán denotados con sum y Cout, este último el acarreo de salida. la ecuación de de la operación es la siguiente:


$$\sum=(A \oplus B) \oplus C$$

La tabla de verdad y el diagrama lógico para esta operación se muestran acontinuación:

| A | B | Cin | Sum | Cout |
|---|---|-----|-----|------|
| 0 | 0 | 0   | 0   | 0    |
| 0 | 0 | 1   | 1   | 0    |
| 0 | 1 | 0   | 1   | 0    |
| 0 | 1 | 1   | 0   | 1    |
| 1 | 0 | 0   | 1   | 0    |
| 1 | 0 | 1   | 0   | 1    |
| 1 | 1 | 0   | 0   | 1    |
| 1 | 1 | 1   | 1   | 1    |

<img src="https://github.com/jorodriguez312/Lab1Digital/blob/main/Imagenes/ImagenesLab2/sumadorcompleto.png" alt="Diagrma lógico del sumador completo" style="width:50%;">


**3.Restador medio y restador completo:**

A continución se muestra la tabla de verdad para el medio-restador.

| A | B | Borrow | Difference |
|---|---|--------|------------|
| 0 | 0 | 0      | 0          |
| 0 | 1 | 1      | 1          |
| 1 | 0 | 0      | 1          |
| 1 | 1 | 0      | 0          |

De la tabla de verdad para el medio restador, se obtienen la ecuación booleana y su diagrama lógico, mostrados a continuación.

La ecuación para el bit de borrow en función de los bits de entrada A y B es:
$Borrow = \overline{A} \cdot B$

La ecuación para la resta en función de los bits de entrada A y B es:
$\text{Rest} = A \oplus B$


La tabla de verdad correspondiente al Restador completo es la siguiente:

| A | B | Cin | Difference | Borrow |
|---|---|-----|------------|--------|
| 0 | 0 | 0   | 0          | 0      |
| 0 | 0 | 1   | 1          | 1      |
| 0 | 1 | 0   | 1          | 1      |
| 0 | 1 | 1   | 0          | 1      |
| 1 | 0 | 0   | 1          | 0      |
| 1 | 0 | 1   | 0          | 0      |
| 1 | 1 | 0   | 0          | 1      |
| 1 | 1 | 1   | 1          | 1      |

**6.Digital simulador:**
Digital es un diseñador de lógica digital y simulador de circuitos fácil de usar, diseñado con fines educativos. Proporciona un rendimiento eficiente, incluso para circuitos de gran tamaño. Además, es posible exportar circuitos a VHDL o Verilog, así como archivos JEDEC que se pueden programar en chips GAL16v8 o GAL22v10. Entre sus características se tienen:

- Visualización de estados de señales con gráficos de medición.
- Modo de una sola puerta para analizar oscilaciones.
- Análisis y síntesis de circuitos combinatorios y secuenciales.
- Pruebas sencillas de circuitos: puedes crear casos de prueba y ejecutarlos para verificar tu diseño.
- Los componentes se pueden describir utilizando VHDL o Verilog. Para simular un componente definido en VHDL, es necesario instalar el simulador de código abierto VHDL ghdl, y para simular un componente definido en Verilog, se requiere el simulador de código abierto Icarus Verilog.
- Un circuito se puede exportar a VHDL o Verilog. También ofrece soporte directo para la placa BASYS3 y la placa TinyFPGA BX. Consulta la documentación para más detalles. La carpeta de ejemplos contiene una variante de la CPU de ejemplo que se ejecuta en una placa BASYS3.
- 
<img src="https://github.com/jorodriguez312/Lab1Digital/blob/main/Imagenes/ImagenesLab2/screenshot3.png" alt="Screenshot interfaz Digital. Imagen del repositorio de hneemann " style="width:50%;">

Repositorio de GitHub: Para obtener más detalles y acceder al proyecto "Digital", visita el [Repositorio Digital en GitHub](https://github.com/hneemann/Digital).


**7.Icarus Verilog:**
Verilog es un lenguague de descripción de hardware (HDL, por sus siglas en ingles hardware description language) utilizado para modelar sistemas electrónicos, incluyendo sistemas analógicos, digitales y de señal mixta. Se utiliza en el diseño, prueba e implementación de circuitos a diferentes niveles de abstracción. [x]
Icarus Verilog es una implementación del compilador del lenguaje de descripción de hardware Verilog que produce netlists en el formato deseado (EDIF). Admite las versiones de estándar de 1995, 2001 y 2005, partes de SystemVerilog y algunas extensiones. [x]
- Icarus Verilog se utiliza principalmente para el diseño y simulación de circuitos digitales. Los circuitos digitales son componentes electrónicos que operan en valores discretos, como 0 y 1.
- Es ampliamente utilizado para la simulación de circuitos digitales. Permite verificar el comportamiento de un diseño antes de la implementación física.
- proporciona una serie de herramientas que incluyen el compilador Verilog (iverilog), el simulador (vvp), y herramientas de visualización como GTKWave para analizar las formas de onda de la simulación.
- Se utiliza en combinación con otras herramientas de diseño de hardware, como herramientas de síntesis, para llevar a cabo proyectos completos de diseño de hardware.
### Sintaxis y lógica de verilog

1. **Módulo Verilog básico**:
   ```verilog
   module MiModulo(input wire a, b, output wire y);
       assign y = a & b; // Operación AND
   endmodule
   ```

2. **Asignación de valores**:
   ```verilog
   assign a = 1'b1; // Asignar un valor binario
   assign b = 4'd7; // Asignar un valor decimal de 7
   ```

3. **Operaciones lógicas y aritméticas**:
   ```verilog
   wire a, b, c;
   assign c = a & b; // AND lógico
   assign c = a | b; // OR lógico
   assign c = a ^ b; // XOR lógico
   assign c = a + b; // Suma
   assign c = a - b; // Resta
   ```

4. **Compuertas lógicas**:
   ```verilog
   wire a, b, c;
   assign a_and_b = a & b; // AND
   assign a_or_b = a | b; // OR
   assign not_a = ~a; // NOT
   ```

5. **Condiciones y asignación condicional**:
   ```verilog
   if (condición) begin
       // Código cuando la condición es verdadera
   end else begin
       // Código cuando la condición es falsa
   end
   ```

6. **Bifurcación de casos**:
   ```verilog
   case(sel)
       2'b00: // Cuando sel es 00
           // Código
       2'b01: // Cuando sel es 01
           // Código
       default: // Cuando no se cumple ninguna condición anterior
           // Código
   endcase
   ```

7. **Bucles**:
   ```verilog
   for (i = 0; i < 4; i = i + 1) begin
       // Código a repetir
   end
   ```

8. **Registros y registros de desplazamiento**:
   ```verilog
   reg [7:0] contador; // Registro de 8 bits
   always @(posedge clock) begin
       contador <= contador + 1; // Incremento en el flanco de subida del reloj
   end
   ```

9. **Sensibilidad a eventos**:
   ```verilog
   always @(a or b) begin
       // Código ejecutado cuando a o b cambian
   end
   ```

10. **Instancias de módulos**:
    ```verilog
    MiModulo instancia1 (.a(input_a), .b(input_b), .y(output_y));
    ```
### Simulación, síntesis y configuración
    make sim: Compila y ejecuta la simulación del diseño Verilog. Los archivos de código fuente se especifican en SRC_FILES, y el módulo principal se define en TOP_MODULE.

    make syn: Realiza la síntesis del diseño utilizando una herramienta como Yosys. Asegúrate de proporcionar el comando de síntesis adecuado en la sección correspondiente.

    make config: Este objetivo se utiliza para configurar cualquier otra acción que desees realizar en tu flujo de diseño. Agrega los comandos específicos que sean relevantes para tu proyecto.

    make clean: Limpia los archivos generados durante la simulación y la síntesis.
**8.Mapa de Karnaugh:**
El mapa de Karnaugh ofrece un método sistemático para simplificar expresiones booleanas y generar las expresiones más simples posibles, ya sea en forma de suma de productos o producto de sumas, conocidas como expresiones mínimas. La eficacia de esta simplificación algebraica depende de nuestra comprensión y aplicación de las leyes, reglas y teoremas del álgebra de Boole. Básicamente, el mapa de Karnaugh se presenta como una "receta" para lograr esta simplificación de manera efectiva.
A continuación se presenta un ejemplo de análisis por mapa de Karnaugh:

<img src="https://github.com/jorodriguez312/Lab1Digital/blob/main/Imagenes/ImagenesLab2/karnaugh_map_1-h.png" alt="Ejemplo mapa de Karnaugh" style="width:25%;">
<img src="https://github.com/jorodriguez312/Lab1Digital/blob/main/Imagenes/ImagenesLab2/karnaugh_map_2-h.png" alt="Ejemplo mapa de Karnaugh" style="width:25%;">
<img src="https://github.com/jorodriguez312/Lab1Digital/blob/main/Imagenes/ImagenesLab2/karnaugh_parameters-f3.png" alt="Ejemplo mapa de Karnaugh" style="width:25%;">
<img src="https://github.com/jorodriguez312/Lab1Digital/blob/main/Imagenes/ImagenesLab2/karnaugh_map_with_groupings-h.png" alt="Ejemplo mapa de Karnaugh" style="width:25%;">

El análisis del mapa de Karnaugh revela tres grupos de celdas con valores 1: rojo, verde y azul. Cada grupo representa una combinación de valores de parámetros. Luego, se procede a calcular la expresión final para cada grupo, considerando los parámetros que no cambian en función de las etiquetas binarias de filas y columnas. El grupo rojo no incluye los parámetros C y D, ya que cambian, pero incluye A y B que permanecen constantes en la misma fila. El grupo verde incluye A, pero no B, y C, pero no D, ya que cambian en diferentes columnas. El grupo azul incluye B, C y D, pero C se incluye con un operador NOT, ya que es 0 en lugar de 1. Estas expresiones finales describen relaciones lógicas basadas en las combinaciones de parámetros de las celdas con valor 1.
## Resultados-Simulaciones

### Simulaciòn Sumador completo en Digital:

![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/39b10bb7a1f3252aa9cf5383b1d20bcf2bb89eef/Imagenes/ImagenesLab2/sumador%20completo.png)
![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/d1ac4ceb6d17a3d52bb95d358162eddc74013463/Imagenes/ImagenesLab2/estructura%20sumador%20completo.png)

**Tabla de verdad**

![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/d1ac4ceb6d17a3d52bb95d358162eddc74013463/Imagenes/ImagenesLab2/tabla%20sumador%20completo.png)

**Expresiòn algebraica**
![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/d1ac4ceb6d17a3d52bb95d358162eddc74013463/Imagenes/ImagenesLab2/ecuaci%C3%B2n%20sumador%20completo.png)

**Mapa de Karnaugh**

![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/d1ac4ceb6d17a3d52bb95d358162eddc74013463/Imagenes/ImagenesLab2/karnaugh%20sumador%20completo%20salida.png)
![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/d1ac4ceb6d17a3d52bb95d358162eddc74013463/Imagenes/ImagenesLab2/karnaugh%20sumador%20completo%20co.png)

**Test Bench y simulaciòn**
![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/7a271fa3dcbe70e484994ab6a8ff3a21cc8514fd/Imagenes/ImagenesLab2/simulacion%20sumador%20completo%20imagenes.png)
![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/7a271fa3dcbe70e484994ab6a8ff3a21cc8514fd/Imagenes/ImagenesLab2/test%20bench%20sumador%20completo.png)

El sumador completo se compone de dos sumadores medios los cuàles tienen las siguientes caracterìsticas:

#### Sumador medio:

**Tabla de verdad**

![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/d1ac4ceb6d17a3d52bb95d358162eddc74013463/Imagenes/ImagenesLab2/tabla%20sumador%20medio.png)

**Expresiòn algebraica**

![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/d1ac4ceb6d17a3d52bb95d358162eddc74013463/Imagenes/ImagenesLab2/algebra%20sumador%20medio.png)

**Mapa de Karnaugh**

![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/d1ac4ceb6d17a3d52bb95d358162eddc74013463/Imagenes/ImagenesLab2/karnaugh%20salida%20sumador%20medio.png)
![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/d1ac4ceb6d17a3d52bb95d358162eddc74013463/Imagenes/ImagenesLab2/carry%20karnaugh%20sumador%20medio.png)

### Simulaciòn Sumador completo en Iverilog y gtkwave:
El código Verilog proporcionado es una descripción de un sumador completo generado a partir de la herramienta "Digital". El sumador completo consta de tres módulos anidados: halfAdder, fullAdder y top. Cada módulo desempeña un papel específico en la operación de suma:

    El módulo halfAdder representa un semisumador que toma dos entradas, x e y, y produce una suma (s) y un acarreo (c) como salida.

    El módulo fullAdder es un sumador completo que utiliza dos instancias del halfAdder para calcular la suma y el acarreo intermedio. Luego, combina estos resultados con un acarreo de entrada (ci) para generar la suma final (s) y el acarreo de salida (co).

    El módulo principal top instancia un fullAdder y conecta sus entradas y salidas para realizar la suma de dos números con un acarreo de entrada.

```verilog
/*

    Generated by Digital. Don't modify this file!
    Any changes will be lost if this file is regenerated.
    */

module halfAdder (
input x,
input y,
output s,
output c
);
assign s = (x ^ y);
assign c = (x & y);
endmodule

module fullAdder (
input b,
input a,
input ci,
output co,
output s
);
wire s0;
wire s1;
wire s2;
halfAdder halfAdder_i0 (
.x( a ),
.y( b ),
.s( s0 ),
.c( s1 )
);
halfAdder halfAdder_i1 (
.x( ci ),
.y( s0 ),
.s( s ),
.c( s2 )
);
assign co = (s2 | s1);
endmodule

module top (
input b,
input a,
input ci,
output co,
output s
);
fullAdder fullAdder_i0 (
.b( b ),
.a( a ),
.ci( ci ),
.co( co ),
.s( s )
);
endmodule
```
Para el testbench se tiene:

Define señales de entrada (reg) y salida (wire) para el diseño bajo prueba, conectando las señales de entrada y salida.Define patrones de prueba y verifica la salida del diseño con respecto a estos patrones.

```
//  A testbench for top_testbech_tb
`timescale 1us/1ns

module top_testbech_tb;
    reg b;
    reg a;
    reg ci;
    wire co;
    wire s;

  top top0 (
    .b(b),
    .a(a),
    .ci(ci),
    .co(co),
    .s(s)
  );

    reg [4:0] patterns[0:7];
    integer i;

    initial begin
      patterns[0] = 5'b0_0_0_0_0;
      patterns[1] = 5'b0_0_1_0_1;
      patterns[2] = 5'b0_1_0_0_1;
      patterns[3] = 5'b0_1_1_1_0;
      patterns[4] = 5'b1_0_0_0_1;
      patterns[5] = 5'b1_0_1_1_0;
      patterns[6] = 5'b1_1_0_1_0;
      patterns[7] = 5'b1_1_1_1_1;

      for (i = 0; i < 8; i = i + 1)
      begin
        a = patterns[i][4];
        b = patterns[i][3];
        ci = patterns[i][2];
        #10;
        if (patterns[i][1] !== 1'hx)
        begin
          if (co !== patterns[i][1])
          begin
            $display("%d:co: (assertion error). Expected %h, found %h", i, patterns[i][1], co);
            $finish;
          end
        end
        if (patterns[i][0] !== 1'hx)
        begin
          if (s !== patterns[i][0])
          begin
            $display("%d:s: (assertion error). Expected %h, found %h", i, patterns[i][0], s);
            $finish;
          end
        end
      end

      $display("All tests passed.");
    end
    endmodule
```

### Simulaciòn Sumador-restador en Digital.

![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/b253c31bb0482e80786c7487c64d6a362762de44/Imagenes/ImagenesLab2/circuito%20sumador%20restador.png)

**Tabla de verdad**

![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/b253c31bb0482e80786c7487c64d6a362762de44/Imagenes/ImagenesLab2/tabla%20sumador%20restador.png)

**Expresiòn algebraica**

![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/b253c31bb0482e80786c7487c64d6a362762de44/Imagenes/ImagenesLab2/ecuaciones%20sumador-restador.png)

**Mapa de Karnaugh**

**Cout/Bout:**

![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/b253c31bb0482e80786c7487c64d6a362762de44/Imagenes/ImagenesLab2/karnaugh%20cout%20boutt.png)

**Suma/resta:**

![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/b253c31bb0482e80786c7487c64d6a362762de44/Imagenes/ImagenesLab2/karnaugh%20s-r.png)

**Test Bench y simulación**

![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/b253c31bb0482e80786c7487c64d6a362762de44/Imagenes/ImagenesLab2/prueba%20sumador%20restador.png)


### Simulaciòn Sumador-restador en Iverilog.

**Test Bench**

![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/92dbf7478e377233ce2153a12ee4c8de42442cd3/Imagenes/ImagenesLab2/tb%20sumador%20completo.png)

**rtl**
**Sumador medio**
![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/94f1682385c0fdad5f6f20d495f3056257e98282/Imagenes/ImagenesLab2/halfadder.png)

**Sumador completo**
![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/5d8918764eadc733274c9a5e26c8bd9018f1c712/Imagenes/ImagenesLab2/fulladder.png)

### Simulaciòn Sumador-restador de 4 bits en digital.

![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/b1f966186a6e0c84be6eaff35447772cf7458ad0/Imagenes/ImagenesLab2/sumador%20restador%204%20bits.png)

**Tabla de verdad**

![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/b1f966186a6e0c84be6eaff35447772cf7458ad0/Imagenes/ImagenesLab2/tabla%204%20bits%201.png)
![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/b1f966186a6e0c84be6eaff35447772cf7458ad0/Imagenes/ImagenesLab2/tabla%204%20bits%202.png)
![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/b1f966186a6e0c84be6eaff35447772cf7458ad0/Imagenes/ImagenesLab2/tabla%204%20bits%203.png)
![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/b1f966186a6e0c84be6eaff35447772cf7458ad0/Imagenes/ImagenesLab2/tabla%204%20bits%204.png)
![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/b1f966186a6e0c84be6eaff35447772cf7458ad0/Imagenes/ImagenesLab2/tabla%204%20bits%205.png)
![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/b1f966186a6e0c84be6eaff35447772cf7458ad0/Imagenes/ImagenesLab2/tabla%204%20bits%206.png)
![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/b1f966186a6e0c84be6eaff35447772cf7458ad0/Imagenes/ImagenesLab2/tabla%204%20bits%207.png)
![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/b1f966186a6e0c84be6eaff35447772cf7458ad0/Imagenes/ImagenesLab2/tabla%204%20bits%208.png)
![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/b1f966186a6e0c84be6eaff35447772cf7458ad0/Imagenes/ImagenesLab2/tabla%204%20bits%209.png)
![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/b1f966186a6e0c84be6eaff35447772cf7458ad0/Imagenes/ImagenesLab2/tabla%204%20bits%2010.png)
![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/b1f966186a6e0c84be6eaff35447772cf7458ad0/Imagenes/ImagenesLab2/tabla%204%20bits%2011.png)
![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/b1f966186a6e0c84be6eaff35447772cf7458ad0/Imagenes/ImagenesLab2/tabla%204%20bits%2012.png)
![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/b1f966186a6e0c84be6eaff35447772cf7458ad0/Imagenes/ImagenesLab2/tabla%204%20bits%2013.png)

**Expresiòn algebraica**

[Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/b1f966186a6e0c84be6eaff35447772cf7458ad0/Imagenes/ImagenesLab2/ecuacion%204%20bits%201.png)
![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/b1f966186a6e0c84be6eaff35447772cf7458ad0/Imagenes/ImagenesLab2/ecuacion%204%20bits%202.png)
![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/b1f966186a6e0c84be6eaff35447772cf7458ad0/Imagenes/ImagenesLab2/ecuaciones%204%20bits%203.png)
![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/b1f966186a6e0c84be6eaff35447772cf7458ad0/Imagenes/ImagenesLab2/ecuacion%204%20bits%204.pn)
![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/b1f966186a6e0c84be6eaff35447772cf7458ad0/Imagenes/ImagenesLab2/ecuaciones%204%20bits%205.png)
![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/b1f966186a6e0c84be6eaff35447772cf7458ad0/Imagenes/ImagenesLab2/ecuacion%204%20bits%206.png)
![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/b1f966186a6e0c84be6eaff35447772cf7458ad0/Imagenes/ImagenesLab2/ecuacion%204%20bits%207.png)
![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/b1f966186a6e0c84be6eaff35447772cf7458ad0/Imagenes/ImagenesLab2/ecuacion%204%20bits%208.png)
![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/b1f966186a6e0c84be6eaff35447772cf7458ad0/Imagenes/ImagenesLab2/ecuacion%204%20bits%209.png)

**Test Bench y simulación**

![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/b1f966186a6e0c84be6eaff35447772cf7458ad0/Imagenes/ImagenesLab2/simulacion%204%20bits.png)

### Simulaciòn Sumador-restador de 4 bits en iverilog.

**Archivo .v**

![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/5d8918764eadc733274c9a5e26c8bd9018f1c712/Imagenes/ImagenesLab2/testbench%201.png)
![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/5d8918764eadc733274c9a5e26c8bd9018f1c712/Imagenes/ImagenesLab2/testbench%202.png)
![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/5d8918764eadc733274c9a5e26c8bd9018f1c712/Imagenes/ImagenesLab2/testbench%203.png)

**Testbench**

![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/5d8918764eadc733274c9a5e26c8bd9018f1c712/Imagenes/ImagenesLab2/tb%204%20bits.png)
![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/5d8918764eadc733274c9a5e26c8bd9018f1c712/Imagenes/ImagenesLab2/tb%204%20bits%201.png)


## Análisis de resultados.
### Sumador Completo

La simulación del sumador completo se realizó utilizando Digital. A partir de la tabla de verdad y las ecuaciones, se obtuvieron las siguientes expresiones:

    Para el bit de acarreo de salida (Cout):
    Cout=A⋅BCout​=A⋅B

    Para la suma (Sum):
    Sum=A⊕BSum=A⊕B
### Sumador Medio 
El sumador medio se encuentra dentro del sumador completo y también se simuló utilizando Digital. Se obtuvieron las siguientes expresiones:

    Para el bit de acarreo de salida (Cout):
    Cout=A⋅BCout​=A⋅B

    Para la suma (Sum):
    Sum=A⊕BSum=A⊕B
### Sumador Restador

El circuito de sumador-restador se simuló utilizando Digital. Se obtuvieron las siguientes expresiones:

    Para el bit de acarreo de salida (Cout/Bout):
    Cout/Bout=(A⋅B)+(A⋅Cin)+(B⋅Cin)Cout/Bout=(A⋅B)+(A⋅Cin)+(B⋅Cin)

    Para la suma/resta:
    Suma/Resta=A⊕B⊕CinSuma/Resta=A⊕B⊕Cin

Los resultados muestran que el circuito es capaz de realizar tanto sumas como restas, y las expresiones son coherentes con la lógica de operaciones aritméticas.
Al realizar las simulaciones en las herramientas propuestas se observa que los valores obtenidos son coherentes con la teoría usada y además pueden presentar caminos diferentes para la resolución de un sistema u operación como en el caso del sumador restador de 3 bits que en la teoría se hace con compuertas AND Y XOR pero digital presenta otro método sin el uso de XOR. Adicionalmente digital brinda posiblidades de solución de los sistemas para diferentes entradas como por ejemplo si se tiene la tabla o el circuito de una operación, independientemente de cual se suiministre al simulador se podrán usar los mismos métodos de análisis.

Adicionalmente en casos como el sumador restador de 4 bits es conveniente usar estas herramientas de simulación debido al volumen de datos con los que trabaja, aunque esto también puede afectar los resultados ya que en el caso de digital no se pudo realizar el análisis por mapa de Karnaugh debido a la cantidad de datos del circuito.

## Conclusiones
- Se demostró que las herramientas de simulación de código abierto, como Digital, Icarus Verilog y GTKWave, son efectivas para el diseño y análisis de circuitos digitales. Estas herramientas brindan la capacidad de verificar el comportamiento de los diseños antes de la implementación física, lo que es esencial en el proceso de desarrollo de sistemas digitales.
- Verilog es una herramienta esencial para describir la funcionalidad de los circuitos y verificar su comportamiento bajo diferentes condiciones. El uso de módulos y testbenches permite una metodología estructurada y eficiente para el diseño de sistemas digitales
- Digital es una herramienta bastante versatil y facil de usar para diseña sistemas digitales ya genera código VHDL y Verilog, mapas de Karnaugh, tablas de verdad, análisis de circuitos, algebra boolena y sintesis agregando un valor significativo, ya que facilita la implementación de diseños en hardware real.
- GTKWave es una herramienta esencial para la visualización y análisis de señales digitales en circuitos electrónicos. Su capacidad para representar de manera efectiva los valores lógicos 1 y 0, así como las transiciones entre ellos, brinda a los diseñadores y analistas una visión profunda de cómo funcionan los circuitos digitales.
- Las herramientas de simulación son de gran utilidad para trabajar sistemas muy complejos debido a su capacidad de trabajo de grandes cantidades de datos y al diseño modular de los circuitos.
## Referencias 

- https://ieeexplore.ieee.org/document/1620780
- https://steveicarus.github.io/iverilog/index.html
- https://www.techtarget.com/whatis/definition/Karnaugh-map-K-map
- [Repositorio Digital en GitHub](https://github.com/hneemann/Digital).
- M.Morris. Diseño digital tercera edición.2003.
- Floyd.T. Fundamentos de sistemas digitales novena edición.2006.
