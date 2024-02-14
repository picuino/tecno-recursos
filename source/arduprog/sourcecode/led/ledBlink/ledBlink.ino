// Parpadea el led D1 una vez por segundo

#include <Wire.h>
#include <PC42.h>

void setup() {
   pc.begin();               // Inicializar el módulo PC42
   pc.ledBlink(1, 500, 500); // Parpadea el led D1
                             //   500 milésimas de segundo encendido
                             //   500 milésimas de segundo apagado
}

void loop() {
}
