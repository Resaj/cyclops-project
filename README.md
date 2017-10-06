# Cyclops-project

Robot de carreras open source con cámara, diseñado para la [Liga Nacional de Robótica de Competición](http://lnrc.es/). Se compone de dos PCBs: la del chasis autosoportado con la electrónica principal; y la de sensores, que es intercambiable para poder adaptarlo a diferentes pruebas de seguimiento de línea.

El chasis del robot incorpora:
- Arduino nano
- Batería Lipo 2S
- Pulsadores de selección de menú
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
<img src="images/Velocista.jpg" width="600" align = "center">
</p>

<p align="center">
<img src="images/Carreras.jpg" width="600" align = "center">
</p>

## Manuales y guías del proyecto

Disponibles en la carpeta [manuals](https://github.com/Resaj/cyclops-project/tree/master/manuals):
- Tutorial de baterías Lipo
- Manual de configuración del Bluetooth

A medida que el proyecto vaya avanzando se añadirán más tutoriales para completar la información y facilitar el montaje y la programación del robot.

## Autor

[Rubén Espino San José](https://github.com/Resaj)


## Licencia

<p align="center">

<img src="license/by-sa.png" align = "center">

</p>



Todos estos productos están liberados mediante [Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/).  

_All these products are released under [Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/)._
