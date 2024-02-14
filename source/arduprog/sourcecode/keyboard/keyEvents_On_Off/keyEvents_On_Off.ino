// Enciende y apaga el led D1 con el pulsador 1

#include <Wire.h>
#include <PC42.h>

int on_off_1;

void setup() {
   pc.begin();      // Inicializar el módulo PC42
   on_off_1 = 0;    // El led D1 comienza apagado
}

void loop() {
   pc.ledWrite(1, on_off_1);   // Enciende o apaga el led D1

   // Si (evento de pulsador 1 es igual a pulsado)
   if (pc.keyEvents(1, KEY_PRESSED_TIME1)) {
      // Cambia el estado de encendido <--> apagado
      on_off_1 = 1 - on_off_1;
   }
}
