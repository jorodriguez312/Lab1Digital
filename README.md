# COMPARACIÓN DE TECNOLOGÍA

## Autores

- _Juan Pablo Ávila Suárez_
- _Jonathan David Rodríguez Larrotta_
- _Santiago Mariño Cortés_

## Descripción

Este proyecto tiene como objetivo principal la simulación y documentación detallada de las características de compuertas negadoras utilizando dos tecnologías distintas: la tecnología TTL (Transistor-Transistor Logic) representada por la compuerta 74LS04, y la tecnología CMOS (Complementary Metal-Oxide-Semiconductor) representada por la compuerta CD4069. El enfoque central radica en analizar y comparar estas tecnologías en diferentes contextos aplicaciones.

## Marco Teórico.

**1. Álgebra Booleana:**

Las compuertas lógicas están basadas en la álgebra booleana, un sistema matemático que manipula variables binarias (1 y 0) y opera con operaciones lógicas fundamentales como AND, OR y NOT. Esta álgebra fue desarrollada por George Boole en el siglo XIX y proporciona la base teórica para el diseño de circuitos digitales y la representación de sistemas de lógica.

**2. Compuertas Lógicas Básicas: Fundamentos y Funcionamiento**

Las compuertas lógicas los elementos digitales más básicos, los cuales tienen la función de permitir o denegar el flujo de información digital, por esto el nombre de compuerta. Las compuertas lógicas pueden tener una o más entradas que se transformarán en una señal de salida que está en función de la corriente de entrada. Dichas entradas y salidas se expresan como valores discretos de "0" y "1" aunque pueden representar efectos contínuos de la naturaleza. Las compuertas lógicas más importantes son:

- **Compuerta AND:** Produce una salida lógica 1 (verdadero) solo cuando todas sus entradas son 1, a esto se le conoce como multiplicación lógica.
  
  ![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/b618196c0457b14120864c417ca331d5584c78c5/Imagenes/And.png)

  ![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/b618196c0457b14120864c417ca331d5584c78c5/Imagenes/tabla%20and.png)

  
- **Compuerta OR:** Compuerta con dos o más entradas que tiene un nivel alto o 1 lógico a la salida cuándo cualquiera de sus entradas tiene también un nivel alto, a esta operación se le conoce como suma lógica.

  ![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/b618196c0457b14120864c417ca331d5584c78c5/Imagenes/OR.png)

  ![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/b618196c0457b14120864c417ca331d5584c78c5/Imagenes/tabla%20or.png)

- **Compuerta NOT (NO):** Conocida como inversor o complementador, cambia el nivel lógico de su entrada por otro nivel, para los bits cambia el 1 a 0 y viceversa.

  ![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/b618196c0457b14120864c417ca331d5584c78c5/Imagenes/Not.png)

  ![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/b618196c0457b14120864c417ca331d5584c78c5/Imagenes/tabla%20not.png)

**3. Transistor**.

Es un dispositivo semiconductor de tres terminales que se puede usar para amplificar o para lógica digital, este dispositivo se contola mediante la aplicación en dos de sus terminales para controlar la corriente que fluye en su tercera terminal. Los dos tipos de transistores que existen son:

- **Transistores BJT.**
  Fué el primer tipo de transistor que se inventó, y funciona con una unión bipolar como su nombre lo indica. Puede ser de tipo npn si la región del emisor y la del colector son de tipo n y la de la base tipo p. Por el contrario si el emisor y el colector son de tipo p y la base de tipo n será de tipo pnp. Para aplicacipnes en circuitos lógicos se debe utilizar este transistor en la región de corte y la de saturación que dependen de la polarización que se aplique al transistor; las uniones emisor-base en el modo de corte deben estar en reversa como la colector-base, mientras que para la región de saturación ambas uniones deben estar polarizaddas directamente.
  
  ![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/656e6909a79fa5ab6011277c1a7ffbc6bec903a1/Imagenes/estructura%20BJT.png)
  
  ![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/656e6909a79fa5ab6011277c1a7ffbc6bec903a1/Imagenes/BJT.png)
  
