// Apaga el led D1 presionando el pulsador 1

#include <Wire.h>
#include <PC42.h>

void setup() {
   pc.begin();                  // Inicializar el módulo PC42
}

void loop() {
   int on_off;
   on_off = pc.keyPressed(1);   // Lee el estado del pulsador 1
   pc.ledWrite(1, !on_off);     // Enciende el led D1 si no está
                                // presionado el pulsador 1
}
