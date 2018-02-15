# Cyclops-project

Robot de carreras open source con cámara, diseñado para la [Liga Nacional de Robótica de Competición](http://lnrc.es/). Se compone de dos PCBs: la del chasis autosoportado con la electrónica principal; y la de sensores, que es intercambiable para poder adaptarlo a diferentes pruebas de seguimiento de línea.

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

La PCB de sensores es intercambiable. En su versión para velocistas y carreras incorpora:
- 6 sensores CNY70 para seguimiento de línea
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

## Autor

[Rubén Espino San José](https://github.com/Resaj)

## Agradecimientos y aportaciones

- A Alex @TCRobotics de BricoLabs, por su [tutorial para adaptar el driver CH340G de la Arduino Nano para MAC OS](https://bricolabs.cc/wiki/guias/mac_os_y_ch340).
- A [José Luis Villarejo](https://github.com/movilujo), por los [diseños de las PCBs de Cyclops en FreeCAD](https://github.com/Resaj/cyclops-project/tree/master/hw/FreeCAD/PCBs).
- A [Juan Alberto Babío](https://github.com/jbabio), por la adaptación del [soporte regulable para la cámara](https://github.com/Resaj/cyclops-project/blob/master/hw/FreeCAD/Soporte_inclinable_camara_Aliexpress.stl).

## Licencia

<p align="center">

<img src="license/by-sa.png" align = "center">

</p>



Todos estos productos están liberados mediante [Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/).  

_All these products are released under [Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/)._
