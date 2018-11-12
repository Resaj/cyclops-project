/* Programa de generación de un número aleatorio para sortear el kit 100 de Cyclops-Project en la OSHWDem 2018 */
/* ¡¡Los ganadores fueron los constructores de Pinturillo!! :-) */

const int num_participantes = 5;

struct participante{
  int num;
  String nombre;
}

participante[num_participantes];

//EXPANSOR I2C PCF8574
#define SDA_PORT PORTD
#define SDA_PIN 4
#define SCL_PORT PORTD
#define SCL_PIN 5
#include <SoftWire.h>
SoftWire EXP = SoftWire();
const int expAddress = 0x20; //0x20 para PCF8574P; 0x38 para PCF8574AP
unsigned char expOutputRegister = 0b11111111;
void set_exp_value(char pin, char value);
byte get_exp_value(char pin);
#define EXP_P0    0
#define EXP_P1    1
#define EXP_P2    2
#define EXP_P3    3
#define EXP_P4    4
#define EXP_P5    5
#define EXP_P6    6
#define EXP_P7    7

// LEDS
#define LED_R           EXP_P1
#define SET_LED_R_HIGH  set_exp_value(LED_R, HIGH)
#define SET_LED_R_LOW   set_exp_value(LED_R, LOW)
#define LED_G           EXP_P0
#define SET_LED_G_HIGH  set_exp_value(LED_G, HIGH)
#define SET_LED_G_LOW   set_exp_value(LED_G, LOW)

// PULSADORES
#define BUTTON_1      EXP_P7
#define GET_B1        get_exp_value(BUTTON_1)
#define BUTTON_2      EXP_P6
#define GET_B2        get_exp_value(BUTTON_2)

// SERIAL
#define BAUDRATE      38400


void setup() {
  participante[1].num = 1; participante[1].nombre = "Pinturillo";
  participante[2].num = 2; participante[2].nombre = "VisionRace";
  participante[3].num = 3; participante[3].nombre = "SMOKY";
  participante[4].num = 4; participante[4].nombre = "GP Robot Vintage";
  participante[0].num = 5; participante[0].nombre = "GP Robot";

  
  
  Serial.begin(BAUDRATE);
  EXP.begin();

  Serial.println("Sorteo Cyclops-Project #100");
  Serial.println("El ganador es...\n");
  Serial.print("    ");

  SET_LED_R_LOW;
  SET_LED_G_HIGH;

  while(GET_B1);
  
  SET_LED_R_HIGH;
  SET_LED_G_LOW;

  int value = 0;
  value = millis() % num_participantes;

  Serial.print(participante[value].num);
  Serial.print(" ");
  Serial.println(participante[value].nombre);

  Serial.print("\n  Enhorabuena :-)\n\r");
}

void loop() {
}

void set_exp_value(char pin, char value) {
  if(value == HIGH)
    expOutputRegister = expOutputRegister & (~(1<<pin));
  else // value == LOW
    expOutputRegister = expOutputRegister | (1<<pin);

  EXP.beginTransmission(expAddress);
  EXP.write(expOutputRegister);
  EXP.endTransmission();
}

byte get_exp_value(char pin) {
  byte value = 0;

  EXP.requestFrom(expAddress, 1);
  if(EXP.available())
    value = EXP.read();
  EXP.endTransmission();

  return (value & 1<<pin)>>pin;
}

