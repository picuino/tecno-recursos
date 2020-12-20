// Parpadea el led D1 una vez por segundo

#include <Wire.h>
#include <PC42.h>

void setup() {
   pc.begin();              // Inicializar el módulo PC42
}

void loop() {
   pc.ledWrite(1, LED_ON);  // Encender el led D1
   delay(500);              // Esperar medio segundo (500 ms)
   pc.ledWrite(1, LED_OFF); // Apagar el led D1
   delay(500);              // Esperar medio segundo (500 ms)
}
