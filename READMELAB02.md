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

El sumador medio o semi-sumador es un circuito que, usando las reglas bàsicas de la suma binaria, admite dos digitos binarios en sus entradas y genera dos digitos binarios en sus salidas, siendo estos un bit de suma y un bit de acarreo. A continuaciòn se muestra su tabla de verdad.

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

La diferencia entre el sumador medio y el sumador completo, es que este último admite un acarreo de entrada $C_{in}$. Para la impementación de %C_{in}% se agregó otra compuerta OR-exlusiva, de tal manera que la ecuación de para la salida es la siguiente:

$$\sum=(A \oplus B) \oplus C$$

La tabla de verdad de esta función es la siguiente:

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

El diagrama lógico es el siguiente:

<img src="https://github.com/jorodriguez312/Lab1Digital/blob/main/Imagenes/ImagenesLab2/sumadorcompleto.png" alt="Diagrma lógico del sumador completo" style="width:50%;">


**3.Restador medio:**

El medio restador, igual que 

| A | B | Borrow | Difference |
|---|---|--------|------------|
| 0 | 0 | 0      | 0          |
| 0 | 1 | 1      | 1          |
| 1 | 0 | 0      | 1          |
| 1 | 1 | 0      | 0          |


**4.Restador completo:**

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



**6.Digital simulador:**

**7.Icarus Verilog:**

**8.Mapa de Karnaugh:**
El mapa de Karnaugh ofrece un método sistemático para simplificar expresiones booleanas y generar las expresiones más simples posibles, ya sea en forma de suma de productos o producto de sumas, conocidas como expresiones mínimas. La eficacia de esta simplificación algebraica depende de nuestra comprensión y aplicación de las leyes, reglas y teoremas del álgebra de Boole. Básicamente, el mapa de Karnaugh se presenta como una "receta" para lograr esta simplificación de manera efectiva.
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
