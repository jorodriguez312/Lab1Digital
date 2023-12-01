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
   3.1.1. [Sensor de ultrasonido HC-SR04](#sensor-de-ultrasonido-HC-SR04)
   3.1.2. [Sensor Joystick KY-023](#sensor-joystick-KY-023)
   3.2. [Actuadores](#actuadores)
   3.2.3. [Servo Motor SG90](#servo-Motor-SG90)
   3.3. [FPGA](#fpga)
5. [Materiales](#materiales)
6. [Simulaciones](#simulaciones)
7. [Resultados](#resultados)
8. [Análisis de resultados](#Análisisderesultados)
9. [Conclusiones](#conclusiones)
10. [Referecicas bibliográficas.](#Referenciasbibliográficas)

## Marco Teórico.

**1. Sensores.**

Dispositivo que detecta y almacena los datos al realizar mediciones del entorno físico. Hay diferentes tipos de sensores como de corriente, magnéticos, presión, temperatura, sensores ópticos, sensores ópticos, posición, ambientales y sensores químicos.

- **Sensor de ultrasonido HC-SR04:** Es un sensor de distancia que usa una señal sonora para determinar la distancia a la que se encuentra un objeto (rango de 2 a 450 cm). Está compuesto de dos transductores los cuáles son un emisor y un recceptor, ambos de tipo piezoeléctricos. El emisor mediante el pin TRIG emite 8 pulsos de ultrasonido a 40KHz los cuales rebotan con el objeto, este rebote es detectado por el receptor, y con el pin ECHO se genera una señal de alto o 5V con duración igual al tiempo que fue emitida la onda sonora hasta cuando fue detectada. La distancia del objeto se calcual mediante la siguiente fórmula: Distancia = (Tiempo de pulso ECO*Velocidad del sonido)/2.
  
- **Sensor Joystick KY-023:** Sensor que detecta los movimientos del dedo, con el fin de controlar un actuador, internamente se compone por dos potenciometros posicionados a 90° entre sí, por lo que usa 2 pines analógicos; adicionalmente tiene un eje z al apretar el joystick, el funcionamiento de este eje es similar a un botón.

**2. Actuadores.**
Dispositivo que recibe energía y la convierte en una salida eléctrica, movimiento, fuerza. Los actuadores pueden ser de tipo lineal o rotativos.

- **Actuadores lineales:** Se caracterizan por mover objetos en línea recta, además de su repetibilidad y precisión de posicionamiento. Se usan para tareas de empuje, tracción, elevación y posicionamiento.
  
- **Actuadores rotativos:** Convierten la energía en movimiento giratorio mediante un eje que se encarga del control de la velocidad, posición y la rotación; funcionan con un motor de rotación que se acciona por señales eléctricas.  Se usan en equipos médicos, radares, monitorización, robótica y simuladores de vuelo.
  
- **Servo Motor SG90:** Es un actuador rotativo compuesto por un motor eléctrico de corriente contínual, que cuenta la capacidadd de seleccionar posición y mantenerse en dicho lugar, debido al circuito de control con el que cuenta, puede rotar 360°, el control se realiza por modulación de pulsos (PWM) a una frecuencia de 50Hz, de esta forma se determina la dirección y y la posición.
  
**3. FPGA**. (Fiel programmable Gate Array) es un circuito integrado digital que se compone por bloques lógicos configurables y puertos de entrada/salida; se caracteriza porque su funcionalidad e interconexión se pueden programar y reprogramar. Las FPGA se componen de compuertas lógicas AND, OR, memoria RAM Y controladores de reloj, por lo que es idea para el diseño de sistemas embebidos con microprocesadores.

- **Documentación**
A continuación se presentan las epecificaciones del proyecto.

- _**Datasheet Sensor Ultrasonico HC-SR04.**_
  
      Voltaje de Operación: 5V DC
      
      Corriente de reposo: < 2mA
      
      Corriente de trabajo: 15mA
      
      Rango de medición: 2cm a 450cm
      
      Precisión: +- 3mm
      
      Ángulo de apertura: 15°
      
      Frecuencia de ultrasonido: 40KHz
      
      Duración mínima del pulso de disparo TRIG (nivel TTL): 10 μS
      
      Duración del pulso ECO de salida (nivel TTL): 100-25000 μS
      
      Dimensiones: 45*20*15 mm
      
      Tiempo mínimo de espera entre una medida y el inicio de otra 20ms (recomendable 50ms)

- _**Datasheet Sensor Joystick KY-023:**_

      Voltaje de la operación: 2.7V a 5.5V.
  
      Salida: Análoga(X,Y) y Digital(Z).
  
      Tamaño: 34.5 x 26 X 38 mm.
  
      Número de potenciómetros: 2 de 10Kohm.
  
      Pulsador central normalmente abierto.
  
      Número de Pines: 5 (GND, +5V , VRx, VRy, SW).
  
      Compatible con la interfaz de Arduino.
  
      Peso: 14gr.
  
  - _**Datasheet Servo Motor SG90:**_
    
       Voltaje de operación DC: 4.8V a 6V.
    
       Velocidad de operación: 0.12 s/60º (4.8V).
    
       Torque: 1.8 kg*cm (4.8V) y 2.2 Kg*cm (6V).
    
       Piñonería plástica.
    
       Incluye 3 accesorios plásticos y su tornillo de sujeción, 2 tornillos para montaje del servo y cable de conexión con conector.
    
       Conector universal tipo "S" compatible con la mayoría de receptores incluyendo Futaba, JR, GWS, Cirrus, Blue Bird, Blue Arrow, Corona, Berg, Spektrum y Hitec, entre otros.
  
       Longitud del cable: 25 cm.
    
       Dimensiones: 23 mm x 13 mm x 29 mm.
    
       Peso: 9 gr.

       
  - - _**Datasheet Sensor FPGA Altera Cyclone IV:**_
      ![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/80084126208240751f766cefe7823d6b2eb00381/caepeta2/data%201.png)

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
  
- **Servo motor SG90**
  
    ![Imagen](https://github.com/jorodriguez312/Lab1Digital/blob/ddca0ff5ac9ddc2fc5cb734789db66cd4bf7b757/caepeta2/servo.jpeg)

## Simulaciones

### dddd

a. ssss

## Resultados
 MrBrightside8-patch-14-1
- **LLLL**
  
  - 1. sssss
       
## Análisis de resultados

###

## Conclusiones
- Se demostró que las herramientas de simulación de código abierto, como Digital, Icarus Verilog y GTKWave, son efectivas para el diseño y análisis de circuitos digitales. Estas herramientas brindan la capacidad de verificar el comportamiento de los diseños antes de la implementación física, lo que es esencial en el proceso de desarrollo de sistemas digitales.
- Verilog es una herramienta esencial para describir la funcionalidad de los circuitos y verificar su comportamiento bajo diferentes condiciones. El uso de módulos y testbenches permite una metodología estructurada y eficiente para el diseño de sistemas digitales
- Digital es una herramienta bastante versatil y facil de usar para diseña sistemas digitales ya genera código VHDL y Verilog, mapas de Karnaugh, tablas de verdad, análisis de circuitos, algebra boolena y sintesis agregando un valor significativo, ya que facilita la implementación de diseños en hardware real.
- GTKWave es una herramienta esencial para la visualización y análisis de señales digitales en circuitos electrónicos. Su capacidad para representar de manera efectiva los valores lógicos 1 y 0, así como las transiciones entre ellos, brinda a los diseñadores y analistas una visión profunda de cómo funcionan los circuitos digitales.
- Las herramientas de simulación son de gran utilidad para trabajar sistemas muy complejos debido a su capacidad de trabajo de grandes cantidades de datos y al diseño modular de los circuitos.
- 
## Referencias.

- [Repositorio Digital en GitHub](https://github.com/hneemann/Digital).
- M.Morris. Diseño digital tercera edición.2003.
- Floyd.T. Fundamentos de sistemas digitales novena edición.2006.
- https://www.intel.com/content/www/us/en/content-details/654327/cyclone-iv-device-handbook-volume-3-device-datasheet.html
- https://ferretronica.com/products/servomotor-sg90?variant=12118474162269&currency=COP&utm_medium=product_sync&utm_source=google&utm_content=sag_organic&utm_campaign=sag_organic&utm_campaign=gs-2021-10-19&utm_source=google&utm_medium=smart_campaign&gclid=EAIaIQobChMIg_XmrrfrggMVoolaBR3bCgtzEAQYAiABEgKmzvD_BwE
- https://www.ardobot.co/micro-servo-miniatura-sg90-9g.html
- https://naylampmechatronics.com/sensores-proximidad/10-sensor-ultrasonido-hc-sr04.html
- https://www.akka-technologies.com/fpga/#:~:text=Una%20FPGA%20(Field%20Programmable%20Gate,un%20lenguaje%20de%20descripci%C3%B3n%20especializado.
- https://tameson.es/pages/actuador
- 
