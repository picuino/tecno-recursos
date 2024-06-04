/***************************************************************************
 * TEST PC42 HARDWARE
 *   Test Buzzer and leds
 *   Test Display
 *   Test Keyboard
 * License: Public domain
 ***************************************************************************/

#include <Wire.h>
#include <PC42.h>

/***************************************************************************
 * SETUP AND MAIN LOOP
 ***************************************************************************/
void setup() {
   pc.begin();
}


void loop() {
   pc.begin();
   test_leds_buzz();
   delay(500);
   test_display();
   delay(500);
   test_keyb();
   delay(500);
}


/*
  TEST LEDS AND BUZZER
 */
void test_leds_buzz(void) {
   int i;
   int Tones[] = { 
      0, Do6, Re6, Mi6, Fa6, Sol6, La6, Si6, Do7   }; 
   for(i=1; i<=8; i++) {
      pc.buzzTone(Tones[i]);
      pc.ledWrite(i, HIGH);
      delay(500);
      pc.ledWrite(i, LOW);
      pc.buzzTone(0);
   }
}


/*
  TEST DISPLAY
 */
void test_display(void) {
   int i, c;
   // Todos los ledes de cada dígito
   for(i=1; i<=4; i++) {
      pc.dispWrite(i, DD_8);
      pc.dispDots(1<<(i-1));
      delay(500);
      pc.dispWrite(i, DD_SP);      
      pc.dispDots(0);
   }
   delay(500);
   c = 1;
   for(i=1; i<=7; i++) {
      pc.dispWrite(c, c, c, c);
      delay(500);
      c <<= 1;
   }
   pc.dispWrite(0,0,0,0);
   pc.dispDots(0b1111);
   delay(500);
   pc.dispDots(0b0000);
}


/*
  TEST KEYBOARD.
 */
void test_keyb() {
   int keys[7];
   int fin;
   int i;

   // Clear memory and switch on leds
   pc.dispWrite(DD_8, DD_8, DD_8, DD_8);
   pc.dispDots(B1111);
   for(i=1; i<=6; i++) {
      pc.ledWrite(i, HIGH);
      keys[i] = 0;
   }
   pc.ledWrite(7, HIGH);
   pc.ledWrite(8, HIGH);

   // Test keyboard and switch off leds
   fin = 0;
   while(fin == 0) {
      fin = 1;
      for(i=1; i<=6; i++) {
         if (pc.keyPressed(i)) {
            pc.ledWrite(i, LOW);
            if (i==6) {
               pc.ledWrite(7, LOW);
               pc.ledWrite(8, LOW);
            }
            keys[i] = 1;
         }
         if (keys[i] == 0) fin = 0;
      }
   }
}   
