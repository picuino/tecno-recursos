#include <stdio.h>


void setup() {
   Serial.begin(9600);
}


void loop() {
   char str[50];
   sprintf(str, "Hello world %lu\n", 0x12345678);
   Serial.print(str);
}
