/*
  Programa para calibrar el oscilador interno del panel 
  de control PC42 a partir del oscilador de la placa 
  Arduino.
  Es recomendable utilizar una placa Arduino con oscilador
  a cristal o calibrado con error menor del 0.5%
  
  Conexión:
  =========
  Conexión estandar TWI entre Arduino y panel PC42
  
  Funcionamiento:
  ===============
  El sistema de ajuste se basa en solicitar al panel PC42
  que envíe un pulso bajo por la línea SDA del bus TWI.
  Este pulso de 200us se mide en la placa Arduino y a partir
  del valor real se ajusta iterativamente el oscilador del
  panel.
  El ajuste se hace por medio de la dirección EEPROM del
  panel de control dedicada a la calibración del oscilador
  interno.
*/

#include <Wire.h>
#include <PC42.h>
#include <Serial.h>


// Dirección de la EEPROM para ajustar el oscilador interno 
int const OSCCAL_DEFAULT = 96;  
int const OSCCAL_MIN = 32;
int const OSCCAL_MAX = 254;  
int const OSCCAL_ITER = 8;  
int const EEPROM_WRITE_TIME = 20;  

void setup() {
   pc.begin();               // Inicializar el módulo PC42
   Serial.begin(115200);
   adjust_osccal();
}

void loop() {
  pc.ledWrite(1, HIGH);
  Serial.print(calibrate());
  Serial.println();
  delay(1000);
}

/**************************************************************/

void adjust_osccal(void) {
  // Leer de la EEPROM el valor actual de OSCCAL
   int osccal = pc.eepromRead(EADDR_OSCCAL);
   if (osccal = 255)
      osccal = OSCCAL_DEFAULT;
   Serial.print("OSCCAL=");
   Serial.println(osccal);

   for(int iter=0; iter < OSCCAL_ITER; iter++) {
      // Esperar a que el oscilador se estabilice
      delay(100);

      // Calcular nuevo valor de OSCCAL
      int desv = calibrate();
      osccal = osccal_newvalue(osccal, desv);
      Serial.print("  Calibrated=");
      Serial.println(osccal);
   } 
}

/**************************************************************/

int osccal_newvalue(int osccal, int desv) {
   if (desv == 0) 
      return osccal;

  // Ajusta el valor de OSCCAL a uno real
  osccal += desv;
  if (osccal > OSCCAL_MAX) osccal = OSCCAL_MAX;
  if (osccal <  OSCCAL_MIN) osccal = OSCCAL_MIN;

  // Guardar en EEPROM Nuevo valor de OSCCAL y actualizar
  pc.eepromWrite(EADDR_OSCCAL, osccal);
  delay(EEPROM_WRITE_TIME);
  pc.begin();
  delay(EEPROM_WRITE_TIME); 
  return pc.eepromRead(EADDR_OSCCAL);
}

/**************************************************************/

int calibrate(void) {
  int i, counter;
  pc.sysOsccal();
  cli();
  i = 10000;
  counter = 0;
  do {
     if ((PINC & (1<<4)) == 0) break;
  } while(--i);
  
  while(counter < 1000) {
     if ((PINC & (1<<4)) != 0) break;
     counter++;
  }
  sei();
  if (i <= 0) return 0;
  if (counter >= 1000) return -90;
  return((counter-356)>>1);
}
