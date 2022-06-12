:Date: 08/06/2022
:Author: Carlos Pardo Martín
:Copyright: Creative Commons Attribution-ShareAlike 4.0 International


.. informatica-hardware-intro:

Introducción al Hardware
========================
El `hardware <https://es.wikipedia.org/wiki/Hardware>`__
(pronunciado jard.wer)
se refiere a las partes físicas de un sistema informático.
Son los componentes eléctricos, electrónicos y mecánicos​ de un ordenador
tales como cables, cajas, periféricos, etc.

Por el contrario los programas y datos de un ordenador, que son
intangibles, se denominan software.


Hardware de un ordenador personal
---------------------------------

.. figure:: informatica/_images/informatica-pc-exploded.png
   :align: center
   :width: 480px

   `Gustavb <https://commons.wikimedia.org/wiki/File:Personal_computer,_exploded_5.svg>`__,
   `CC BY-SA 3.0 Unported <https://creativecommons.org/licenses/by-sa/3.0/deed.en>`__,
   via Wikimedia Commons.

1. Monitor.
2. Placa base.
3. Microprocesador (CPU) y zócalo.
4. Módulo de RAM y ranuras.
5. Tarjetas y ranuras de expansión.
6. Fuente de alimentación.
7. Unidad de disco óptico (CD, DVD, BD).
8. Unidad de disco duro o unidad de estado sólido.
9. Teclado.
10. Ratón.


Clasificación de los ordenadores
--------------------------------
Según sea la potencia y tamaño del hardware de un ordenador podemos
clasificar a los ordenadores en alguno de los siguientes apartados.

