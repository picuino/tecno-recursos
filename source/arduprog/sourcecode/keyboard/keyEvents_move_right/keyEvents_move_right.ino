// Mueve la luz a la derecha al presionar el pulsador 2

#include <Wire.h>
#include <PC42.h>

int led;

void setup() {
   pc.begin();             // Inicializar el módulo PC42
   led = 1;                // Enciende primero el led D1
}

void loop() {

   // Enciende el led actual
   pc.ledWrite(led, LED_ON);
   
   // Si se presiona la tecla derecha  
   if (pc.keyEvents(KEY_RIGHT, KEY_PRESSED_TIME1)) {
      pc.ledWrite(led, LED_OFF);     // Apaga el led actual
      led = led + 1;                 // Mover el led a la derecha
      if (led > 6)                   // Si se pasa por la derecha
         led = 1;                    //    volver al inicio
   }
}
