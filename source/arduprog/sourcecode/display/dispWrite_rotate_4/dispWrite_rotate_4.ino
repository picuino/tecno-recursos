// Gira un segmento alrededor de los cuatro ledes superiores de un dígito

#include <Wire.h>
#include <PC42.h>

void setup() {
   pc.begin();  // Inicializar el módulo PC42
}

void loop() {
   // Enciende el segmento 'a' y espera 0.1 segundos
   pc.dispWrite(1,  0b00000001);
   delay(100);

   // Enciende el segmento 'b' y espera 0.1 segundos
   pc.dispWrite(1, 0b00000010);
   delay(100);

   // Enciende el segmento 'g' y espera 0.1 segundos
   pc.dispWrite(1, 0b01000000);
   delay(100);

   // Enciende el segmento 'f' y espera 0.1 segundos
   pc.dispWrite(1, 0b00100000);
   delay(100);
}
