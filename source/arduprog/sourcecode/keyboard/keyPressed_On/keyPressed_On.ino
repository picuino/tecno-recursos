// Enciende el led D1 cuando se presione el pulsador 1

#include <Wire.h>
#include <PC42.h>

void setup() {
   pc.begin();   // Inicializar el módulo PC42
}

void loop() {
   int on_off;
   on_off = pc.keyPressed(KEY_LEFT); // Lee el estado del pulsador 1
   pc.ledWrite(1, on_off);           // Enciende el led D1 si está
                                     // presionado el pulsador 1
}
