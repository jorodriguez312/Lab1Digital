# SIMULACIÒN DE SISTEMAS DIGITALES CON HERRAMIENTAS OPEN SOURCE.

## Autores
- _Santiago Mariño Cortès_
- _Jonathan David Rodrìguez Larrota_
- _Juan Pablo Àvila Rodrìguez_

## Descripcion

El objetivo de esta pràctica es explorar herramientas de simulaciòn de tipo open source como digital, iverilog, y gtkwave para implementar el diseño de circuitos digitales como sumadores completos y sumadores-restadores, con dichas herramientas digitales se va a realizar un anàlisis de caracterìsticas de cada circuito como las tablas de verdad , mapas de Karnaugh, ecuaciones, entre otros mètodos.

## Contenido
1. [Autores](#autores)
2. [Descripción](#descripción)
3. [Marco Teórico](#marcoteórico)
4. [Materiales](#materiales)
5. [Resultados-simulaciones](#resultados-simulaciones)
6. [Anàlisis de resultados](#Anàlisisderesultados)
7. [Conclusiones](#conclusiones)
8. [Referecicas bibliogràficas.](#Referenciasbibliogràficas)


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

La ecuación para la suma %\sum% en función de los bits de entrada A y B es:
$\text{Sum} = A \oplus B$

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
La operación de números binarios se puede realizar como una suma de complementos, en el caso de A-B con el complemento de B; para implementar esto se debe obtener el complemento a uno, que se realiza mediante inversores y la suma de un 1 que se implementa con el carry de entrada, a continuación se muestran las tablas para un restador medio (resta sin carry de entrada) y un restador completo (resta con carry entrada). 

| A | B | Borrow | Difference |
|---|---|--------|------------|
| 0 | 0 | 0      | 0          |
| 0 | 1 | 1      | 1          |
| 1 | 0 | 0      | 1          |
| 1 | 1 | 0      | 0          |

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


**5.Sumador-Restador:**
Las operaciones de suma y resta (completas) mencionadas previamente se pueden implementar en un sólo circuito, en este caso se va a aimplementar un sumador de 4 números binarios y se usará una entrada adicional para denominada C que será usada para seleccionar la operación que se va a realizar, para la suma esta variable tomará el valor de 0 y para la resta el valor de 1.

| A1 | A0 | B1 | B0 | Cin | Sum1 | Sum0 | Cout |
|----|----|----|----|-----|------|------|------|
| 0  | 0  | 0  | 0  | 0   | 0    | 0    | 0    |
| 0  | 0  | 0  | 0  | 1   | 1    | 1    | 0    |
| 0  | 0  | 0  | 1  | 0   | 0    | 1    | 0    |
| 0  | 0  | 0  | 1  | 1   | 1    | 0    | 1    |
| 0  | 0  | 1  | 0  | 0   | 0    | 1    | 0    |
| 0  | 0  | 1  | 0  | 1   | 1    | 0    | 1    |
| 0  | 0  | 1  | 1  | 0   | 0    | 0    | 1    |
| 0  | 0  | 1  | 1  | 1   | 1    | 1    | 1    |
| 0  | 1  | 0  | 0  | 0   | 0    | 1    | 0    |
| 0  | 1  | 0  | 0  | 1   | 1    | 0    | 1    |
| 0  | 1  | 0  | 1  | 0   | 0    | 0    | 1    |
| 0  | 1  | 0  | 1  | 1   | 1    | 1    | 1    |
| 0  | 1  | 1  | 0  | 0   |     |     |     |
| 0  | 1  | 1  | 0  | 1   |     |     |     |
| 0  | 1  | 1  | 1  | 0   |     |     |     |
| 0  | 1  | 1  | 1  | 1   |     |     |     |
| 1  | 0  | 0  | 0  | 0   |     |     |     |
| 1  | 0  | 0  | 0  | 1   |     |     |     |
| 1  | 0  | 0  | 1  | 0   |     |     |     |
| 1  | 0  | 0  | 1  | 1   |     |     |     |
| 1  | 0  | 1  | 0  | 0   |     |     |     |
| 1  | 0  | 1  | 0  | 1   |     |     |     |
| 1  | 0  | 1  | 1  | 0   |     |     |     |
| 1  | 0  | 1  | 1  | 1   |     |     |     |
| 1  | 1  | 0  | 0  | 0   |     |     |     |
| 1  | 1  | 0  | 0  | 1   |     |     |     |
| 1  | 1  | 0  | 1  | 0   |     |     |     |
| 1  | 1  | 0  | 1  | 1   |     |     |     |
| 1  | 1  | 1  | 0  | 0   |     |     |     |
| 1  | 1  | 1  | 0  | 1   |     |     |     |
| 1  | 1  | 1  | 1  | 0   |     |     |     |
| 1  | 0  | 1  | 1  | 1   |     |     |     |


**7.Mapa de Karnaugh:**
Método sistemático que consiste en un diragram hecho de cuadrados, cada uno de los cuáles representa un minitérmino de una función dada. Los miniterminos se usan para representar cualquier función booleana mediante la suma de estos. Este método se usa para simplificar expresiones booleanas mediante sumas de productos o productos de sumas los cuales se refieren a los minitérminos de la expresión, dicha simplificación se realiza mediante el uso de las leyes y teoremas fundamentales del álgebra de boole.

## Materiales

**1.Digital simulador:**

**2.Icarus Verilog:**

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

### Simulaciòn sumador completo Digital, Iverilog y gtkwave:

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

**Test Bench y simulaciòn**

![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/b253c31bb0482e80786c7487c64d6a362762de44/Imagenes/ImagenesLab2/prueba%20sumador%20restador.png)




## Anàlisis de resultados.

## Conclusiones.

## Referencias Bibliogràficos.
