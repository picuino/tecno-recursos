/***************************************************************************
   TEMPORIZADOR
 ***************************************************************************/
#include <Wire.h>
#include <PC42.h>
#include <EEPROM.h>

#define TONE_ERR     Si1         // 59 Hz Simón original
#define TONE_ALARM   Do6
#define MAX_SECONDS  9999
#define EEPROM_ADDR_SECONDS  4

/***************************************************************************
   DATOS GLOBALES
 ***************************************************************************/
typedef struct {
   int total_time;
   int countdown;
   int count_millis;
   long millis;
   long millis_old;
   struct {
     unsigned state:3;
     unsigned alarm:3;
   };
} tempo_t;

tempo_t tempo;

enum {INIT_STOP, STOP, INIT_COUNTDOWN, COUNTDOWN, INIT_ALARM, ALARM};
enum {OFF, ON };


/***************************************************************************
   SETUP Y BUCLE PRINCIPAL
 ***************************************************************************/

void setup() {
  pc.begin();
  tempo_init();
}


void loop() {
  
  // Dispatcher
  switch(tempo.state) {

  case INIT_STOP:  
    pc.ledBegin();
    pc.ledWrite(1, HIGH);
    power_off();
    tempo.state = STOP;
    break;

  case STOP:
    pc.dispNum(tempo.countdown);
    tempo_stop();
    break;

  case INIT_COUNTDOWN:
    if (tempo.countdown > 0) {
      pc.ledBegin();
      pc.ledWrite(4, HIGH);
      tempo.millis_old = millis();
      tempo.state = COUNTDOWN;
    }
    else {
      tempo.state = INIT_STOP;
    }
    break;

  case COUNTDOWN:  
    tempo_countdown();
    break;

  case INIT_ALARM:
    power_off();   
    pc.ledBegin();
    pc.ledWrite(3, HIGH);
    tempo.millis = millis();
    tempo.alarm = 0;
    tempo.state = ALARM;
    break;

  case ALARM:
    alarm();
    break;
    
  default:
     tempo.state = INIT_STOP;
  }
}


/***************************************************************************
   FUNCIONES
 ***************************************************************************/

//
// STOP
//
void tempo_stop(void) {
  char keys;
  pc.dispDots(0);

  keys = pc.keyCount(KEY_DOWN);
  tempo.countdown -= keys;
  if (tempo.countdown < 0)
    tempo.countdown += MAX_SECONDS + 1;

  keys = pc.keyCount(KEY_UP);
  tempo.countdown += keys;
  if (tempo.countdown > MAX_SECONDS)
    tempo.countdown -= MAX_SECONDS + 1;
 
  if (pc.keyPressed(KEY_UP) && pc.keyPressed(KEY_DOWN)) {
     tempo.countdown = tempo.total_time;
     tempo.count_millis = 0;
  }
   
  if (pc.keyEvents(KEY_RIGHT, KEY_PRESSED_TIME2)) {
    tempo.total_time = tempo.countdown;
    pc.dispWrite(0,0,0,0);
    eeprom_write16(EEPROM_ADDR_SECONDS, tempo.total_time);
    delay(100);
  }

  if (pc.keyEvents(KEY_ENTER, KEY_PRESSED_TIME1)) { 
    tempo.state = INIT_COUNTDOWN;
  }

  pc.dispNum(tempo.countdown);
}


//
// COUNTDOWN
//
void tempo_countdown(void) {
 
  // Activar la salida de potencia
  power_on();

  // Actualizar la cuenta atrás
  tempo.millis = millis();
  tempo.count_millis += tempo.millis - tempo.millis_old;
  tempo.millis_old = tempo.millis;

  while (tempo.count_millis >= 1000) {
    tempo.countdown--;
    pc.dispNum(tempo.countdown);
    tempo.count_millis -= 1000;
    if (tempo.countdown == 0) break;
  }

  if (tempo.count_millis < 500)
    pc.dispDots(0);
  else
    pc.dispDots(1);

  if (tempo.countdown == 0) {
    power_off();
    tempo.state = INIT_ALARM;
  }

  if (pc.keyEvents(KEY_ENTER, KEY_PRESSED_TIME1)) {
    tempo.state = INIT_STOP;
  }  
}


//
// ALARM
//
void alarm(void) {
  pc.dispWrite(DD_E, DD_n, DD_d, DD_SP);

  switch(tempo.alarm) {
  case 0:
    alarm_sound();
    tempo.alarm = 1;
    break;
  case 1:
    if (millis() > tempo.millis + 1000) {
      alarm_sound();
      tempo.millis += 1000;
      tempo.alarm = 2;
    }
    break;
  case 2:
    if (millis() > tempo.millis + 4000) {
      tempo.millis += 4000;
      pc.buzzPlay(TONE_ALARM, 16);
      pc.buzzPlay(0, 16);
    }
    break;
  }
  
  if (pc.keyEvents(KEY_ENTER, KEY_PRESSED_TIME1)) {
    pc.buzzBegin();
    tempo.countdown = tempo.total_time;
    tempo.count_millis = 0;
    tempo.state = INIT_STOP;
  }
}


//
// Read integer data from EEPROM
//
int eeprom_read16(int addr) {
  return (EEPROM.read(addr + 1) << 8) | EEPROM.read(addr);
}

//
// Write integer data to EEPROM
//
int eeprom_write16(int addr, int data) {
  EEPROM.write(EEPROM_ADDR_SECONDS, tempo.total_time);
  EEPROM.write(EEPROM_ADDR_SECONDS+1, tempo.total_time>>8);
}

//
// Inicializar datos del temporizador
//
void tempo_init(void) {
  tempo.total_time = eeprom_read16(EEPROM_ADDR_SECONDS);
  tempo.state = INIT_STOP;  
  tempo.alarm = OFF;
  
  tempo.millis = 0;
  tempo.millis_old = 0;

  tempo.countdown = tempo.total_time;
  tempo.count_millis = 0;
}

//
// Sound Alarm
//
void alarm_sound(void) {
  pc.buzzPlay(TONE_ALARM, 62);
  pc.buzzPlay(0, 62);
  pc.buzzPlay(TONE_ALARM, 62);
  pc.buzzPlay(0, 62);
  pc.buzzPlay(TONE_ALARM, 62);
  pc.buzzPlay(0, 62);
  pc.buzzPlay(TONE_ALARM, 62);
  pc.buzzPlay(0, 62);
}


//
// Encender la fuente de alimentación
//
void power_on(void) {
  // Desactivar la salida de potencia
  pinMode(10, OUTPUT);
  digitalWrite(10, HIGH);
}


//
// Apagar la fuente de alimentación
//
void power_off(void) {
  // Desactivar la salida de potencia
  digitalWrite(10, LOW);
  pinMode(10, INPUT);
}

