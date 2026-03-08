/*
   Stroboscope LED for Arduino.

   Copyright (c) 2026 Carlos Félix Pardo Martín.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program. If not, see <https://www.gnu.org/licenses/>.

   Release 1.0: 2026-03-09

*/

const unsigned long fclock = 16000000L;
unsigned long actualTime, oldTime;


void setup() {
  oldTime = millis();
  Serial.begin(9600);
}


void loop() {
  unsigned int pot;
  unsigned char prescaler, cycles;
  unsigned long total_cycles;
  actualTime = millis();
  if (actualTime - oldTime >= 100) {
    oldTime = actualTime;
    pot = analogRead(A0);
    prescaler = pot >> 4;
    cycles = (pot & 0x1F) << 4;
    total_cycles = timer1_setup(prescaler, cycles);
    Serial.print(pot); Serial.print('\t');
    Serial.print(prescaler); Serial.print('\t');
    Serial.print(cycles); Serial.print('\t');
    Serial.print(total_cycles); Serial.print('\t');
    print_frequency(total_cycles);
    Serial.println();
  }
}


void print_frequency(unsigned long total_cycles) {
  float frequency;
  frequency = ((float)fclock) / ((float)total_cycles);
  if (frequency >= 10000.0) {
    Serial.print(frequency, 1);
  }
  else if (frequency >= 1000.0) {
    Serial.print(frequency, 2);
  }
  else if (frequency >= 100.0) {
    Serial.print(frequency, 3);
  }
  else if (frequency >= 10.0) {
    Serial.print(frequency, 4);
  }
  else if (frequency >= 1.0) {
    Serial.print(frequency, 5);
  }
  else {
    Serial.print(frequency, 6);
  }
  Serial.print(" Hz");
}


// ADD enought time between light ON, preventing fuse of the leds.
unsigned long timer1_setup(unsigned char prescaler, unsigned char cycles) {
  // Timer 1 setup
  // Info: https://wolles-elektronikkiste.de/en/timer-and-pwm-part-2-16-bit-timer1
  // Clock select bits (CS10)
  //   0 = No clock
  //   1 = System clock
  //   2 = Prescaler = 8 (3 bit)
  //   3 = Prescaler = 64 (5 bit)
  //   4 = Prescaler = 256 (8 bit)
  //   5 = Prescaler = 1024 (10 bit)

  unsigned int top, duty;
  unsigned long total_cycles;
  unsigned char shift, TCCR1B_new;

  shift = (prescaler >> 2);
  top = 1024 + ((prescaler & 0x03) << 8) + cycles;
  if (shift <= 5) {
    TCCR1B_new = (1 << WGM13) + (1 << WGM12) + (1 << CS10);
    top <<= shift;    // Top count
    duty = top >> 5;  // Duty cycle
    total_cycles = ((unsigned long)top + 1);
  }
  else if (shift <= 11) {
    TCCR1B_new = (1 << WGM13) + (1 << WGM12) + (3 << CS10);
    shift -= 6;
    top <<= shift;    // Top count
    duty = top >> 5;  // Duty cycle
    if (duty > 256) duty = 256;
    total_cycles = (((unsigned long)top + 1) << 6);
  }
  else {
    TCCR1B_new = (1 << WGM13) + (1 << WGM12) + (5 << CS10);
    shift -= 12;
    top <<= shift;    // Top count
    duty = top >> 5;  // Duty cycle
    if (duty > 16) duty = 16;
    total_cycles = (((unsigned long)top + 1) << 12);
  }

  TCCR1A = (1 << COM1A1) + (1 << WGM11);
  TCCR1B = TCCR1B_new;
  TCCR1C = 0;
  ICR1 = top;
  OCR1A = duty;
  DDRB |= (1 << PB1);

  return total_cycles;
}
