# Proyecto final: Radar

## Autores

- _Juan Pablo Ávila Suárez_
- _Jonathan David Rodríguez Larrotta_
- _Santiago Mariño Cortés_

## Descripción

Este proyecto tiene como objetivo principal aplicar los conocimientos de la asignatura aprendidos en las clases magistrales y las prácticas de laboratorio, para ello se van a utilizar los siguientes actuadores y sensores: Sensor JoyStick, sensor ultrasonido y un servomotor.

## Contenido

1. [Autores](#autores)
2. [Descripción](#descripción)
3. [Marco Teórico](#marco-teórico)
   3.1. [Sensores](#sensores)
   3.2. [Actuadoes](#actuadores)
   3.3. [Transistor](#transistor)
   3.4. [Circuitos integrados (CI)](#circuitos-integradosci)
   3.5. [Familias lógicas](#familias-lógicas)
      3.5.1. [TTL (Transistor-Transistor Logic)](#ttl-transistor-transistor-logic)
      3.5.2. [CMOS (Complementary Metal-Oxide-Semiconductor)](#cmos-complementary-metal-oxide-semiconductor)
4. [Materiales](#materiales)
5. [Simulaciones](#simulaciones)
   5.1. [Compuerta 74LS04](#compuerta-74ls04)
   5.2. [Compuerta CD4069](#compuerta-cd4069)
6. [Resultados](#resultados)
7. [Análisis de resultados](#Anàlisisderesultados)
8. [Conclusiones](#conclusiones)
9. [Referecicas bibliográficas.](#Referenciasbibliogràficas)

## Marco Teórico.

**1. Sensores.**

Dispositivo que detecta y almacena los datos al realizar mediciones del entorno físico. Hay diferentes tipos de sensores como de corriente, magnéticos, presión, temperatura, sensores ópticos, sensores ópticos, posición, ambientales y sensores químicos.

**2. Actuadores.**
Dispositivo que recibe energía y la convierte en una salida eléctrica, movimiento, fuerza. Los actuadores pueden ser de tipo lineal o rotativos.

- **Actuadores lineales:** Se caracterizan por mover objetos en línea recta, además de su repetibilidad y precisión de posicionamiento. Se usan para tareas de empuje, tracción, elevación y posicionamiento.
  
- **Actuadores rotativos:** Convierten la energía en movimiento giratorio mediante un eje que se encarga del control de la velocidad, posición y la rotación; funcionan con un motor de rotación que se acciona por señales eléctricas.  Se usan en equipos médicos, radares, monitorización, robótica y simuladores de vuelo.
  
**3. FPGA**. (Fiel programmable Gate Array) es un circuito integrado digital que se compone por bloques lógicos configurables y puertos de entrada/salida; se caracteriza porque su funcionalidad e interconexión se pueden programar y reprogramar. Las FPGA se componen de compuertas lógicas AND, OR, memoria RAM Y controladores de reloj, por lo que es idea para el diseño de sistemas embebidos con microprocesadores.

- **Documentación**

A continuación se presenta una imágen en la que se detalla el circuito equivalente de las compuertas 74LS04 Y CD4069.

- _**Datasheet 74LS04.**_


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

## Materiales
- **FPGA Altera Cyclone IV**
  
    ![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/d7a43e65287f38cc2304ffcb79c5a071d3f3131e/caepeta2/Target-FPGA-Kit-Altera-Cyclone-IV-EP4CGX22CF19C7-device.png)
  
- **Jumpers hembra-macho**
  
  ![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/d7a43e65287f38cc2304ffcb79c5a071d3f3131e/caepeta2/jumpers-macho-hembra-20cm-cinta-40-unidades-zamux-1.jpg)
  
- **Sensor Ultrasonido HC-SR04**
  
   ![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/d7a43e65287f38cc2304ffcb79c5a071d3f3131e/caepeta2/081611.jpg)
  
- **Modulo KY-023 Sensor Joystick**
  
   ![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/d7a43e65287f38cc2304ffcb79c5a071d3f3131e/caepeta2/M%C3%B3dulo-Joystick-An%C3%A1logo-XY-KY-023-5V-1.jpg)
  
- **Tarjeta de desarrollo Esp32 Wroom**
  
  ![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/d7a43e65287f38cc2304ffcb79c5a071d3f3131e/caepeta2/ESP32-WROOM-32-DEVKIT.jpg)
  
- **Protoboard**
  
  ![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/d7a43e65287f38cc2304ffcb79c5a071d3f3131e/caepeta2/Protoboard.jpg)
  
- **Servo motor**
  
    ![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/d7a43e65287f38cc2304ffcb79c5a071d3f3131e/caepeta2/servomotor-mg996r-180-grados-11kg-zamux.jpg)

## Simulaciones

### Compuerta 74LS04

a. Circuito implementado para la simulación con la compuerta negadora 74LS04:

  ![Imagen](https://github.com/jorodriguez312/Digital/blob/main/Imagenes/simulacion_ttl.PNG)

b. Frecuencia 1 kHz

  ![Imagen](https://github.com/jorodriguez312/Digital/blob/main/Imagenes/ttl1khz.PNG)
  
Diferencia: 5.5 ns

c. Frecuencia 10 kHz

  ![Imagen](https://github.com/jorodriguez312/Digital/blob/main/Imagenes/ttl10kHz.PNG)
  
Diferencia: 5.1 ns

d. Frecuencia 100 kHz

  ![Imagen](https://github.com/jorodriguez312/Digital/blob/main/Imagenes/ttl100kHz.PNG)
  
Diferencia: 5.1 ns

Se resumen los datos de Delay para la compuerta TTL 74LS04 en la siguiente tabla:

| Frecuencia   | Periodo     | Tiempo de Retraso (Diferencia) |
|--------------|-------------|-------------------------------|
| 1 kHz        | 1 us        | 5.5 ns                        |
| 10 kHz       | 100 us      | 5.1 ns                        |
| 100 kHz      | 10 us       | 5.1 ns                        |

### Compuerta CD4069

a. Circuito implementado para la simulación con la compuerta negadora CD4069:
    ![Imagen](https://github.com/jorodriguez312/Digital/blob/main/Imagenes/simulacion_cmos.PNG)

b. Frecuencia 1 kHz

  ![Imagen](https://github.com/jorodriguez312/Digital/blob/main/Imagenes/cmos1khz.PNG)
  
Diferencia: 136.4 ns

c. Frecuencia 100 kHz

  ![Imagen](https://github.com/jorodriguez312/Digital/blob/main/Imagenes/cmos100khz.PNG)
  
Diferencia: 100 ns

d. Frecuencia 200 kHz

  ![Imagen](https://github.com/jorodriguez312/Digital/blob/main/Imagenes/cmos200kHz.PNG)
  
Diferencia: 237.3 ns

e. Frecuencia 500 kHz

  ![Imagen](https://github.com/jorodriguez312/Digital/blob/main/Imagenes/cmos500khz.PNG)
  
Diferencia: 136.7 ns

f. Frecuencia 1 MHz

  ![Imagen](https://github.com/jorodriguez312/Digital/blob/main/Imagenes/cmos1Mhz.PNG)
  
Diferencia: 120 ns

Se resumen los datos de Delay para la compuerta CMOS CD4069 en la siguiente tabla:

| Frecuencia   | Periodo     | Tiempo de Retraso (Diferencia) |
|--------------|-------------|-------------------------------|
| 1 kHz        | 1 us        | 136.4 ns                      |
| 100 kHz      | 10 us       | 100 ns                        |
| 200 kHz      | 5 us        | 237.3 ns                      |
| 500 kHz      | 2 us        | 136.7 ns                      |
| 1 MHz        | 1 us        | 120 ns                        |

Tabla de Tiempo de retraso tecnología CMOS.

## Aplicación

A continuación se presentan algunas aplicaciones básicas para cada compuerta.

Circuito propuesto para la compuerta 74LS04.

- ![Imagen](https://github.com/jorodriguez312/Digital/blob/main/Imagenes/CircuitoTTL.png)
- ![Imagen](https://github.com/jorodriguez312/Digital/blob/main/Imagenes/CircuitoTTL1.png)

Circuito propuesto para la compuerta CD4069.

![Imagen](https://github.com/jorodriguez312/Digital/blob/main/Imagenes/CircuitoCMOS.png)

## Resultados
 MrBrightside8-patch-14-1
- **Compuerta CD4069**
  
  - 1. Circuito.
       
       ![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/194af7dece9b2c6b8e05f9ce2457937969ca3167/Imagenes/CIRCUITO%20CD4069.jpeg)
       
    2. Frecuencia 1kHz.
       
       ![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/194af7dece9b2c6b8e05f9ce2457937969ca3167/Imagenes/CD4069%201KHZ.jpeg)
       
       ![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/e1b711a436e8e0c991c7a3db05231e777f6b8145/Imagenes/CD4069%201kHZ%20(2).jpeg)
       
    3. Frecuencia 100kHz.
        
        ![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/e1b711a436e8e0c991c7a3db05231e777f6b8145/Imagenes/CD4069%20100KHZ%20ONDA.jpeg)

        ![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/e1b711a436e8e0c991c7a3db05231e777f6b8145/Imagenes/CD4069%20100KHZ.jpeg)
       
    4. Frecuencia 200kHz.

        ![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/e1b711a436e8e0c991c7a3db05231e777f6b8145/Imagenes/CD4069%20200KHZ.jpeg)

        ![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/e1b711a436e8e0c991c7a3db05231e777f6b8145/Imagenes/CD4069%20200KHZ%20(2).jpeg)
       
    5. Frecuencia 500kHz.
   
        ![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/e1b711a436e8e0c991c7a3db05231e777f6b8145/Imagenes/CD4069%20500KHZ.jpeg)

        ![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/e1b711a436e8e0c991c7a3db05231e777f6b8145/Imagenes/CD4069%20500KHZ%20(2).jpeg)
       
    6. Frecuencia 1000kHz.
   
        ![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/e1b711a436e8e0c991c7a3db05231e777f6b8145/Imagenes/CD4069%201000KHZ.jpeg)
        
    7. Función de transferencia.
   
        ![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/e1b711a436e8e0c991c7a3db05231e777f6b8145/Imagenes/F.TRANSFERENCIA%20CD4069.jpeg)
        
- **Compuerta 74LS04**
  
  - 1. Circuito.

      ![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/ea0f652cf4e8867d9b771b992ee2b16847ff458d/Imagenes/CIRCUITO%2074LSO4.jpeg)

    2. Frecuencia a 1kHz.
       
       ![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/c4514da3d5a288d1d951d1e0519fd7c7f98a42ac/Imagenes/74LSO4%201KHZ.jpeg)
       
    3. Frecuencia a 10kHz.
       
       ![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/c4514da3d5a288d1d951d1e0519fd7c7f98a42ac/Imagenes/74LSO4%2010KHZ.jpeg)
       
       ![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/c4514da3d5a288d1d951d1e0519fd7c7f98a42ac/Imagenes/74LSO4%2010KHZ%20RETARDO.jpeg)
       
       ![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/c4514da3d5a288d1d951d1e0519fd7c7f98a42ac/Imagenes/74LSO4%20RETARDO%2010KHZ.jpeg)
       
    4. Frecuencia a 100kHz.
       
       ![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/26902e44c404d2b0c0b0442fc64311e6c6b32ab5/Imagenes/74LSO4%20100KHZ.jpeg)
       
    5. Tensión de la salida alta y baja.
   
       ![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/26902e44c404d2b0c0b0442fc64311e6c6b32ab5/Imagenes/1%20Y%200%20L%C3%93GICOS%2074LSO4.jpeg)
       
    6. Función de tranferencia.
   
       ![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/ea0f652cf4e8867d9b771b992ee2b16847ff458d/Imagenes/Transferencia%2074LSO4.jpeg)
       

## Análisis de resultados

### Compuerta 74LS04

|   Frecuencia (kHz)   |   Período (µs)   |   Tiempo por División (ns/div)   |   tP HL (ns)   |   tP LH (ns)   |
|---------------------|------------------|--------------------------------|----------------|----------------|
|        1 kHz        |       1000 µs       |           50                   |       18 ns     |       18 ns     |
|       10 kHz        |      100 µs      |           25                    |       21 ns     |       21 ns     |
|      100 kHz        |       10 µs      |           10                    |       21.2 ns     |       10 ns     |

### Compuerta CD4069

|   Frecuencia (kHz)   |   Período (µs)   |   Tiempo por División (ns/div)   |   tP HL (ns)   |   tP LH (ns)   |
|---------------------|------------------|--------------------------------|----------------|----------------|
|        1 kHz        |       100 µs       |           250                    |       140.0 ns     |       128.0 ns   |
|      100 kHz        |      10 µs       |           50                    |        84 ns     |       84 ns     |
|      200 kHz        |       5 µs       |           50                    |       113 ns     |       113 ns     |
|      500 kHz        |       2 µs       |           100                    |       142 ns     |       142 ns     |
|     1000 kHz        |       1 µs       |           100                    |       152 ns     |       152 ns     |

- A partir de los tiempos tP HL y tP LH se determino que en términos de velocidad y tiempo de retardo, las compuertas TTL (74LS04) demostraron un rendimiento constante y rápido en todas las frecuencias probadas, con un tiempo de retardo inferior a 6 ns en todas las situaciones.
