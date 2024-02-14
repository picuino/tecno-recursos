// Gira un segmento alrededor de los 6 segmentos exteriores
// del primer dígito del display.

#include <Wire.h>
#include <PC42.h>

int segment;

void setup() {
   pc.begin();            // Inicializar el módulo PC42
   segment = 0b00000001;  // El primer segmento encendido es el 'a'
}

void loop() {

   // Enciende el segmento seleccionado y espera 0.100 segundos
   pc.dispWrite(1, segment);
   delay(100);

   // Desplaza el segmento hacia uno mayor
   segment = (segment << 1);

   // Si se ha llegado al segmento 'g'
   if (segment == 0b01000000)
      // Enciende de nuevo el segmento 'a'
      segment = 0b00000001;
}
