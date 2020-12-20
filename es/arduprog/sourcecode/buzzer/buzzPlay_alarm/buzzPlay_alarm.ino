// Al presionar el pulsador 1, suena una alarma de despertador

#include <Wire.h>
#include <PC42.h>     

void setup() {
   pc.begin();  // Inicializar el módulo PC42
}

void loop() {
   // Esperar mientras no se presione el pulsador 1
   while(pc.keyPressed(1) == 0);

   // Enviar las notas de una alarma de despertador 
   pc.buzzPlay(Do7, 62);
   pc.buzzPlay(Silence, 62);
   pc.buzzPlay(Do7, 62);
   pc.buzzPlay(Silence, 62);
   pc.buzzPlay(Do7, 62);
   pc.buzzPlay(Silence, 62);
   pc.buzzPlay(Do7, 62);
   pc.buzzPlay(Silence, 566);

   // Esperar a que suenen todas las notas
   while (pc.buzzPlay());
}

