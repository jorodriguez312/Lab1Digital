# COMPARACIÓN DE TECNOLOGÍA

## Descripción

Este proyecto tiene como objetivo principal la simulación y documentación detallada de las características de compuertas negadoras utilizando dos tecnologías distintas: la tecnología TTL (Transistor-Transistor Logic) representada por la compuerta 74LS04, y la tecnología CMOS (Complementary Metal-Oxide-Semiconductor) representada por la compuerta CD4069. El enfoque central radica en analizar y comparar estas tecnologías en diferentes contextos aplicaciones.

## Autores

- _Juan Pablo Ávila Suárez_
- _Jonathan David Rodríguez Larrotta_
- _Santiago Mariño Cortes_

## Marco Teórico.
Por supuesto, aquí tienes un breve marco teórico sobre compuertas lógicas:

**Compuertas Lógicas: Fundamentos y Funcionamiento**

Las compuertas lógicas son elementos fundamentales en la electrónica digital y la teoría de circuitos. Estas compuertas son dispositivos electrónicos que realizan operaciones lógicas básicas, como AND, OR, NOT (NO), XOR, NAND y NOR. Estas operaciones son esenciales para el procesamiento de información en sistemas digitales, como computadoras y dispositivos electrónicos.

**1. Álgebra Booleana:**

Las compuertas lógicas están basadas en la álgebra booleana, un sistema matemático que manipula variables binarias (1 y 0) y opera con operaciones lógicas fundamentales como AND, OR y NOT. Esta álgebra fue desarrollada por George Boole en el siglo XIX y proporciona la base teórica para el diseño de circuitos digitales y la representación de sistemas de lógica.

**2. Tipos de Compuertas Lógicas:**

Existen varios tipos de compuertas lógicas, cada una con una función específica:

- **Compuerta AND:** Produce una salida lógica 1 (verdadero) solo cuando todas sus entradas son 1.

- **Compuerta OR:** Produce una salida lógica 1 si al menos una de sus entradas es 1.

- **Compuerta NOT (NO):** Invierte el valor de su entrada; es decir, convierte un 1 en un 0 y viceversa.

- **Compuerta XOR (OR exclusiva):** Produce una salida lógica 1 cuando solo una de sus entradas es 1, pero no ambas.

- **Compuerta NAND:** Es una compuerta AND seguida por una compuerta NOT. Produce una salida inversa a la de una compuerta AND.

- **Compuerta NOR:** Es una compuerta OR seguida por una compuerta NOT. Produce una salida inversa a la de una compuerta OR.

**3. Representación y Símbolos:**

Cada tipo de compuerta lógica se representa con un símbolo específico en los diagramas de circuitos. Por ejemplo, una compuerta AND se representa con un símbolo que tiene dos entradas y una salida, mientras que una compuerta NOT se representa con un círculo que tiene una entrada y una salida.

**4. Circuitos Combinacionales:**

Los circuitos combinacionales están formados por una combinación de compuertas lógicas conectadas de manera que generan una salida basada únicamente en los valores presentes en las entradas en ese momento. Estos circuitos no tienen memoria interna y su salida depende exclusivamente de la configuración actual de las entradas.

- **Documentación**

A continuación se presenta una imágen en la que se detalla el circuito equivalente de las compuertas 74LS04 Y CD4069.

- _**Datasheet 74LS04.**_

![Imagen](https://github.com/jorodriguez312/Digital/blob/c70a2b33f4d06ff5af6019a806b3881cfde2d699/Imagenes/diagrama%20de%20conexion%20y%20tabla%2074L.png)
![Imagen](https://github.com/jorodriguez312/Digital/blob/c70a2b33f4d06ff5af6019a806b3881cfde2d699/Imagenes/data%2001%2074L.png)
![Imagen](https://github.com/jorodriguez312/Digital/blob/c70a2b33f4d06ff5af6019a806b3881cfde2d699/Imagenes/data%2002%2074L.png)

- _Circuito interno 74LS04:_

![Imagen](https://github.com/jorodriguez312/Digital/blob/main/Imagenes/Imagen1.jpeg)

- _**Datasheet CMOS CD4069.**_

  ![Imagen](https://github.com/jorodriguez312/Digital/blob/c70a2b33f4d06ff5af6019a806b3881cfde2d699/Imagenes/diagrama%20CD4069.png)
  ![Imagen](https://github.com/jorodriguez312/Digital/blob/c70a2b33f4d06ff5af6019a806b3881cfde2d699/Imagenes/data%2001%20CD40.png)
  ![Imagen](https://github.com/jorodriguez312/Digital/blob/c70a2b33f4d06ff5af6019a806b3881cfde2d699/Imagenes/data%2002%20CD40.png)
  ![Imagen](https://github.com/jorodriguez312/Digital/blob/c70a2b33f4d06ff5af6019a806b3881cfde2d699/Imagenes/data%2003%20CD40.png)
  ![Imagen](https://github.com/jorodriguez312/Digital/blob/c70a2b33f4d06ff5af6019a806b3881cfde2d699/Imagenes/data%2004%20CD40.png)
  ![Imagen](https://github.com/jorodriguez312/Digital/blob/c70a2b33f4d06ff5af6019a806b3881cfde2d699/Imagenes/data%2005%20CD40.png)

- _Circuito interno CD4069:_

![Imagen](https://github.com/jorodriguez312/Digital/blob/47baf131a55bd951443e7ea5dbc49521023abd5f/Imagenes/circuito%20CD4069.png)

 Con la anterior información se construyó la siguiente tabla:
| Característica   | 74LS04         | CD4069         |
|------------------|----------------|----------------|
| Tipo de compuerta| NOT (NO)       | NOT (NO)       |
| Tensión de alimentación mínima | 4,75 V       | 3 V       | 
| Tensión de alimentación máxima | 5,25 V       | 18 V       | 
| Corriente de salida | 16 mA       | 6,5 mA V       |
| Temperatura de funcionamiento mínima | 0° C       | -55° C       | 
| Temperatura de funcionamiento máxima | 70° C       | 125° C       |  
| Número de puertas| 6 por chip     | 6 por chip     |
| Consumo de energía| Moderado       | Bajo           |
| Velocidad        | Alta           | Media          |
| Tiempo de retardo| Bajo           | Moderado       |
| Tolerancia al voltaje| Moderada    | Alta          |

## Simulaciones


## Aplicación

A continuación se presentan algunas aplicaciones básicas para cada compuerta.

Circuito propuesto para la compuerta 74LS04.

- ![Imagen](https://github.com/jorodriguez312/Digital/blob/main/Imagenes/CircuitoTTL.png)
- ![Imagen](https://github.com/jorodriguez312/Digital/blob/main/Imagenes/CircuitoTTL1.png)

Circuito propuesto para la compuerta CD4069.

![Imagen](https://github.com/jorodriguez312/Digital/blob/main/Imagenes/CircuitoCMOS.png)



