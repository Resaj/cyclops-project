Este programa sirve para testear el funcionamiento de un algoritmo PID básico para el seguimiento de líneas con el robot.

Para controlarlo se emplea la siguiente máquina de estados:

<p align="center">
<img src="maquina_de_estados.png" width="500" align = "center">
</p>

y los siguientes caracteres, que se envían como comandos a través de bluetooth o USB:
- '0' -> Parar (muy útil para parada de emergencia cuando se escapa el robot)
- '-' -> Bajar velocidad
- '+' -> Subir velocidad
- '1' -> Bajar Kp
- '7' -> Subir Kp
- '2' -> Bajar Ki
- '8' -> Subir Ki
- '3' -> Bajar Kd
- '9' -> Subir Kd

El led rojo indica que la batería está baja.

El led verde puede indicar lo siguiente:
- Si es fijo, se encuentra en el estado "INICIALIZADO".
- Si se enciende y se queda fijo mientras se encuentra en el estado "CALIBRANDO_SENSORES", quiere decir que los umbrales son aceptables y hay margen para una lectura correcta de la línea. Pulsar entonces el pulsador derecho para pasar al estado "PARADO".
- Si parpadea, se encuentra en el estado "PARADO", preparado para correr.
