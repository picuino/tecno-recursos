/*
   Version 2.1 (07/05/2024)

   Copyright 2024 Picuino

   Permission is hereby granted, free of charge, to any person obtaining a copy
   of this software and associated documentation files (the "Software"), to deal
   in the Software without restriction, including without limitation the rights
   to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
   copies of the Software, and to permit persons to whom the Software is
   furnished to do so, subject to the following conditions:

   The above copyright notice and this permission notice shall be included
   in all copies or substantial portions of the Software.

   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
   IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
   AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
   LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
   FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
   IN THE SOFTWARE.
*/
#include <SPI.h>

#define PIN_PWM_OUT  3
#define PIN_ANALOG  A6
#define PIN_ANALOG_MUX 6

#define PIN_SCK  13
#define PIN_SDO  12
#define PIN_CNV  10


#define CLK_BOARD  16000000
#define UART_BAUDS  115200
#define TIMER0_PRESET 27        // Must be >= 27
#define TIMER0_FREQ  (CLK_BOARD / (((TIMER0_PRESET) + 1) * 64))  // 9250

const float MEASURE_TIME = 1;  // Seconds
const long SAMPLES_PER_LEVEL = 40;  // ADC samples per output level. must be an even number.
const long LEVELS_PER_MEASURE = 2 * (long)(((MEASURE_TIME) * (TIMER0_FREQ)) / (2 * SAMPLES_PER_LEVEL));
const float BOARD_CALIBRATION = 8.0;  // Converts measure to milliohms

volatile long adc_acc_inphase;
volatile long adc_acc_quadrature;
volatile unsigned char adc_enable;
volatile unsigned char adc_measure_end;
volatile unsigned int adc_value;
volatile unsigned long adc_samples;
volatile unsigned int level_state;
volatile unsigned char level_state_old;
volatile unsigned char output_level;

float resistance_inphase;
float resistance_quadrature;

void setup() {
  Serial.begin(UART_BAUDS);

  Serial.print("MEASURE_TIME = ");
  Serial.print(1.0 * (SAMPLES_PER_LEVEL) * (LEVELS_PER_MEASURE) / (TIMER0_FREQ));
  Serial.println(" s");

  Serial.print("MEASURE_FREQUECY = ");
  Serial.print((TIMER0_FREQ) / (2.0 * SAMPLES_PER_LEVEL));
  Serial.println(" Hz");

  Serial.print("SAMPLES_PER_LEVEL = ");
  Serial.print(SAMPLES_PER_LEVEL);
  Serial.println(" Samples");


  // Set up output reference signal pin
  pinMode(PIN_PWM_OUT, OUTPUT);

  // Set up peripherals
  timer0_setup();
  adc_external_setup();
}

void loop() {
  // Main Loop
  while (1) {
    if (adc_measure_end == 1) {
      resistance_inphase = adc_acc_inphase;
      resistance_quadrature = adc_acc_quadrature;
      resistance_inphase *= (BOARD_CALIBRATION / (SAMPLES_PER_LEVEL * LEVELS_PER_MEASURE));
      resistance_quadrature *= (BOARD_CALIBRATION / (SAMPLES_PER_LEVEL * LEVELS_PER_MEASURE));
      Serial.print(resistance_inphase, 2);
      Serial.print("\tmOhm R  \t");
      Serial.print(resistance_quadrature, 2);
      Serial.println("\tmOhm Zc");
      adc_init();
    }
  }
}

void adc_external_setup(void) {
  // Define SPI Interface
  pinMode(PIN_SCK, OUTPUT);
  pinMode(PIN_SDI, INPUT);
  pinMode(PIN_CNV, OUTPUT);

  digitalWrite(PIN_SCK, LOW);
  digitalWrite(PIN_CNV, LOW);

  SPCR = (1 << MSTR) | (0 << SPRB);
  SPSR = 0b00000001;
  SPDR = 0;
}


void adc_internal_init(void) {
  cli();
  PORTD |= (1 << PIN_PWM_OUT);
  output_level = 0;
  level_state = 0;
  delayMicroseconds(100);

  adc_acc_inphase = 0;
  adc_acc_quadrature = 0;
  adc_samples = 0;
  output_level = 0;
  adc_measure_end = 0;
  adc_enable = 1;
  sei();
}


void adc_internal_setup(void) {
  analogRead(PIN_ANALOG);
  cli(); //stop interrupts

  ADMUX = (1 << 6) | (0 << ADLAR) | (PIN_ANALOG_MUX << 0);
  ADCSRA = (1 << ADEN) | (0 << ADSC) | (0 << ADATE) | (0 << ADIE) | (0b111);
  ADCSRB = 0x00;

  sei(); //allow interrupts

  adc_init();
}


void timer0_setup(void) {
  cli(); //stop interrupts

  //set timer0 interrupt at 2kHz
  TCCR0A = 0; // set entire TCCR2A register to 0
  TCCR0B = 0; // same for TCCR2B
  TCNT0  = 0; //initialize counter value to 0
  // set compare match register
  OCR0A = TIMER0_PRESET;
  // turn on CTC mode
  TCCR0A |= (1 << WGM01);
  // Set CS01 and CS00 bits for 64 prescaler
  TCCR0B |= (1 << CS01) | (1 << CS00);
  // enable timer compare interrupt
  TIMSK0 |= (1 << OCIE0A);

  sei(); //allow interrupts
}


ISR(TIMER0_COMPA_vect) {
  if (adc_enable) {

    // ADC Start Conversion
    ADCSRA |= (1 << ADSC);
    delayMicroseconds(12);  // Wait for Sample and Hold

    // Read and accumulate old ADC value
    if (adc_samples) {
      // Read ADC old measure
      adc_value = ADCW;

      // Add measure to accumulator
      if (level_state_old < SAMPLES_PER_LEVEL) {
        adc_acc_inphase -= adc_value;
      }
      else {
        adc_acc_inphase += adc_value;
      }
      if ((level_state_old >=  0.5 * SAMPLES_PER_LEVEL) && (level_state_old < 1.5 * SAMPLES_PER_LEVEL)) {
        adc_acc_quadrature -= adc_value;
      }
      else {
        adc_acc_quadrature += adc_value;
      }
    }

    adc_samples++;

    // Update next state
    level_state_old = level_state;
    level_state++;
    if (level_state >= (2 * SAMPLES_PER_LEVEL)) {
      level_state = 0;
    }

    // Update output reference signal
    if (level_state < SAMPLES_PER_LEVEL) {
      PORTD |= (1 << PIN_PWM_OUT);
    }
    else {
      PORTD &= ~(1 << PIN_PWM_OUT);
    }

    // Take one measure after several samples
    if (adc_samples > SAMPLES_PER_LEVEL * LEVELS_PER_MEASURE) {
      PORTD |= (1 << PIN_PWM_OUT);
      output_level = 0;
      adc_measure_end = 1;
      adc_enable = 0;
    }
  }
}
