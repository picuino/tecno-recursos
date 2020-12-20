// Muestra la palabra 'HOLA' en el display

#include <Wire.h>
#include <PC42.h>

void setup() {

   // Inicializar el módulo PC42
   pc.begin();

   // Muestra la palabra 'HOLA'
   pc.dispWrite(DD_H, DD_O, DD_L, DD_A);

}

void loop() {
}
