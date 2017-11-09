#define TEST_LEDS
//#define TEST_PULSADORES
//#define TEST_BATERIA
//#define TEST_SENSORES_LINEA
//#define TEST_SENSORES_DISTANCIA
//#define TEST_MOTORES
//#define TEST_ENCODERS
//#define TEST_CAMARA


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

// BLUETOOTH
#define BT            Serial
#define BAUDRATE      38400

// LECTURA DE BATERÍA
#define BAT           A0
unsigned int ADC_bat = 0;

// SENSORES DE LÍNEA
#define LINEA_1       A2
#define LINEA_2       A3
#define LINEA_3       A4
#define LINEA_SEL_1   12
#define LINEA_SEL_2   13
const int sensores_linea = 6;
unsigned int ADC_linea[sensores_linea];
void leer_sensores_linea(unsigned int* value);

// SENSORES DE DISTANCIA
#define DIST_IZQ      A7
#define DIST_FRONT    A6
#define DIST_DER      A5
unsigned int ADC_dist_izq = 0;
unsigned int ADC_dist_front = 0;
unsigned int ADC_dist_der = 0;

// MOTORES
#define PWM_IZQ             6
#define PWM_DER             3
#define DIR_IZQ_1           EXP_P2
#define SET_DIR_IZQ_1_HIGH  set_exp_value(DIR_IZQ_1, HIGH)
#define SET_DIR_IZQ_1_LOW   set_exp_value(DIR_IZQ_1, LOW)
#define DIR_IZQ_2           EXP_P3
#define SET_DIR_IZQ_2_HIGH  set_exp_value(DIR_IZQ_2, HIGH)
#define SET_DIR_IZQ_2_LOW   set_exp_value(DIR_IZQ_2, LOW)
#define DIR_DER_1           EXP_P4
#define SET_DIR_DER_1_HIGH  set_exp_value(DIR_DER_1, HIGH)
#define SET_DIR_DER_1_LOW   set_exp_value(DIR_DER_1, LOW)
#define DIR_DER_2           EXP_P5
#define SET_DIR_DER_2_HIGH  set_exp_value(DIR_DER_2, HIGH)
#define SET_DIR_DER_2_LOW   set_exp_value(DIR_DER_2, LOW)

// ENCODERS
#define ENC_IZQ_A     9
#define ENC_IZQ_B     8
#define ENC_DER_A     10
#define ENC_DER_B     11
int enc_izq_a = 0;
int enc_izq_b = 0;
int enc_der_a = 0;
int enc_der_b = 0;

// CÁMARA
#define CLK_CAM       2
#define SI_CAM        7
#define ANALOG_CAM    A1
int num_pixels = 8;
int PixelArray[128];

void setup() {
  pinMode(LINEA_SEL_1, OUTPUT);
  pinMode(LINEA_SEL_2, OUTPUT);
  pinMode(PWM_IZQ, OUTPUT);
  pinMode(PWM_DER, OUTPUT);
  pinMode(ENC_IZQ_A, INPUT); // INPUT para encoder con resistencia de pullup
  pinMode(ENC_IZQ_B, INPUT); // INPUT_PULLUP para encoder sin resistencia de pullup
  pinMode(ENC_DER_A, INPUT);
  pinMode(ENC_DER_B, INPUT);
  pinMode(CLK_CAM, OUTPUT);
  pinMode(SI_CAM, OUTPUT);

#ifdef TEST_CAMARA
  // Start
  digitalWrite(SI_CAM, HIGH);
  digitalWrite(CLK_CAM, HIGH);
  digitalWrite(SI_CAM, LOW);
  digitalWrite(CLK_CAM, LOW);

  for(int i = 0; i < 128; i ++) {
    digitalWrite(CLK_CAM, HIGH);
    digitalWrite(CLK_CAM, LOW);
  }
#endif

  BT.begin(BAUDRATE);
  EXP.begin();

  SET_LED_R_LOW;
  SET_LED_G_LOW;
}

