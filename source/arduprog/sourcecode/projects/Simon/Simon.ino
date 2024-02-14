/***************************************************************************
   JUEGO SIMON
 ***************************************************************************/
#include <Wire.h>
#include <PC42.h>

/***************************************************************************
   DEFINICIÓN DE DATOS Y CONSTANTES
 ***************************************************************************/

// Tones
#define TONE_R    Re_4    // 311.1 Hz  Rojo
#define TONE_Y    Si3     // 246.9 Hz  Amarillo
#define TONE_G    Fa_4    // 370.0 Hz  Verde
#define TONE_B    Fa_3    // 185.0 Hz  Azul
#define TONE_ERR  Si1     // 59 Hz Simón original

#define TIME_BETWEEN_SEQUENCES 1060
#define TIME_ERROR_TONE        2540

#define SIMON_LEN_MAX 20
typedef struct {
   char data[SIMON_LEN_MAX];
   char len;
   char pos;
   char state;
   char sound;
} simon_t;

enum {
  INIT, WAIT_RUN, INIT_RUN, ADD_SEQUENCE,
  PLAY_SEQUENCE, TEST_SEQUENCE, 
  RIGHT_SEQUENCE, ERROR_IN_SEQUENCE,
  WIN_GAME, WAIT_INIT,
};

simon_t simon;


/***************************************************************************
   SETUP Y BUCLE PRINCIPAL
 ***************************************************************************/
void setup() {
  pc.begin();
  simon.state = INIT;
}

void loop() {

  switch(simon.state) {

  case INIT:   // Init System
    pc.ledWrite(5, HIGH);
    simon.state = WAIT_RUN;
    break;

  case WAIT_RUN:  // Wait Run
    if (pc.keyCount(KEY_ENTER))
      simon.state = INIT_RUN;
    break;

  case INIT_RUN:  // Init Run
    simon_init();
    pc.ledWrite(5, LOW);
    randomSeed(millis());
    simon.state = ADD_SEQUENCE;
    break;
    
  case ADD_SEQUENCE:  // Add Sequence
    simon.data[simon.len] = random(1, 4+1);
    simon.len++;
    simon.state = PLAY_SEQUENCE;
    break;
    
  case PLAY_SEQUENCE:  // Play Sequence
    pc.dispNum(simon.len);
    delay(TIME_BETWEEN_SEQUENCES);
    simon_play();
    simon.state = TEST_SEQUENCE;
    break;
    
  case TEST_SEQUENCE:  // Test Sequence
    if (simon_test() == 1)
      simon.state = RIGHT_SEQUENCE;
    else
      simon.state = ERROR_IN_SEQUENCE;
    break;
    
  case RIGHT_SEQUENCE:  // Right Sequence
    if (simon.len >= SIMON_LEN_MAX)
      simon.state = WIN_GAME;
    else
      simon.state = ADD_SEQUENCE;
    break;
    
  case ERROR_IN_SEQUENCE:  // Error in Sequence
      simon_error();
      simon.len = 0;
      simon.state = INIT;
    break;

  case WIN_GAME:  // Win Game
    pc.dispWrite(DD_G, DD_A, DD_n, DD_A);
    pc.ledBlink(5, 100, 400);
    simon.state = WAIT_INIT;
    break;
    
  case WAIT_INIT:  // Wait Init
    if (pc.keyCount(KEY_ENTER)) {
      pc.dispBegin();
      pc.ledBegin();
      simon.state = INIT;
    }
    break;

  default:
    simon.state = 0;
  }
   
};


/***************************************************************************
   FUNCIONES
 ***************************************************************************/

//
// Inicializar datos de Simón
//
void simon_init(void) {
   uint8_t i;
   for(i=sizeof(simon.data); --i;) {
      simon.data[i] = 0;
   }
   simon.len = 0;
   simon.pos = 0;
   simon.sound = 1;  
}


//
// Visualizar la secuencia de colores y tonos
//
void simon_play(void) {
  int i;
  for(i=0; i<simon.len; i++) {
     simon_color(simon.data[i]);
  }
}


//
//  Comprueba si el jugador repite toda la secuencia
//
char simon_test(void) {
  int i;
  char color, key;

  i = 0;
  while(1) {
    if (i >= simon.len) 
      return 1;  
    color = simon.data[i];
    
    key = key_num();
    if (key == 0) 
      continue;
    
    if (key == color) {
      simon_color(color);
      i = i + 1;
    }
    else {
      return 0;
    }
  }
}


//
// Devuelve el número de tecla pulsada
//
char key_num(void) {
  char keys = pc.keyPressed(0);
  if (keys & (1<<0)) return 1;
  if (keys & (1<<1)) return 2;
  if (keys & (1<<2)) return 3;
  if (keys & (1<<3)) return 4;
  if (keys & (1<<4)) return 5;
  if (keys & (1<<5)) return 6;
  return 0;
}


//
// Enciende un led y suena un tono
// durante un tiempo determinado 
//
void simon_color(char color) {
  char numtone;
  int i;
  
  if (color < 1 || color > 4) return; 
  if (simon.sound) {
    switch(color) {
    case 1: numtone = TONE_R;  break;
    case 2: numtone = TONE_Y;  break;
    case 3: numtone = TONE_G;  break;
    case 4: numtone = TONE_B;  break;
    }
  }
  pc.ledWrite(color, HIGH);
  pc.buzzTone(numtone);
  delay(simon_time_tone(simon.len));
  pc.buzzTone(0);
  pc.ledWrite(color, LOW);
  delay(simon_time_silence(simon.len));
}

//
// Enciende la señal de error
//
void simon_error(void) { 
  if (simon.sound) 
    pc.buzzTone(TONE_ERR);
  pc.ledWrite(6, HIGH);
  pc.ledWrite(8, HIGH);
  delay(TIME_ERROR_TONE);
  pc.buzzTone(0);
  pc.ledWrite(6, LOW);
  pc.ledWrite(8, LOW);
  delay(100);
}

//
// Devuelve el tiempo que dura un tono dependiendo de
// la longitud de la secuencia de colores
//
int simon_time_tone(char len) {
   if (len <= 1) return 660;
   if (len <= 5) return 475;
   if (len <= 9) return 380;
   if (len <=13) return 317;
   return 272;
}

//
// Devuelve el tiempo que dura una pausa entre tonos dependiendo de
// la longitud de la secuencia de colores
//
int simon_time_silence(char len) {
   if (len <= 1) return 132;
   if (len <= 5) return 93;
   if (len <= 9) return 75;
   if (len <=13) return 63;
   return 54;
}
   


