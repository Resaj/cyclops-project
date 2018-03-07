//#define SEGUIMIENTO_CON_CAMARA

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

// BLUETOOTH
#define BT            Serial
#define BAUDRATE      38400

// LECTURA DE BATERÍA
#define BAT           A0
unsigned int ADC_bat = 0;

#ifdef SEGUIMIENTO_CON_CAMARA
// CÁMARA
#define CLK_CAM       2
#define SI_CAM        7
#define ANALOG_CAM    A1
const int num_sensores = 8;
int despreciar_primeras_lecturas = 5;
#else
// SENSORES DE LÍNEA
#define LINEA_1       A2
#define LINEA_2       A3
#define LINEA_3       A4
#define LINEA_SEL_1   12
#define LINEA_SEL_2   13
const int num_sensores = 6;
int despreciar_primeras_lecturas = 0;
#endif

#define IZQ 0
#define DER 1
int giro = IZQ;
unsigned int ADC_linea[num_sensores];
unsigned int negro[num_sensores];
unsigned int blanco[num_sensores];
unsigned int umbral[num_sensores];

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
#define INICIALIZADO          0
#define CALIBRANDO_SENSORES   1
#define PARADO                2
#define RASTREANDO            3
int estado = INICIALIZADO;

// VARIABLES
int velocidad = 20; // valor entre 0 y 255
int proporcional = 0;
long integral = 0;
long integral_max = 100;
int derivativo = 0;
int proporcional_anterior = 0;
int error = 0;
int error_max = 500;
float Kp = 0.3;
float Ki = 0;
float Kd = 10;


void setup() {
  pinMode(PWM_IZQ, OUTPUT);
  pinMode(PWM_DER, OUTPUT);

#ifdef SEGUIMIENTO_CON_CAMARA
  pinMode(CLK_CAM, OUTPUT);
  pinMode(SI_CAM, OUTPUT);

  // Start
  digitalWrite(SI_CAM, HIGH);
  digitalWrite(CLK_CAM, HIGH);
  digitalWrite(SI_CAM, LOW);
  digitalWrite(CLK_CAM, LOW);

  for(int i = 0; i < 128; i ++) {
    digitalWrite(CLK_CAM, HIGH);
    digitalWrite(CLK_CAM, LOW);
  }
#else
  pinMode(LINEA_SEL_1, OUTPUT);
  pinMode(LINEA_SEL_2, OUTPUT);
#endif

  BT.begin(BAUDRATE);
  EXP.begin();

  SET_LED_R_LOW;
  SET_LED_G_HIGH;
}