- **Transistores MOSFET**.
  Reciben este nombre debido a que funcionan con campos eléctricos y es el tipo de transistor más usado. Pueden ser NMOS si el canal donde fluye la corriente del drain source tiene una region inducida n, se forman en un sustrato tipo P. También pueden ser PMOS si el canal inducido es tipo P y el sustrato tipo N, ademas también existe un tercer tipo que se compone de transistores NMOS y PMOS. Los MOSFET se pueden usar como interruptores cuando se encuentran en la región de corte VGS<VT.


  ![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/656e6909a79fa5ab6011277c1a7ffbc6bec903a1/Imagenes/estructura%20mos.png)
  
  ![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/656e6909a79fa5ab6011277c1a7ffbc6bec903a1/Imagenes/mos.png)

  ![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/656e6909a79fa5ab6011277c1a7ffbc6bec903a1/Imagenes/grafica%20mos.png)

  

**4. Circuitos integrados(CI).**
Los circuitos integrados son cristales de silicio que se denominan chips y contienen componentes para construir compuertas digitales, las cuales se interconectan dentro del chip. El montaje del chip es en un recipiente de cerámica o plástico y las conexiones son soldadadas en terminales externas, la cantidad de terminales puede ir de menos de 10 a miles, y de acuerdo a eso se pueden clasificar en:

- **Dispositivos de integración a pequeña escala (SSI).** El número de compuertas de es menor a 10 y está limitado por la cantidad de terminales que tiene el circuito integrado.

-  **Dispositivos de integración a mediana escala(MSI).** La compuertas por paquete son entre 10 y 1000 y se usan en funciones digitales específicas.

-  **Dispositivos de integración a gran escala(LSI).** Están compuestos por miles de compuerta e incluyen sistemas digitales como procesadores, chips de memoria y dispositivos de lógica programable.
-  **Dispositivos de integración a muy grande escala(VLSI)** Contienen cientos de miles de compuertas y como ejemplo están las grandes matrices de memoria y microprocesadores complejos.

-  **5. Familias lógicas.** Los circuitos integrados también se pueden clasificar por la tecnología específica de circuitos que lo componen, y es aquí donde entran las familias lógicas, entre las cuáles se encuentran: TTL lógica transistor-transistor, ECL lógica acoplada por emisor, MOS metal-óxido-semiconductor, CMOS meta-óxido-semiconductor complementario.

-  **Caracteísticas de las familias lógicas:**

- **Fan-out:** Se define como el número de cargas estándar que se le pueden conectar a la salida de la compuerta básica de la familia sin que afecte su funcionamiento. La carga básica se refiere a la cantidad de corriente que requiere en una de sus entradas otra compuerta de la misma familia.

-  **Fan-in:** Número de entradas que tiene una compuerta.

-  **Disipación de potencia:** Energía consumida por una compuerta.

-  **Retardo de propagación:** Tiempo medio de transicion que se tarda la señal en transformar la entrada en la salida, se relaciona inversamente a la velocidad de de operación.

-  **Margen de ruido:** Tensión externa máxima de ruido que se le puede añadir a una señal de entrada sin que se exceda el margen de "0" lógico o de "1" lógico.+
  
**5.1 TLL:** Son circuitos integrados los cuales integran una Lógica Transistor-Transistor de ahí su nombre. Fueron una evolución de las tecnologias RTL(Lógica Transistor-Resistencia) y de la DTL (Lógica Transistor-Diodo). Se caracterizan porque usan transistores BJT en sus circuitos y se identifican porque su identificación comienza con el número 74; también se pueden clasificar por el producto rapidez-potencia que se mide en pJ, este producto también se puede entender como el tiempo de retardo por la disipación de potencia y según este parámetro se tienen las siguientes circuitos TTL:

- **Estandar 74:** Fue la primera compuerta de tipo TTL, si se disminuyen los valores de las resistencias del circuito se puede obtener un menor tiempo de retardo pero al costo de un consumo mayor de potencia debido a que las resistencias consumen más corriente.

- **Baja potencia 74L:** En este tipo de compuerta las resistencias tienen valores altos para que el consumo de potencia sea menor, pero lo que cause un tiempo de retardo mayor.

