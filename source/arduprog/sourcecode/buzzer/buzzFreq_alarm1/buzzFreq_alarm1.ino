// Emite un tono de 2000 hercios al presionar el pulsador 1

#include <Wire.h>
#include <PC42.h>

void setup() {
   pc.begin();           // Inicializar el módulo PC42
}

void loop() {
   // Si se presiona el pulsador 1
   if (pc.keyPressed(1)) {
      pc.buzzFreq(2000); // Emite un sonido de 2000 Hz
      delay(62);         // durante 62 milisegundos
      pc.buzzFreq(0);    // Apaga el generador de sonido
      delay(62);         // durante 62 milisegundos
   }
}
