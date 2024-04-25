:Date: 10/12/2018
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. _arduprog-haiku:

Haiku
=====
Programa para generar versos por ordenador.

Ejercicios
----------

1. Ejecutar el siguiente programa en Arduino.
   Para que aparezca la primera estrofa se debe abrir el Monitor Serie.
   Cada vez que se envía un carácter, aparece una estrofa nueva.

   .. code-block:: arduino
      :linenos:

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
         "ESCABULLENDOSE",
         "PISANDO",
         "CONTEMPLANDO",
         "MARCHITO",
         "ESCULPIDO",
         "ESCONDIDO",
         "CONFINADO",
         "ATORMENTADO",
         "DOBLANDO",
         "RETORCIENDO",
         "GOLPEANDO",
         "COLGANDO",
         "ENVOLVIENDO",
         "TRANSPARENTE",
         "CANSADO",
         "HACIA LA TIERRA",
         "CASACADA",
         "SACRIFICADOR",
         "RESBALADIZO",
         "EN PEDAZOS",
      };

      const char *frases[] = {
         "EN LA FRIA CORRIENTE",
         "AJENO A UN MUNDO DE BELLEZA",
         "OLAS TRANQUILAS",
         "FUERA, DESDE EL ABISMO",
         "SOMBRIO, SOMBRIO",
         "EN LA NEGRURA DE LA OSCURIDAD",
         "COGI TUS POEMAS",
         "APAGUE LA LAMPARA",
         "SE ME CIERRAN LOS OJOS",
         "AQUELLOS QUE ESTAN A LA IZQUIERDA",
         "LAS MUJERES DE CIENCIA",
         "LOS HOMBRES DE ACCION",
         "ME APRESURO",
         "POR QUE DESPERDICIARIAS",
         "CUANDO NOS ENCONTRAREMOS DE NUEVO?",
         "DURMIENDO UN POCO",
         "Y CON MUCHA PENA",
         "POR ESTOS POCOS PASOS",
         "AHORA, AL ANOCHECER",
         "HICE PROVECHOSAMENTE",
      };


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

2. Modificar el programa anterior con palabras y frases distitintas.

3. Modificar el programa anterior para que las estrofas tengan una
   estructura diferente.

