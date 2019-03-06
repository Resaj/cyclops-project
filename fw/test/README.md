Este programa de test sirve para probar cada una de las partes del robot:
- Pulsadores
- Leds
- Batería
- Sensores de línea
- Sensores de distancia
- Motores
- Encoders
- Cámara

Para que todo funcione correctamente debes haber seguido las indicaciones del [tutorial de primeras pruebas](https://github.com/Resaj/cyclops-project/blob/master/manuals/Tutorial%205%20-%20Primeras%20pruebas.pdf), donde aparecen las configuraciones necesarias para las diferentes partes del robot.

Para ello basta con descomentar las definiciones de los test correspondientes a los dispositivos que se quiere probar. Estos se encuentran al principio del programa:

//#define TEST_LEDS

//#define TEST_PULSADORES

//#define TEST_BATERIA

//#define TEST_SENSORES_LINEA

//#define TEST_SENSORES_DISTANCIA

//#define TEST_MOTORES

//#define TEST_ENCODERS

//#define TEST_CAMARA
