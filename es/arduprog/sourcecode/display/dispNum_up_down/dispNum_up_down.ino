// Muestra un número en el display que disminuye o aumenta
// Presionando los pulsadores 3 y 4

#include <Wire.h>
#include <PC42.h>

int num;

void setup() {
   pc.begin();    // Inicializar el módulo PC42
   num = 100;     // Valor inicial a representar
}

void loop() {
   
   // Actualiza el valor del número a representar
   num = num + pc.keyCount(KEY_UP);
   num = num - pc.keyCount(KEY_DOWN);
   if (num < 0) num = num + 1000;
   if (num >= 1000) num = num - 1000;

   // Representa el número en el display
   pc.dispNum(num);
}
