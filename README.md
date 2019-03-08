# Cyclops-project

Robot de carreras open source con cámara, diseñado para introducir a nuevos constructores en la robótica de competición. Se compone de dos PCBs: la del chasis autosoportado con la electrónica principal; y la de sensores, que es intercambiable para poder adaptarlo a diferentes pruebas de seguimiento de línea.

El chasis del robot incorpora:
- Arduino nano
- Batería Lipo 2S
- Pulsadores de selección de menú
- Leds indicadores
- Driver de motores TB6612FNG
- Micromotores 10:1 HP 6V con reductora metálica y encoders en cuadratura
- Ruedas de 32mm de diámetro
- Sensor frontal de distancia de 80cm para detección de oponentes (necesario para carreras)
- Sensores laterales de distancia de 35cm para detección de oponentes (necesario para carreras)
- Cámara de 1x128 píxeles para seguimiento de línea y detección de oponentes
- Expansor I2C para poder soportar todos los periféricos incorporados

La PCB de sensores es intercambiable e incorpora:
- Sensores CNY70 para seguimiento de línea (6 para velocista; 8 para rastreador)
- Multiplexor para los sensores de línea

<p align="center">
<img src="images/Velocista.jpg" width="500" align = "center">
</p>

<p align="center">
<img src="images/Carreras.jpg" width="500" align = "center">
</p>

<p align="center">
<img src="images/Carreras 2.jpg" width="500" align = "center">
</p>

## Manuales y guías del proyecto

Disponibles en la carpeta [manuals](https://github.com/Resaj/cyclops-project/tree/master/manuals):
- Tutorial 1 - Baterías Lipo
- Tutorial 2 - Impresión de las piezas del robot
- Tutorial 3 - Montaje del robot
- Tutorial 4 - Configuración del Bluetooth HC-05
- Tutorial 5 - Primeras pruebas

A medida que el proyecto vaya avanzando se añadirán más tutoriales para completar la información y facilitar el montaje y la programación del robot.

## Retos planteados para el usuario

Cyclops es un proyecto base para cualquier persona que quiera adentrarse en el mundo de la robótica a partir de las competiciones. Por un lado se proporciona una base para el aprendizaje y para facilitar la participación; por otro, se plantean una serie de retos e ideas que servirán a los usuarios para afrontar el desarrollo de un proyecto de robótica y profundizar experimentando con las mejoras:

- Mejoras de comunicación por bluetooth con logs de telemetría
- Reconocimiento de la [pista de velocista](https://github.com/Resaj/basic-circuit-maker) con encoders para acelerar en las rectas y frenar antes de las curvas
- Detección de oponentes en carreras con los sensores de distancia para cambiar de carril y efectuar adelantamientos
- Adaptación del PID de seguimiento de línea para competir sobre [pistas de degradado](https://github.com/Resaj/circuit-maker)
- Implementación de un PID para seguir a un oponente en carreras cuando no se pueda cambiar de carril para adelantar
- Reconocimiento y seguimiento de líneas y degradados con cámara

## Preguntas frecuentes

Puedes encontrar un listado de las preguntas frecuentes con sus respectivas respuestas en la [wiki del proyecto](https://github.com/Resaj/cyclops-project/wiki/FAQ).

## Autor

[Rubén Espino San José](https://github.com/Resaj)

## Agradecimientos y aportaciones

- A Alex @TCRobotics de BricoLabs, por su [tutorial para adaptar el driver CH340G de la Arduino Nano para MAC OS](https://bricolabs.cc/wiki/guias/mac_os_y_ch340).
- A [José Luis Villarejo](https://github.com/movilujo), por los [diseños de las PCBs de Cyclops en FreeCAD](https://github.com/Resaj/cyclops-project/tree/master/hw/FreeCAD/PCBs).
- A [Juan Alberto Babío](https://github.com/jbabio), por la adaptación del [soporte regulable para la cámara](https://github.com/Resaj/cyclops-project/blob/master/hw/FreeCAD/Soporte_inclinable_camara_Aliexpress.stl).
- A Óscar de BricoGeek, por sus streaming ([1](https://www.youtube.com/watch?v=NNreAwnH6MY) y [2](https://www.youtube.com/watch?v=S61M1Ss7pH4)) del montaje de Cyclops-Project.
- A [Álex](https://github.com/robotaleh) y [Manuel](https://github.com/20leunam), de [OPRobots](https://github.com/OPRobots), por su [App para calibrar y controlar el robot mediante el bluetooth del móvil](https://github.com/Resaj/cyclops-project/tree/master/fw/PID_seguimiento_linea/PID_seguimiento_linea_PIDfromBT).
- A [Javier Martín](https://github.com/jamarju), por su [adaptación del bootloader de la Arduino para la carga de programas por bluetooth](https://github.com/jamarju/hexloader-avr).

## Licencia

<p align="center">

<img src="license/by-sa.png" align = "center">

</p>



Todos estos productos están liberados mediante [Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/).  

_All these products are released under [Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/)._
