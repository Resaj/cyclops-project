//EXPANSOR I2C PCF8574
#define SDA_PORT PORTD
#define SDA_PIN 4
#define SCL_PORT PORTD
#define SCL_PIN 5
#include <SoftWire.h>
SoftWire EXP = SoftWire();
const int expAddress = 0x20;
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
char led_g_blink = 0;
unsigned long t_blink = 0;

// PULSADORES
#define BUTTON_1      EXP_P7
#define GET_B1        get_exp_value(BUTTON_1)
#define BUTTON_2      EXP_P6
#define GET_B2        get_exp_value(BUTTON_2)
char b1 = 0;
char b2 = 0;

// LECTURA DE BATERÍA
#define BAT A0
unsigned int ADC_bat = 0;

// SEGUIMIENTO DE PARED
#define DIST_IZQ    A7
#define DIST_FRONT  A6
unsigned int dist_izq;
unsigned int dist_front;

// MOTORES
#define PWM_IZQ             6
#define PWM_DER             3
#define DIR_IZQ_1           EXP_P2
#define SET_DIR_IZQ_1_HIGH  set_exp_value(DIR_IZQ_1, HIGH)
#define SET_DIR_IZQ_1_LOW   set_exp_value(DIR_IZQ_1, LOW)
#define DIR_IZQ_2           EXP_P3
#define SET_DIR_IZQ_2_HIGH  set_exp_value(DIR_IZQ_2, HIGH)
#define SET_DIR_IZQ_2_LOW   set_exp_value(DIR_IZQ_2, LOW)
#define DIR_DER_1           EXP_P5
#define SET_DIR_DER_1_HIGH  set_exp_value(DIR_DER_1, HIGH)
#define SET_DIR_DER_1_LOW   set_exp_value(DIR_DER_1, LOW)
#define DIR_DER_2           EXP_P4
#define SET_DIR_DER_2_HIGH  set_exp_value(DIR_DER_2, HIGH)
#define SET_DIR_DER_2_LOW   set_exp_value(DIR_DER_2, LOW)

// TIMER
int periodo = 1; // milisegundos de periodo del timer
unsigned long t = 0;

// ESTADOS
#define PARADO        0
#define SEGUIR_PARED  1
int estado = PARADO;

// VARIABLES
int velocidad_inicial = 40; // valor entre 0 y 255
int velocidad = velocidad_inicial;
int proporcional = 0;
long integral = 0;
long integral_max = 100;
int derivativo = 0;
int proporcional_anterior = 0;
int error = 0;
int error_max = 70;
float Kp = 0.7;
float Ki = 0;
float Kd = 10;


void setup() {
  pinMode(PWM_IZQ, OUTPUT);
  pinMode(PWM_DER, OUTPUT);

  EXP.begin();

  SET_LED_R_LOW;
}

void loop() {
  if(millis() - t > periodo)
  {
    t = millis();
    leer_pulsadores();

    switch(estado) {
      case PARADO:
        if(b1 == HIGH)
        {
          estado = SEGUIR_PARED;
          led_g_blink = 0;
        }
        break;
        
      case SEGUIR_PARED:
        if(b2 == HIGH)
        {
          estado = PARADO;
          analogWrite(PWM_IZQ,0);
          analogWrite(PWM_DER,0);
          integral = 0;
          led_g_blink = 1;
        }
        break;
    }

    switch (estado) {
      case PARADO:
        if(t - t_blink < 250)
          SET_LED_G_LOW;
        else if(t - t_blink < 500)
          SET_LED_G_HIGH;
        else
          t_blink = t;
        break;

      case SEGUIR_PARED:
        leer_sensores_distancia();

        if(dist_izq < 350 && dist_front < 300) // Si hay pared delante y a la izquierda
        {
          error = error_max; // Forzar el giro brusco a la derecha
          velocidad = 0; // Para que gire sobre el eje
        }
        else // Si no
        {
          PID(); // Seguir pared izquierda con PID
          velocidad = velocidad_inicial; // Para el avance normal
        }

        control_motores();
        break;
    }

    leer_bateria();
  }
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

void leer_pulsadores(void) {
  static unsigned int cont_b1 = 0;
  static unsigned int cont_b2 = 0;
  
  if(GET_B1 == LOW)
  {
    if(cont_b1 >= 20)
      b1 = HIGH;
    else
      cont_b1 += periodo;
  }
  else
  {
    b1 = LOW;
    cont_b1 = 0;
  }

  if(GET_B2 == LOW)
  {
    if(cont_b2 >= 20)
      b2 = HIGH;
    else
      cont_b2 += periodo;
  }
  else
  {
    b2 = LOW;
    cont_b2 = 0;
  }
}

void leer_bateria(void) {
  float tension_bateria = 0;
  
  ADC_bat = analogRead(BAT);
  tension_bateria = ADC_bat *5.0/1023 * (120+82)/120.0;

  if(tension_bateria < 7.4)
    SET_LED_R_HIGH;
  else if(tension_bateria > 7.6)
    SET_LED_R_LOW;
}

void leer_sensores_distancia(void) {
  dist_izq = adc2dist_GP2Y0A41(analogRead(DIST_IZQ));
  dist_front = adc2dist_GP2Y0A21(analogRead(DIST_FRONT));
}

unsigned int adc2dist_GP2Y0A21(unsigned int adc)
{
  unsigned int dist = 0; // mm

  dist = 17.5*((3000.0 / (adc - 15) - 1)); // Fórmula de conversión de tensión a mm

  dist = min(dist, 800);
  dist = max(dist, 100);

  return dist;
}

unsigned int adc2dist_GP2Y0A41(unsigned int adc)
{
  unsigned int dist = 0; // mm
  
  dist = 10.1*((2914.0 / (adc + 18) - 1.5)); // Fórmula de conversión de tensión a mm
  
  dist = min(dist, 350);
  dist = max(dist, 40);

  return dist;
}

/********************** ALGORITMO PID **********************/
void PID(void)
{
  proporcional = 150 - dist_izq; // Seguir pared a 150 mm de distancia

  integral = integral + proporcional;
  if(abs(integral) > integral_max)
  {
    if(integral > 0)
      integral = integral_max;
    else
      integral = -integral_max;
  }

  derivativo = proporcional - proporcional_anterior;
  proporcional_anterior = proporcional;

  error = (float)(proporcional * Kp + integral * Ki + derivativo * Kd);
}

void control_motores(void)
{
  int v_izq = 0, v_der = 0;

  error = min(error, error_max);
  error = max(error, -error_max);

  v_izq = velocidad + error;
  v_der = velocidad - error;

  v_izq = min(v_izq, 255);
  v_izq = max(v_izq, -255);
  v_der = min(v_der, 255);
  v_der = max(v_der, -255);
  
  if(v_izq >= 0)
  {
    SET_DIR_IZQ_1_HIGH;
    SET_DIR_IZQ_2_LOW;
  }
  else
  {
    SET_DIR_IZQ_1_LOW;
    SET_DIR_IZQ_2_HIGH;
  }

  if(v_der >= 0)
  {
    SET_DIR_DER_1_HIGH;
    SET_DIR_DER_2_LOW;
  }
  else
  {
    SET_DIR_DER_1_LOW;
    SET_DIR_DER_2_HIGH;
  }

  analogWrite(PWM_IZQ,abs(v_izq));
  analogWrite(PWM_DER,abs(v_der));
}
