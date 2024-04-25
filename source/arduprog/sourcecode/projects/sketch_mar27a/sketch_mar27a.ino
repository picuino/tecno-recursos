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
   Inicialización y función principal
 ***********************************************************/

void setup() {
   Serial.begin(9600);
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

   // Lee un carácter y espera un segundo antes de continuar
   Serial.read();
   delay(1000);
}

/***********************************************************
   Funciones auxiliares
 ***********************************************************/

/*
   Envía por el puerto serie una estrofa con estilo:
   palabra...palabra
      ...palabra
         frase
*/
void estrofa_x() {
   palabra();
   Serial.print("... ");
   palabra();
   Serial.println();        // Nueva línea

   Serial.print("   ...");
   palabra();
   Serial.println();        // Nueva línea

   Serial.print("      ");
   frase();
   Serial.println();        // Nueva línea
}

/*
   Envía por el puerto serie una estrofa con estilo:
   frase
      frase...
         frase
*/
void estrofa_y() {
   frase();
   Serial.println();        // Nueva línea

   Serial.print("   ");
   frase();
   Serial.print("...");
   Serial.println();        // Nueva línea

   Serial.print("      ");
   frase();
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
   palabra();
   Serial.println();        // Nueva línea

   frase();
   Serial.println();        // Nueva línea

   Serial.print("   ");
   palabra();
   Serial.print(", ");
   frase();
   Serial.print(", ");
   frase();
   Serial.println();        // Nueva línea
}


/***********************************************************
   Base de datos de palabras y frases
 ***********************************************************/
void palabra(void) {
   int n = random(20);
   if (n == 0) Serial.print("ESCABULLENDOSE");
   if (n == 1) Serial.print("PISANDO");
   if (n == 2) Serial.print("CONTEMPLANDO");
   if (n == 3) Serial.print("MARCHITO");
   if (n == 4) Serial.print("ESCULPIDO");
   if (n == 5) Serial.print("ESCONDIDO");
   if (n == 6) Serial.print("CONFINADO");
   if (n == 7) Serial.print("ATORMENTADO");
   if (n == 8) Serial.print("DOBLANDO");
   if (n == 9) Serial.print("RETORCIENDO");
   if (n == 10) Serial.print("GOLPEANDO");
   if (n == 11) Serial.print("COLGANDO");
   if (n == 12) Serial.print("ENVOLVIENDO");
   if (n == 13) Serial.print("TRANSPARENTE");
   if (n == 14) Serial.print("CANSADO");
   if (n == 15) Serial.print("HACIA LA TIERRA");
   if (n == 16) Serial.print("CASACADA");
   if (n == 17) Serial.print("SACRIFICADOR");
   if (n == 18) Serial.print("RESBALADIZO");
   if (n == 19) Serial.print("EN PEDAZOS");
};

void frase(void) {
   int n = random(20);
   if (n == 0) Serial.print("EN LA FRIA CORRIENTE");
   if (n == 1) Serial.print("AJENO A UN MUNDO DE BELLEZA");
   if (n == 2) Serial.print("OLAS TRANQUILAS");
   if (n == 3) Serial.print("FUERA, DESDE EL ABISMO");
   if (n == 4) Serial.print("SOMBRIO, SOMBRIO");
   if (n == 5) Serial.print("EN LA NEGRURA DE LA OSCURIDAD");
   if (n == 6) Serial.print("COGI TUS POEMAS");
   if (n == 7) Serial.print("APAGUE LA LAMPARA");
   if (n == 8) Serial.print("SE ME CIERRAN LOS OJOS");
   if (n == 9) Serial.print("AQUELLOS QUE ESTAN A LA IZQUIERDA");
   if (n == 10) Serial.print("LAS MUJERES DE CIENCIA");
   if (n == 11) Serial.print("LOS HOMBRES DE ACCION");
   if (n == 12) Serial.print("ME APRESURO");
   if (n == 13) Serial.print("POR QUE DESPERDICIARIAS");
   if (n == 14) Serial.print("CUANDO NOS ENCONTRAREMOS DE NUEVO?");
   if (n == 15) Serial.print("DURMIENDO UN POCO");
   if (n == 16) Serial.print("Y CON MUCHA PENA");
   if (n == 17) Serial.print("POR ESTOS POCOS PASOS");
   if (n == 18) Serial.print("AHORA, AL ANOCHECER");
   if (n == 19) Serial.print("HICE PROVECHOSAMENTE");
};
