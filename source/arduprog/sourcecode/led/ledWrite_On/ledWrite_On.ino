// Enciende el led D1

#include <Wire.h>
#include <PC42.h>

void setup() {
   pc.begin();               // Inicializar el módulo PC42
   pc.ledWrite(1, LED_ON);   // Encender el led D1
}

void loop() {
}
