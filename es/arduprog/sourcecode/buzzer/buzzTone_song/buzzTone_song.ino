// Al presionar el pulsador 1, suena la canción de 'cumpleaños feliz'

#include <Wire.h>
#include <PC42.h>

void setup() {
   pc.begin();               // Inicializar el módulo PC42
}

void loop() {
   int tempo;
   int octave;

   // Establece el tempo, en milisegundos, para la nota más corta
   tempo = 120;

   // Establece la octava. Hay 12 tonos y semitonos por cada octava
   octave = 4 * 12;

   // Apagar los sonidos
   pc.buzzTone(0);

   // Esperar mientras no se presione el pulsador 1
   while(pc.keyPressed(1) == 0);

   // Canción de cumpleaños feliz
   // Primera columna = notas musicales (tono)
   // Segunda columna = duración de cada nota (figura musical)
   pc.buzzTone(octave + Do0);    delay(3 * tempo);
   pc.buzzTone(0);               delay(10);
   pc.buzzTone(octave + Do0);    delay(1 * tempo);
   pc.buzzTone(octave + Re0);    delay(4 * tempo);
   pc.buzzTone(octave + Do0);    delay(4 * tempo);
   pc.buzzTone(octave + Fa0);    delay(4 * tempo);
   pc.buzzTone(octave + Mi0);    delay(8 * tempo);

   pc.buzzTone(octave + Do0);    delay(3 * tempo);
   pc.buzzTone(0);               delay(10);
   pc.buzzTone(octave + Do0);    delay(1 * tempo);
   pc.buzzTone(octave + Re0);    delay(4 * tempo);
   pc.buzzTone(octave + Do0);    delay(4 * tempo);
   pc.buzzTone(octave + Sol0);   delay(4 * tempo);
   pc.buzzTone(octave + Fa0);    delay(8 * tempo);

   pc.buzzTone(octave + Do0);    delay(3 * tempo);
   pc.buzzTone(0);               delay(10);
   pc.buzzTone(octave + Do0);    delay(1 * tempo);
   pc.buzzTone(octave + Do1);    delay(4 * tempo);
   pc.buzzTone(octave + La0);    delay(4 * tempo);
   pc.buzzTone(octave + Fa0);    delay(4 * tempo);
   pc.buzzTone(octave + Mi0);    delay(4 * tempo);
   pc.buzzTone(octave + Re0);    delay(8 * tempo);

   pc.buzzTone(octave + La_0);   delay(3 * tempo);
   pc.buzzTone(0);               delay(10);
   pc.buzzTone(octave + La_0);   delay(1 * tempo);
   pc.buzzTone(octave + La0);    delay(4 * tempo);
   pc.buzzTone(octave + Fa0);    delay(4 * tempo);
   pc.buzzTone(octave + Sol0);   delay(4 * tempo);
   pc.buzzTone(octave + Fa0);    delay(8 * tempo);
}
