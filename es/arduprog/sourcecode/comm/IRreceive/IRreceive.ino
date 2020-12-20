      /*
         Lee códigos de un mando a distancia con protocolo NEC
         desde un receptor de infrarrojos.
         Envía el código por el puerto de comunicaciones serie.
         Envía el código a un display de 7 segmentos.
      */
      #include <IRremote.h>
      #include <Picuino.h>
      #include <Serial.h>

      const long SERIAL_BAUD = 19200; // Velocidad del puerto serie en baudios
      const int  RECV_PIN = 2;        // Pin de recepción de datos infrarrojos


      // Inicia un receptor de infrarrojos
      IRrecv ir_recv(RECV_PIN);
      decode_results result;

      // Función que extrae el código de tecla de del receptor de infrarrojos.
      int ir_read(void) {
         int code;
         // Si se ha recibido un código
         if (ir_recv.decode(&result)) {
            // Si el código es de protocolo NEC, devuelve el código
            if (result.decode_type == NEC) {          
               // Prepara para recibir el siguiente código
               code = result.value;
               ir_recv.resume();
               return code;
            }
            ir_recv.resume();
         }
         return -1;  // Devuelve un código de error
      }


      // Inicia todos los componentes
      void setup() {
         Serial.begin(SERIAL_BAUD); // Inicia las comunicaciones serie
         ir_recv.enableIRIn();      // Inicia el receptor de infrarrojos
         pio.begin();               // Inicia la placa Picuino
      }

      // Bucle principal
      void loop() {
         int code;

         // Lee el código recibido por el receptor de infrarrojos
         code = ir_read();
         
         // Si es un código válido, envía el código al puerto serie y al display
         if (code != -1) {
            Serial.println(code, HEX);
            pio.dispWrite((unsigned)code >> 8);
         }

         delay(50);
      }
