// Mueve una luz a la derecha con el pulsador 2 (Right)
// El programa utiliza la función keyCount()

#include <Wire.h>
#include <PC42.h>

int led, count;

void setup() {
   pc.begin();             // Inicializar el módulo PC42
   led = 1;                // Enciende primero el led D1
   pc.ledWrite(led, LED_ON);
}

void loop() {

   // Mueve a la derecha con la tecla derecha

   // Lee el número de pulsaciones del pulsador 'derecha'
   count = pc.keyCount(KEY_RIGHT);

   // Si el número de pulsaciones es mayor que cero
   if (count > 0) {

      // Apaga el led actual
      pc.ledWrite(led, LED_OFF);

      // Incrementa la posición del led
      led = led + count;

      // Si la posición del led es mayor que 6
      // vuelve a la posición 1
      if (led > 6) led = 1;

      // Enciende el led en la nueva posición
      pc.ledWrite(led, LED_ON);
   }
}