void loop() {
#ifdef TEST_PULSADORES
  BT.print(GET_B1);
  BT.print(" ");
  BT.println(GET_B2);
#endif

#ifdef TEST_LEDS
  static int mux = 0;
  static unsigned long t = 0;

  if(millis() - t > 1000)
  {
    t = millis();
    mux = !mux;

    if(mux == 0)
    {
      SET_LED_R_LOW;
      SET_LED_G_LOW;
    }
    else
    {
      SET_LED_R_HIGH;
      SET_LED_G_HIGH;
    }
  }
#endif

#ifdef TEST_BATERIA
  ADC_bat = analogRead(BAT);
  BT.println(ADC_bat);
#endif
  
#ifdef TEST_SENSORES_LINEA
  leer_sensores_linea(ADC_linea);
  BT.print(ADC_linea[0]);
  BT.print(" ");
  BT.print(ADC_linea[1]);
  BT.print(" ");
  BT.print(ADC_linea[2]);
  BT.print(" ");
  BT.print(ADC_linea[3]);
  BT.print(" ");
  BT.print(ADC_linea[4]);
  BT.print(" ");
  BT.println(ADC_linea[5]);
#endif

#ifdef TEST_SENSORES_DISTANCIA
  ADC_dist_izq = analogRead(DIST_IZQ);
  ADC_dist_front = analogRead(DIST_FRONT);
  ADC_dist_der = analogRead(DIST_DER);
  BT.print(ADC_dist_izq);
  BT.print(" ");
  BT.print(ADC_dist_front);
  BT.print(" ");
  BT.println(ADC_dist_der);
#endif

#ifdef TEST_MOTORES
  static int velocidad = 0;

  SET_DIR_IZQ_1_HIGH;
  SET_DIR_IZQ_2_LOW;
  SET_DIR_DER_1_HIGH;
  SET_DIR_DER_2_LOW;
  for(velocidad = 0; velocidad <= 255; velocidad += 1)
  {
    analogWrite(PWM_IZQ,velocidad);
    analogWrite(PWM_DER,velocidad);
    delay(10);
  }
  for(velocidad = 255; velocidad >= 0; velocidad -= 1)
  {
    analogWrite(PWM_IZQ,velocidad);
    analogWrite(PWM_DER,velocidad);
    delay(10);
  }

  SET_DIR_IZQ_1_LOW;
  SET_DIR_IZQ_2_HIGH;
  SET_DIR_DER_1_LOW;
  SET_DIR_DER_2_HIGH;
  for(velocidad = 0; velocidad >= -255; velocidad -= 1)
  {
    analogWrite(PWM_IZQ,-velocidad);
    analogWrite(PWM_DER,-velocidad);
    delay(10);
  }
  for(velocidad = -255; velocidad <= 0; velocidad += 1)
  {
    analogWrite(PWM_IZQ,-velocidad);
    analogWrite(PWM_DER,-velocidad);
    delay(10);
  }

  delay(1000);
#endif

#ifdef TEST_ENCODERS
  enc_izq_a = digitalRead(ENC_IZQ_A);
  enc_izq_b = digitalRead(ENC_IZQ_B);
  enc_der_a = digitalRead(ENC_DER_A);
  enc_der_b = digitalRead(ENC_DER_B);
  BT.print(enc_izq_a);
  BT.print(" ");
  BT.print(enc_izq_b);
  BT.print(" ");
  BT.print(enc_der_a);
  BT.print(" ");
  BT.println(enc_der_b);
#endif

#ifdef TEST_CAMARA
  // Starts pixel count
  digitalWrite(SI_CAM, HIGH);
  digitalWrite(CLK_CAM, HIGH);
  digitalWrite(SI_CAM, LOW);
  digitalWrite(CLK_CAM, LOW);
  
  // Pixel count and read
  for(int i = 0; i < 128; i ++) {
    PixelArray[i] = analogRead(ANALOG_CAM);
    digitalWrite(CLK_CAM, HIGH);
    digitalWrite(CLK_CAM, LOW);
  }

  // Send data
  for(int i = (128-num_pixels)/2; i < (128+num_pixels)/2; i++) {
    Serial.print(PixelArray[i]);
    if(i == (128+num_pixels)/2-1)
      Serial.println("\n");
    else
      Serial.print(" ");
  }

  // Periodo de muestreo
//  static unsigned long var = 0;
//  unsigned int periodo = 0;
//  periodo = millis() - var;
//  var = millis();
//  Serial.println(periodo);
#endif
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

void leer_sensores_linea(unsigned int* value) {
  digitalWrite(LINEA_SEL_1, LOW);
  value[0] = analogRead(LINEA_1);
  value[2] = analogRead(LINEA_2);
  value[4] = analogRead(LINEA_3);
  digitalWrite(LINEA_SEL_1, HIGH);
  value[1] = analogRead(LINEA_1);
  value[3] = analogRead(LINEA_2);
  value[5] = analogRead(LINEA_3);
}
