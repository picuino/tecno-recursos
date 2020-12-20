// Al presionar el pulsador 1, suena un carrillón y el 
// display muestra el número de notas que aún no han 
// terminado de sonar.

#include <Wire.h>
#include <PC42.h>

void setup() {
   pc.begin();               // Inicializar el módulo PC42
}

void loop() {

   // Esperar mientras no se presione el pulsador 1
   while(pc.keyPressed(1) == 0);

   // Enviar la partitura de carrillón
   pc.buzzPlay(La4,   500);
   pc.buzzPlay(Fa4,   500);
   pc.buzzPlay(Sol4,  500);
   pc.buzzPlay(Do4,  1000);
   pc.buzzPlay(Silence, 10);
   pc.buzzPlay(Do4,   500);
   pc.buzzPlay(Sol4,  500);
   pc.buzzPlay(La4,   500);
   pc.buzzPlay(Fa4,  1000);

   // Esperar hasta que suene toda la partitura
   // Mostrar el número de notas restantes
   int notas;
   do {
     notas = pc.buzzPlay();
     pc.dispNum(notas);
   } while (notas > 0);
}
