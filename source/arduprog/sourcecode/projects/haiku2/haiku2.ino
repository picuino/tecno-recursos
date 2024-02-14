/*
  Programa para generar poemas con Arduino.

  Este programa escoge palabras y frases de una base de datos
  para generar versos de forma aleatoria.

  Según se van generando, los versos se envían por el puerto
  serie de comunicaciones hacia el ordenador.

  Al final de cada estrofa, Arduino espera a que se envíe un
  dato cualquiera para continuar.
  Cuando recibe datos, Arduino devuelve tantas estrofas como
  caracteres reciba.
*/

/***********************************************************
   Base de datos de palabras y frases
 ***********************************************************/
const char *palabras[] = {
   "VERANO", 
   "INVIERNO",
   "PRIMAVERA", 
   "PRADERA",
   "CASCADA",
   "VIDA",
   "TORRENTE",
   "HURACAN",
   "TIERRA",
   
   "EXTENDIENDO",
   "CRECIENDO",
   "EXPLOTANDO",
   "MURIENDO",
   "CONQUISTANDO",
   "CONTEMPLANDO",
   "ATRAPANDO",
   
   "ABRASADOR",
   "RENOVADOR",

   "CONGELADO",
   "DERRETIDO",
   "DISRUPTIVO",
   "NEVADO",
   "CUBIERTO",
};

const char *frases[] = {
   "MIENTRAS LA VIDA SIGUE",
   "MIENTRAS LA VIDA CRECE",
   "AHORA, AL ANOCHECER",
   "ANTES DEL CALIDO AMANECER",
   "EN LA OSCURA NOCHE",
   "Y CON MUCHA ALEGRIA",
   "Y CON MUCHA PENA",
   "AJENO A ESTE MUNDO DE BELLEZA",
   "EN LA SUAVE BRISA",
   "EN LA FRIA CORRIENTE",
   "NUBES TRANQUILAS",
   "FUERA, DESDE EL ABISMO",
   "EN LA EXTRAÑA CIMA",
   "SOMBRIO, SOMBRIO",
   "APAGUE LA LAMPARA",
   "ENCENDI LA HOGUERA",
   "DENTRO DE NUESTROS SUENIOS",
   "SE ME CIERRAN LOS OJOS",
   "SE ME ABRE EL ALMA",
   "AQUELLOS QUE ESTAN APARTADOS",
   "LAS MUJERES DE CIENCIA",
   "LOS HOMBRES DE ACCION",
   "ME APRESURO",
   "POR QUE SALDRE DEL TIEMPO?",
   "CUANDO NOS ENCONTRAREMOS DE NUEVO?",
   "DURMIENDO UN POCO",
   "POR ESTOS POCOS PASOS",
};


/***********************************************************
   Inicialización y función principal
 ***********************************************************/

void setup() {
   Serial.begin(115200);
   randomSeed(analogRead(3));
}

void loop() {

   // Elige un tipo de estrofa al azar y la genera
   int option = random(3);
   if (option == 0)  estrofa_x();
   if (option == 1)  estrofa_y();
   if (option == 2)  estrofa_z();
   Serial.println();        // Nueva línea

   // Espera que se envíe un dato por el puerto serie
   while(Serial.available() == 0);

   // Lee un caracter y espera un segundo antes de continuar
   Serial.read();
   delay(1000);
}

/***********************************************************
   Funciones auxiliares
 ***********************************************************/


// Devuelve una palabra al azar de la base de datos
const char *palabra() {
   return palabras[random(sizeof(palabras)/2)];
}

// Devuelve una frase al azar de la base de datos
const char *frase() {
   return frases[random(sizeof(frases)/2)];
}

/*
   Envía por el puerto serie una estrofa con estilo:
   palabra...palabra
      ...palabra
         frase
*/
void estrofa_x() {
   Serial.print(palabra());
   Serial.print("... ");
   Serial.print(palabra());
   Serial.println();        // Nueva línea

   Serial.print("   ...");
   Serial.print(palabra());
   Serial.println();        // Nueva línea

   Serial.print("      ");
   Serial.print(frase());
   Serial.println();        // Nueva línea
}

/*
   Envía por el puerto serie una estrofa con estilo:
   frase
      frase...
         frase
*/
void estrofa_y() {
   Serial.print(frase());
   Serial.println();        // Nueva línea

   Serial.print("   ");
   Serial.print(frase());
   Serial.print("...");
   Serial.println();        // Nueva línea

   Serial.print("      ");
   Serial.print(frase());
   Serial.println();        // Nueva línea
}

/*
   Envía por el puerto serie una estrofa con estilo:
      palabra
   frase
   palabra, frase, frase
*/
void estrofa_z() {
   Serial.print("   ");
   Serial.print(palabra());
   Serial.println();        // Nueva línea

   Serial.print(frase());
   Serial.println();        // Nueva línea

   Serial.print("   ");
   Serial.print(palabra());
   Serial.print(", ");
   Serial.print(frase());
   Serial.print(", ");
   Serial.print(frase());
   Serial.println();        // Nueva línea
}

