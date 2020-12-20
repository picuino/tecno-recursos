// Tres funciones en el pulsador 1:
//   Al presionar poco tiempo, se enciende el led D1
//   Al presionar más de medio segundo, parpadea el led D1
//   Al presionar más de dos segundos, se apaga el led D1

#include <Wire.h>
#include <PC42.h>

void setup() {
   pc.begin();        // Inicializar el módulo PC42
}

void loop() {
   // Si (pulsador 1 es recién-presionado)
   if (pc.keyEvents(1, KEY_PRESSED_TIME1))
      // Enciende el led D1
      pc.ledWrite(1, LED_ON);

   // Si (pulsador 1 es presionado-medio-segundo)
   if (pc.keyEvents(1, KEY_PRESSED_TIME2))
      // Parpadea el led D1 rápido
      pc.ledBlink(1, 200, 200);

   // Si (pulsador 1 es presionado-dos-segundos)
   if (pc.keyEvents(1, KEY_PRESSED_TIME3))
      // Apaga el led D1
      pc.ledWrite(1, LED_OFF);
}
