// Enciende el led D1 cuando se presiona el pulsador 1
// más de medio segundo

#include <Wire.h>
#include <PC42.h>

void setup() {
   pc.begin();        // Inicializar el módulo PC42
}

void loop() {
   // Si (pulsador 1 es presionado-medio-segundo)
   if (pc.keyEvents(1, KEY_PRESSED_TIME2))
      // Enciende el led D1
      pc.ledWrite(1, LED_ON);
}
