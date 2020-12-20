// Emite una nota más grave al presionar el pulsador 1
// Emite una nota más aguda al presionar el pulsador 2

#include <Wire.h>
#include <PC42.h>

int nota;

void setup() {
   pc.begin();          // Inicializar el módulo PC42
   nota = La4;
}

void loop() {
   // Muestra la nota actual en el display
   pc.dispNum(nota);

   // Si se presiona el pulsador 1
   if (pc.keyPressed(1)) {
      // Calcular una nota más grave
      nota = nota - 1;
      if (nota < 1)
         nota = 1;
      pc.buzzTone(nota); // Emite una nota musical
      delay(100);        // durante 0.1 segundos
      pc.buzzTone(0);    // Apaga el generador de sonido
      delay(500);        // durante 0.5 segundos
   }

   // Si se presiona el pulsador 2
   if (pc.keyPressed(2)) {
      nota = nota + 1;   // Calcular una nota más aguda
      if (nota > 127)
         nota = 127;
      pc.buzzTone(nota); // Emite una nota musical
      delay(100);        // durante 0.1 segundos
      pc.buzzTone(0);    // Apaga el generador de sonido
      delay(500);        // durante 0.5 segundos
   }
}