- **Alta velocidad 74H:** Al contrario del tipo de baja de potencia, esta compuerta usa valores bajos de resistencias para obtener una velocidad mayor tiempo.

- **TTL Schottky 74S:** Usa la tecnología Schottky que consiste en la unión de un metal y un semiconductor para formar transistores, las ventajas que trajo esta tecnlogía es eliminar el retardo de tiempo de almacenamiento lo que impide que el transistor entre en saturación, lo que genera un aumento en la rapidez sin generar un gran aumento en la potencia consumida.

- **TTL Schottky 74LS:** funciona de forma similar que la Schottky pero sacrificando un poco la rapidez para obtener un consumo menor de energía (apróximadamente una quinta de parte de la potencia consumida por una TTL estándar).

- **TTL Schottky avanzado 74AS:** Esta compuerta tiene menor retardo que la serie Schottky y a la vez un menor consumo de potencia.

- **TTL Scottky avanzado de baja potencia 74ALS:** Es la compuerta con menor porducto rapidez-potencia por lo que se considera el tipo de compuerta más eficiente.

- **TTL rápida 74S:** Se considera la compuerta más rapida.  

Adicionalmente las series TTL mencionadas previamente pueden tener tres configuraciones diferentes de salidas las cuáles son:

- **Salida de colector abierto:** Posee una configuración similar al circuito de la familia DTL pero reemplaza los diodos por transistores, recibe este nombre debido a que la salida ed tensión se mide con respecto al transistor Q3, el circuito tiene una resistencia conectada a Vcc para generar un efecto "pull up" que sube el nivel alto de tensión cuando Q3 está apagado, así la salida no quedará en circuito abierto. El nivel bajo de la compuerta ocurre cuando el voltaje es de 0.2V, mientras que el alto se obtiene en un rango de tensiones de 2.7V a 5V. Este tipo de salida representa una disminución de tiempo de retardo y reducción de tiempo de apagado respecto a las compuertas DTL.

- **Salida en totem pole:** Este tipo de configuración reduce el tiempo de retardo de la salida de colector abierto aunque con un funcionamiento similar, de igual manera la disipación de potencia es mayor lo que genera que no se puedan conectar dos o más compuertas con este tipo de salida ya que se genera una gran cantidad de calor que dañaría los circuitos.

-  **Compuerta de tres estados:** Es un tipo de configuración similar a totem pole que permite la conexión de varias de estas salidas para formar un bus común. Los estados que posee esta serie son los siguientes:
  
  - 1. Estado de bajo nivel: Se tiene cuando el transistor inferior del circuito está encendido y el de arriba apagado.

  - 2. Estado de alto nivel: Ocurre cuando el transistor superior se enciende y el de abajo se apaga.
   
  -3. En este estado ambos transistores tomtem pole están apagados por lo que hay un circuito abierto o alata impedancia, lo que permie la conexión de varias salidas totem pole, se tiene un retardo de habilitación de salida mayor al de la deshabilitación de esta.

- 


**5.2 CMOS:**




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

 Con la anterior información suministrada por los datasheets se construyó la siguiente tabla:
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

## Materiales
- **Osciloscopio.** 
- **Generador de señales.**
- **LEDs.**
- **Compuerta 74LS04.**
- **Compuerta CD4069.**
- **Resistencias de 10kOhms.**
- **Resistencias de 330Ohms.**

## Simulaciones


## Aplicación

A continuación se presentan algunas aplicaciones básicas para cada compuerta.

Circuito propuesto para la compuerta 74LS04.

- ![Imagen](https://github.com/jorodriguez312/Digital/blob/main/Imagenes/CircuitoTTL.png)
- ![Imagen](https://github.com/jorodriguez312/Digital/blob/main/Imagenes/CircuitoTTL1.png)

Circuito propuesto para la compuerta CD4069.

![Imagen](https://github.com/jorodriguez312/Digital/blob/main/Imagenes/CircuitoCMOS.png)

## Resultados

## Anàlisis de resultados

## Conclusiones

## Referencias bibliogràficas.

