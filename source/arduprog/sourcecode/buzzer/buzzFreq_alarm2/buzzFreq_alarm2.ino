// Emite un sonido de alarma de despertador tres veces

#include <Wire.h>
#include <PC42.h>

int nota;

void setup() {
   pc.begin();          // Inicializar el módulo PC42
}

void loop() {
   int beeps;

   // Si se presiona el pulsador 1, suena la alarma
   if (pc.keyPressed(1)) {
      // Repite 4 veces un beep y un silencio
      for(beeps = 0; beeps < 4; beeps++) {
         pc.buzzFreq(2000);   // Beep de 2000 hercios
         delay(64);           // Durante 64 milisegundos
         pc.buzzFreq(0);      // Silencio
         delay(64);           // Durante 64 milisegundos
      }
      // El sonido de alarma termina con 0.5 segundos en silencio
      delay(500);
   }
}


