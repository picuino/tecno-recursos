// Al presionar el pulsador 1, suena una canción.
// Versión con tabla de datos (array)

#include <Wire.h>
#include <PC42.h>

// Canción
// Primera columna: nota musical, silencio (0) o
//                  pausa entre notas iguales (-1)
// Segunda columna: Duración de la nota (en tempos)
char song[] =  {
   La4,  4,
   Fa4,  4,
   Sol4, 4,
   Do4,  8,
   -1,
   Do4,  4,
   Sol4, 4,
   La4,  4,
   Fa4,  8,
};

void setup() {
   pc.begin();         // Inicializar el módulo PC42
}

void loop() {
   int tempo, octave;
   char i, note, figure;

   // Establece el tempo, en milisegundos, para la nota más corta
   tempo = 125;

   // Establece el desplazamiento de octava.
   // +12 = aumenta una octava. -12 = disminuye una octava.
   octave = 0;

   // Apagar los sonidos
   pc.buzzTone(0);

   // Esperar mientras no se presione el pulsador 1
   while(pc.keyPressed(1) == 0);

   // Tocar la canción almacenada
   i = 0;
   while(i < sizeof(song)) {
      note = song[i];
      i = i + 1;

      if (note == -1) {
         // suena una pausa entre notas iguales
         pc.buzzTone(0);
         delay(10);
      }
      else {
         // suena una nota musical
         figure = song[i];
         i = i + 1;
         pc.buzzTone(note + octave);
         delay(figure * tempo);
      }
   }
}
