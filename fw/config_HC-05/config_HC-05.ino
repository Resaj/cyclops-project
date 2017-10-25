#include <SoftwareSerial.h>

#define TX  9 // RX del HC-05
#define RX  10  // TX del HC-05
SoftwareSerial BTserial(RX, TX);

void setup()
{
    Serial.begin(9600);
    Serial.println("Enviar comandos AT:");
    BTserial.begin(38400);
}

void loop() {
    if (BTserial.available())
        Serial.write(BTserial.read());
    if (Serial.available())
        BTserial.write(Serial.read());
}
