// Genera una melodía que suena de forma contínua
// Presionando el pulsador 1, el sonido se desconecta. 
// Presionando el pulsador 2, el sonido volverá a conectarse. 

#include <Wire.h>
#include <PC42.h>

void setup() {
   pc.begin();          // Inicializar el módulo PC42
}

void loop() {
   // Tocar una melodía
   pc.buzzPlay(Sol5, 500);
   pc.buzzPlay(La5, 500);
   pc.buzzPlay(Fa5, 500);
   pc.buzzPlay(Fa4, 500);
   pc.buzzPlay(Do5, 1000);
   pc.buzzPlay(0,   500);
   delay(500);

   // Espera hasta que termine de sonar la melodía.
   // Durante ese tiempo desconecta o conecta el sonido
   // si se presionan los pulsadores 1 y 2
   while(1) {
      if (pc.keyPressed(1))    // Si se presiona el pulsador 1
         pc.buzzOff();         // desconecta el sonido.
      if (pc.keyPressed(2))    // Si se presiona el pulsador 2
         pc.buzzOn();          // conecta el sonido.
      if (pc.buzzPlay() == 0)  // Si la nota ha terminado
         return;               // termina la espera.
  }
}