.. glossary::

   Controladores programables
      Son pequeños ordenadores de baja potencia, destinados a controlar
      de forma inteligente aparatos domésticos, elementos de un automóvil,
      etc.
      Estos controladores son los que permiten realizar programas a una
      lavadora, temporizar digitalmente un horno microondas, activar el
      freno ABS de un automóvil, realizar mediciones de consumo eléctrico
      a distancia, validar una tarjeta de transporte en el autobús,
      encender una bombilla mediante conexión wifi, etc.

      En la industria se utilizan controladores programables especializados
      para mover máquinas de forma automática o para recoger datos y
      controlar procesos industriales. Estos controladores
      se denominan `PLC <https://es.wikipedia.org/wiki/Controlador_l%C3%B3gico_programable>`__
      y `SCADA <https://es.wikipedia.org/wiki/SCADA>`__.

      A medida que se abaratan los precios de la electrónica cada vez más
      aparatos incorporan pequeños ordenadores que les añaden inteligencia.
      Estos pequeños controladores añadidos a las cosas cotidianas y conectados
      a internet es lo que se denomina `Internet de las cosas
      <https://es.wikipedia.org/wiki/Internet_de_las_cosas>`__.

      Uno de los controladores para uso doméstico y hobby más conocido es
      la placa `Arduino UNO <https://es.wikipedia.org/wiki/Arduino_Uno>`__
      con arquitectura de 8 bits y 32kbytes de memoria RAM.

      .. figure:: arduprog/_images/img-0098b.jpg
         :align: center
         :width: 340px

         Placa controladora Arduino UNO.


   Wearables
      Un wearable o `tecnología vestible
      <https://es.wikipedia.org/wiki/Tecnolog%C3%ADa_vestible>`__
      es un pequeño ordenador incorporado a prendas de vestir.
      Incluyen relojes inteligentes (smartwatch), gafas inteligentes, etc.

      Esta tecnología puede ser utilizada para monitorizar la salud
      de los usuarios.

      .. figure:: informatica/_images/informatica-apple-watch.jpg
         :align: center
         :width: 340px

         Apple Watch Serie 6 Navy Blue.

         `Avia Husk <https://commons.wikimedia.org/wiki/File:Apple_Watch_Series_6.jpg>`__,
         `CC BY-SA 4.0 International <https://creativecommons.org/licenses/by-sa/4.0/deed.en>`__,
         via Wikimedia Commons.


   Ordenador de una sola placa (SBC)
      Los `ordenadores de una sola placa
      <https://es.wikipedia.org/wiki/Placa_computadora>`__
      son ordenadores completos en una sola placa de circuito impreso
      de tamaño reducido que incluye CPU, RAM, periféricos, conectores
      y demás componentes típicos de un ordenador.

      Uno de los SBC de bajo costo más conocidos es la placa
      Raspberry Pi

      .. figure:: informatica/_images/informatica-raspberry-pi.jpg
         :align: center
         :width: 340px

         Raspberry Pi 2 model B.

         `Evan-Amos <https://commons.wikimedia.org/wiki/File:Raspberry-Pi-2-Bare-BR.jpg>`__,
         Public Domain, via Wikimedia Commons.


   SmartTV
      Son pequeños ordenadores pensados para dar inteligencia (smart) a una
      televisión tradicional. Permiten desde decodificar las señales
      digitales vía satélite hasta añadir capacidades como conectarse a
      internet y ver servicios de streaming como Netflix, HBO o Amazon
      Prime.

      Algunos de los más conocidos son
      `Google Chromecast <https://es.wikipedia.org/wiki/Google_Chromecast>`__,
      `Amazon Fire TV <https://es.wikipedia.org/wiki/Amazon_Fire_TV>`__ y
      `Apple TV <https://es.wikipedia.org/wiki/Apple_TV>`__,

      Los televisores actuales (smartTV) ya llevan incorporados ordenadores
      que permiten realizar estas tareas, al igual que conectarse por
      internet a las empresas fabricantes.
      Esto ha ocasionado polémicas debido a que estos televisores pueden
      espiar lo que ocurre a su alrededor.

      .. figure:: informatica/_images/informatica-fire-tv.jpg
         :align: center
         :width: 340px

         Amazon Fire TV 4K.

         `PAG DEV <https://commons.wikimedia.org/wiki/File:Amazon_Fire_TV_4k.jpg>`__,
         `CC BY-SA 4.0 International <https://creativecommons.org/licenses/by-sa/4.0/deed.en>`__,
         via Wikimedia Commons.

   Videoconsolas
      Las `videoconsolas <https://es.wikipedia.org/wiki/Videoconsola>`__
      son ordenadores orientados a ejecutar videojuegos.
      Pueden tener una potencia relativamente elevada.

      Su uso se reduce exclusivamente a jugar y la disponibilidad de
      muchos juegos está limitada a una sola plataforma, por lo que muchos
      usuarios de videojuegos prefieren usar un ordenador personal (PC)
      de altas características en su lugar.
      La diferencia entre los dos tipos de ordenadores reside en el precio.
      Para una misma potencia de cálculo, un PC puede costar el doble que
      una videoconsola de última generación equivalente.

      .. figure:: informatica/_images/informatica-ps4.jpg
         :align: center
         :width: 340px

         Sony PlayStation 4 de 2014.

         `Evan-Amos <https://commons.wikimedia.org/wiki/File:PS4-Console-wDS4.jpg>`__,
         Public Domain, via Wikimedia Commons.


   Ordenadores dedicados
      Existen más tipos de ordenadores dedicados realizar una sola función
      de forma especializada.
      Por ejemplo los servidores de datos `NAS
      <https://es.wikipedia.org/wiki/Almacenamiento_conectado_en_red>`__
      que permiten compartir archivos de datos en una red de ordenadores,
      fotocopiadoras, routers, impresoras, scanner, cajeros automáticos,
      máquinas expendedoras y un largo etcétera.


   Teléfono inteligente
      Un `teléfono inteligente
      <https://es.wikipedia.org/wiki/Tel%C3%A9fono_inteligente>`__
      o smartphone es un dispositivo que combina las funciones
      de un teléfono móvil con el de un ordenador de bolsillo.

      Actualmente son los ordenadores de uso más habitual para la mayoría
      de las personas.

      Su sistema operativo suele ser Android (de Google) o iOS (de Apple).

      .. figure:: informatica/_images/informatica-iphone-13.jpg
         :align: center
         :width: 340px

         Apple iPhone 13.

         `SimonWaldherr <https://commons.wikimedia.org/wiki/File:IPhone_13_Pro.jpg>`__,
         `CC BY-SA 4.0 <https://creativecommons.org/licenses/by-sa/4.0/deed.en>`__,
         via Wikimedia Commons.


   Tableta
      Una `tableta <https://es.wikipedia.org/wiki/Tableta_(computadora)>`__
      o tablet es un pequeño ordenador basado en una pantalla táctil
      que generalmente funciona con los mismos sistemas operativos que
      los teléfonos móviles (Android y

      En ciertos casos pueden incluir periféricos como un teclado o ratón,
      aunque la mayoría de las veces solo se manejan mediante la pantalla
      táctil.

      Hay teléfonos inteligentes con un tamaño mayor del habitual
      (mayor de 6 pulgadas de diagonal) se les llama tabléfonos
      o phablet.


   Ordenador portátil
      Un `ordenador portátil
      <https://es.wikipedia.org/wiki/Computadora_port%C3%A1til>`__
      es un ordenador personal (PC) capaz de realizar todas las tareas
      de un ordenador de escritorio, pero con un pequeño tamaño y batería
      incluida por lo que puede usarse en cualquier lugar y desplazarle
      fácilmente.

      Los portátiles **Netbooks** son ordenadores pensados para conectarse
      a internet y con menos capacidades que un portátil habitual.
      Suelen llevar un sistema operativo ligero basado en Linux y tienen
      un precio reducido, aunque no disponen de todas las capacidades
      de otros portátiles.
      Los modelos más conocidos son los **Chromebook** de Google.

      .. figure:: informatica/_images/informatica-laptop.png
         :align: center
         :width: 340px

         `Pixabay <https://commons.wikimedia.org/wiki/File:Black_laptop_computer_open_frontal.svg>`__
         `CC0 1.0 Public Domain <https://creativecommons.org/publicdomain/zero/1.0/deed.en>`__


   Ordenador personal de escritorio
      Con ordenador personal o PC se suele denominar a un microordenador de
      escritorio, de uso general, para ser usado por una persona.
      Los ordenadores personales actuales comenzaron a venderse en 1981
      por parte de IBM y pronto aparecieron ordenadores con un funcionamiento
      semejante (clónicos) fabricados por otras empresas.

      Su sistema operativo suele ser Windows, MacOS o Linux.

      Los ordenadores personales de altas prestaciones también se denominan
      `estación de trabajo
      <https://es.wikipedia.org/wiki/Estaci%C3%B3n_de_trabajo>`__.
      Tienen mucha más potencia de cálculo y capacidad de almacenamiento
      que un ordenador personal habitual.

      .. figure:: informatica/_images/informatica-computer-02.png
         :align: center
         :width: 340px

         Imagen de `OpenClipart-Vectors <https://pixabay.com/es/users/openclipart-vectors-30363/>`__
         en `Pixabay <https://pixabay.com/es/vectors/computadora-escritorio-158675/>`__


   Mainframe
      Un mainframe o `unidad central
      <https://es.wikipedia.org/wiki/Unidad_central>`__
      es un ordenador utilizado principalmente por grandes organizaciones
      para aplicaciones críticas donde el ordenador debe ser muy fiable
      y tener gran capacidad de almacenamiento.

      Estos ordenadores se utilizan para realizar operaciones bancarias,
      censos, servidores de internet, etc.


   Clúster de ordenadores
     Un `clúster de ordenadores
     <https://es.wikipedia.org/wiki/Cl%C3%BAster_de_computadoras>`__
     es un gran ordenador compuesto por un conjunto de ordenadores
     unidos entre sí por una red de alta velocidad y sincronizados
     por el sistema operativo, que suele ser Linux, para que se comporten
     como un solo ordenador.

     Actualmente este tipo de ordenadores está sustituyendo poco a poco
     a los mainframes en sus funciones.

      .. figure:: informatica/_images/informatica-cluster-nec.jpg
         :align: center
         :width: 340px

         `Hindermath <https://commons.wikimedia.org/wiki/File:Nec-cluster.jpg>`__,
         `CC BY-SA 3.0 <https://creativecommons.org/licenses/by-sa/3.0/deed.en>`__,
         via Wikimedia Commons.

   Superordenador
      Un `superordenador <https://es.wikipedia.org/wiki/Supercomputadora>`__
      es un gran ordenador utilizado para grandes cálculos tales como
      predecir el tiempo atmosférico, investigaciones sobre el genoma,
      nuevos medicamentos, etc.

      En un principio eran mainframes dedicados a cálculo intensivo, pero
      actualmente están basados en la tecnología de clúster de ordenadores.

      En España el superordenador más famoso es el `MareNostrum
      <https://es.wikipedia.org/wiki/MareNostrum>`__
      , compuesto por un clúster de 48 896 procesadores Intel Xeon.

      .. figure:: informatica/_images/informatica-mare-nostrum.jpg
         :align: center
         :width: 340px

         Supercomputador MareNostrum 4 en el centro de supercomputación
         de Barcelona.

         `Vcarceler <https://commons.wikimedia.org/wiki/File:BSC-MareNostrum4-F.jpg>`__,
         `CC BY-SA 4.0 <https://creativecommons.org/licenses/by/4.0/deed.en>`__,
         via Wikimedia Commons.


Esquema simplificado de un ordenador personal
---------------------------------------------

.. figure:: informatica/_images/informatica-esquema-ordenador.png
   :align: center
   :width: 480px

   Esquema simplificado de un ordenador personal.
