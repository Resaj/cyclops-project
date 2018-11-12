# PROGRAMA PARA SORTEAR EL KIT 100 DE CYCLOPS-PROJECT EN LA OSHWDEM 2018

Este programa sirve para realizar un sorteo mediante la generación de un número aleatorio en el rango de números especificados. Para ello basta con fijar el número de participantes en el sorteo, cargar el programa en la Arduino de un Cyclops y abrir Monitor Serial, Putty o cualquier otro terminal que pueda comunicarse con el puerto serie de la Arduino. También se puede especificar el nombre de cada participante. Tras activar el pulsador aparecerá el número resultante en la pantalla.

El número obtenido es el resto de la división del número de milisegundos transcurridos desde el encendido de la Arduino (utilizando la función 'millis') entre el número de participantes.
Al utilizar la función 'millis' es imposible determinar de antemano cuál será el resultado del sorteo.
Por ejemplo:
- Hay 15 participantes
- El pulsador se ha activado en el milisegundo 5621
- El resto de 5621/15 es 11
- El afortunado es el participante con el número 11

Ya que el número 0 no se suele asignar a ningún participante en el sorteo, si saliese el 0 como el resto de la división mencionada anteriormente, el afortunado sería el participante con el número correspondiente al del número de participantes.
Por ejemplo:
- Hay 15 participantes
- El pulsador se ha activado en el milisegundo 9345
- El resto de 9345/15 es 0
- El afortunado es el participante número 15
Por eso en el código aparece el índice 0 asignado al participante con el número más alto.

-----------------------------------------------------

Finalmente, los ganadores del kit #100 de Cyclops-Project en la OSHWDem 2018 fueron los constructores de Pinturillo. ¡¡Enhorabuena!! :-)