void loop() {
  if(millis() - t > periodo)
  {
    t = millis();
    leer_pulsadores();

    switch(estado) {
      case INICIALIZADO:
        if(b1 == HIGH)
        {
          for(int i=0; i<num_sensores; i++)
          {
            negro[i] = 0;
            blanco[i] = 1023;
          }
          estado = CALIBRANDO_SENSORES;
          SET_LED_G_LOW;
        }
        break;
        
      case CALIBRANDO_SENSORES:
        if(b2 == HIGH)
        {
          estado = PARADO;
          led_g_blink = 1;
        }
        break;

      case PARADO:
        if(b1 == HIGH)
        {
          estado = RASTREANDO;
          led_g_blink = 0;
        }
        break;
        
      case RASTREANDO:
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
      case CALIBRANDO_SENSORES:
        static int var = 0;

        leer_sensores_linea(ADC_linea);
        var = 0;

        if(despreciar_primeras_lecturas > 0)
          despreciar_primeras_lecturas--;
        else
        {
          for(int i=0; i<num_sensores; i++)
          {
            if(ADC_linea[i] > negro[i])
            {
              negro[i] = ADC_linea[i];
              umbral[i] = (negro[i] + blanco[i])/2;
            }
            if(ADC_linea[i] < blanco[i])
            {
              blanco[i] = ADC_linea[i];
              umbral[i] = (negro[i] + blanco[i])/2;
            }
  
            if(negro[i]-blanco[i]> 100)
              var++;
          }
  
          if(var == num_sensores)
              SET_LED_G_HIGH;
        }

        break;
        
      case PARADO:
        if(t - t_blink < 250)
          SET_LED_G_LOW;
        else if(t - t_blink < 500)
          SET_LED_G_HIGH;
        else
          t_blink = t;
        break;

      case RASTREANDO:
        leer_sensores_linea(ADC_linea);
        proporcional = posicion_linea(ADC_linea);
        PID();
        control_motores();
        break;
    }

    leer_bateria();
    comandos();
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

void leer_sensores_linea(unsigned int* value) {
#ifdef SEGUIMIENTO_CON_CAMARA
  // Starts pixel count
  digitalWrite(SI_CAM, HIGH);
  digitalWrite(CLK_CAM, HIGH);
  digitalWrite(SI_CAM, LOW);
  digitalWrite(CLK_CAM, LOW);
  
  // Pixel count and read
  int t = 0;
  for(int i = 0; i < 128; i++) {
    if(i>= (128-num_sensores)/2 && i < (128+num_sensores)/2)
    {
      value[t] = 1023 - analogRead(ANALOG_CAM);
      t++;
    }
    digitalWrite(CLK_CAM, HIGH);
    digitalWrite(CLK_CAM, LOW);
  }
#else
  digitalWrite(LINEA_SEL_1, LOW);
  value[0] = analogRead(LINEA_1);
  value[2] = analogRead(LINEA_2);
  value[4] = analogRead(LINEA_3);
  digitalWrite(LINEA_SEL_1, HIGH);
  value[1] = analogRead(LINEA_1);
  value[3] = analogRead(LINEA_2);
  value[5] = analogRead(LINEA_3);
#endif

  // Send data
//  for(int i = 0; i < num_sensores; i++) {
//    Serial.print(value[i]);
//    if(i == num_sensores-1)
//      Serial.println("\n");
//    else
//      Serial.print(" ");
//  }
}

int posicion_linea(unsigned int* value) {
  unsigned long sensores_media = 0;
  int sensores_suma = 0;
  int negros_detectados = 0;
  int pos = 0;
  unsigned int valor_linea[num_sensores];
  
  for(int i = 0; i < num_sensores; i++)       
  {
    if(value[i] < blanco[i])
      valor_linea[i] = blanco[i];
    else if(value[i] > negro[i])
      valor_linea[i] = negro[i];
    else
      valor_linea[i] = (value[i]-blanco[i]) * 1023.0 / (negro[i]-blanco[i]);

    if(value[i] > umbral[i])
      negros_detectados++;

    sensores_media += (unsigned long)valor_linea[i]*(i+1)*100;
    sensores_suma += valor_linea[i];
  }

  if(negros_detectados == 0)
  {
    if(giro == IZQ)
      pos = 1*100;
    else // giro == DER
      pos = (num_sensores)*100;
  }
  else
  {
    pos = sensores_media / sensores_suma;

    if(pos < ((num_sensores+1)*100/2))
      giro = IZQ;
    else if(pos > ((num_sensores+1)*100/2))
      giro = DER;
  }

  pos = pos - (num_sensores+1)*100/2;
  return pos;
}

/********************** ALGORITMO PID **********************/
void PID(void)
{
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
 
  if(error > error_max)
    error = error_max;
  else if(error < -error_max)
    error = -error_max;

  v_izq = velocidad + error;
  v_der = velocidad - error;

  if(v_izq > 255)
    v_izq = 255;
  else if(v_izq < -255)
    v_izq = -255;
  if(v_der > 255)
    v_der = 255;
  else if(v_der < -255)
    v_der = -255;

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

void comandos(void) {
  if (BT.available() > 0)
  {
    char inByte = 0;
    inByte = BT.read();

    switch(inByte)
    {
      case '1':
        if(Kp - 0.1 >= 0)
          Kp = Kp - 0.1;
        BT.print("Kp = ");
        BT.println(Kp);
        break;
        
      case '7':
        Kp = Kp + 0.1;
        BT.print("Kp = ");
        BT.println(Kp);
        break;
        
      case '2':
        if(Ki - 0.001 >= 0)
          Ki = Ki - 0.01;
        BT.print("Ki = ");
        BT.println(Ki);
        break;
        
      case '8':
        Ki = Ki + 0.01;
        BT.print("Ki = ");
        BT.println(Ki);
        break;
        
      case '3':
        if(Kd - 1 >= 0)
          Kd = Kd - 1;
        BT.print("Kd = ");
        BT.println(Kd);
        break;
        
      case '9':
        Kd = Kd + 1;
        BT.print("Kd = ");
        BT.println(Kd);
        break;
        
      case '-':
        if(velocidad - 5 >= 0)
          velocidad = velocidad - 5;
        BT.print("velocidad = ");
        BT.println(velocidad);
        break;

      case '+':
      if(velocidad + 5 <= 255)
        velocidad = velocidad + 5;
        BT.print("velocidad = ");
        BT.println(velocidad);
        break;

      case '0':
        estado = PARADO;
        analogWrite(PWM_IZQ,0);
        analogWrite(PWM_DER,0);
        integral = 0;
        SET_LED_G_HIGH;
        break;

      default:
        break;
    }
  }
}
