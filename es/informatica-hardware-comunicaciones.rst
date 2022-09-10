:Date: 08/06/2022
:Author: Carlos Pardo Martín
:Copyright: Creative Commons Attribution-ShareAlike 4.0 International


.. informatica-hardware-comunicaciones:

Comunicaciones
==============

.. note::
   PÁGINA EN CONSTRUCCIÓN

Las comunicaciones de los ordenadores permiten el movimiento de los datos
entre diferentes dispositivos y componentes del ordenador. 
Son elementos fundamentales que se encuentran en todos los niveles, 
desde las líneas de comunicación interna de un microprocesador hasta 
las líneas de comunicación de internet a nivel mundial.

.. contents:: Índice de contenidos
   :local:
   :depth: 2


Clasificación
-------------

Conexiones internas
  * Buses de placa base
  * SATA
  * PCI Express
  * Zócalo para memoria RAM
  * Zócalo para CPU

Conexiones externas
  * USB
  * Conectores de audio analógico
  * eSATA
  * PS/2
  * RS232

Conexiones de video
  * VGA
  * DVI
  * HDMI

Conexiones de red local
  * Ethernet

Conexiones inalámbricas
  * Bluetooth
  * Wifi


Conexiones internas
-------------------
.. glossary::

   Buses de placa base
      Son las pistas del circuito impreso que llevan los datos entre
      la CPU y el resto de los dispositivos conectados a la placa base.
      
      .. figure:: informatica/_images/informatica-motherboard-bus.jpg
         :align: center
         :width: 480px

         Bus de placa base.

         `Chrihern
         <https://commons.wikimedia.org/wiki/File:Motherboard_bus.jpg>`__,
         via Wikimedia Commons.


   SATA
      El bus `serial ATA <https://es.wikipedia.org/wiki/Serial_ATA>`__
      conecta las unidades de almacenamiento del ordenador 
      (HDD, SSD, discos ópticos) con el procesador. 
      El bus SATA lleva en el mercado desde 2003 y actualmente se encuentra
      en funcionamiento la versión 3.0.
      
      El cable de conexión desde la placa base hasta la unidad de
      almacenamiento puede llegar a tener hasta 1 metro de longitud, 
      aunque la mayoría de los cables fabricados tienen menor longitud.
      Esto es así porque SATA es un estándar pensado para conectar 
      dispositivos dentro de la caja o carcasa del ordenador.
      
      .. list-table::
         :widths: auto
         :header-rows: 1
         
         * - Versión
           - Año
           - Velocidad
         * - SATA 1.0
           - 2003
           - 150 MByte/s
         * - SATA 2.0
           - 2004
           - 300 MByte/s
         * - SATA 3.0
           - 2008
           - 600 MByte/s

      .. figure:: informatica/_images/informatica-sata-hdd.jpg
         :align: center
         :width: 480px

         Conectores SATA de datos y de alimentación de dos discos duros.

         `Dsimic
         <https://commons.wikimedia.org/wiki/File:2.5-inch_SATA_drive_on_top_of_a_3.5-inch_SATA_drive,_close-up_of_data_and_power_connectors.jpg>`__,
         `CC BY-SA 3.0 <https://creativecommons.org/licenses/by-sa/3.0/>`__,
         via Wikimedia Commons.

      .. figure:: informatica/_images/informatica-cable-sata.jpg
         :align: center
         :width: 240px

         Cable de SATA de datos.

         `Swiki
         <https://commons.wikimedia.org/wiki/File:SATA_Data_Cable.jpg>`__,
         `CC BY-SA 3.0 <https://creativecommons.org/licenses/by-sa/3.0/>`__,
         via Wikimedia Commons.


   PCI Express
      `PCI Express <https://es.wikipedia.org/wiki/PCI_Express>`__
      abrevidado PCIe o PCI-e es un conjunto de conectores internos
      de la placa base, que sirve para conectar tarjetas de expansión
      al ordenador. Estas tarjetas de expansión pueden ser **tarjetas 
      gráficas**, controladoras RAID, tarjetas de red Ethernet, tarjetas
      de sonido, etc.
      
      Existen 4 tamaños de conector dependiendo del número de canales
      de comunicación que contengan.
      
      .. list-table::
         :widths: auto
         :header-rows: 1
         
         * - Versión
           - Pines 
           - Tamaño
         * - PCI-E x1
           - 18 
           - 25 mm
         * - PCI-E x4
           - 32
           - 39 mm
         * - PCI-E x8
           - 49
           - 56 mm
         * - PCI-E x16
           - 82 
           - 89 mm

      .. figure:: informatica/_images/informatica-pci-express.jpg
         :align: center
         :width: 420px

         Conectores PCI Express x4, x16, x1, x16 y PCI x32 (no Express y 
         obsoleto).

         `Jona
         <https://commons.wikimedia.org/wiki/File:PCI-E_%26_PCI_slots_on_DFI_LanParty_nF4_SLI-DR_20050531.jpg>`__,
         `CC BY-SA 3.0 <https://creativecommons.org/licenses/by-sa/3.0/>`__,
         via Wikimedia Commons.

      La velocidad de transferencia depende de la versión de PCI Express  
      (aumenta cada pocos años) y del número de canales de comunicación 
      del conector.

      .. list-table::
         :widths: auto
         :header-rows: 1
         
         * - Versión
           - Año
           - Velocidad x1
           - Velocidad x16
         * - PCI-E 1.0
           - 2003
           - 0.25 GByte/s
           - 4.0 GByte/s
         * - PCI-E 2.0
           - 2007
           - 0.50 GByte/s
           - 8.0 GByte/s
         * - PCI-E 3.0
           - 2010
           - 1.0 GByte/s
           - 16 GByte/s
         * - PCI-E 4.0
           - 2017
           - 2.0 GByte/s
           - 32 GByte/s
         * - PCI-E 5.0
           - 2019
           - 3.9 GByte/s
           - 63 GByte/s
         * - PCI-E 6.0
           - 2021
           - 7.9 GByte/s
           - 126 GByte/s

      La aplicación más conocida de los conectores PCI-E x16 es la conexión
      de tarjetas gráficas.
      
      La aplicación más habitual de los conectores 
      `PCI-E x1 con un formato especial llamado M.2 
      <https://www.elespanol.com/omicrono/tecnologia/20181028/ssd-nvme-instalan-deberias-comprarte/348965861_0.html>`__
      es la conexión de unidades SSD muy rápidas y compactas.
      
      Los ordenadores personales más antiguos no incorporaban en la placa
      base muchas de las funciones actuales (sonido, comunicación Ethernet,
      buses USB, etc) y estas funciones tenían que ser suministradas por 
      tarjetas de expansión especializadas, conectadas a conectores de 
      expansión semejantes al actual PCI-Express.


   Zócalo para memoria RAM de tipo DIMM
      `DIMM <https://es.wikipedia.org/wiki/DIMM>`__
      son las siglas de Dual In-line Memory Module (módulo de memoria de 
      dos líneas) llamado así porque los conectores del módulo tienen dos
      caras de pines de conexión.
      
      Estos zócalos sirven para conectar a la placa base módulos de memoria
      RAM.
      
      Dependiendo del tipo de ordenador (de tipo caja o portátil) y 
      dependiendo de la versión de la RAM, estos módulos pueden tener 
      diferente número de contactos, diferente tamaño y diferente posición
      de la ranura central para evitar la conexión por error de módulos
      diferentes.
      
      .. figure:: informatica/_images/informatica-sodimm-ddr3.jpg
         :align: center
         :width: 480px

         Módulo de memoria SO-DIMM DDR3 para portátil.

         `Tobias B. Köhler
         <https://commons.wikimedia.org/wiki/File:4GB_DDR3_SO-DIMM.jpg>`__,
         `CC BY-SA 3.0 <https://creativecommons.org/licenses/by-sa/3.0/>`__,
         via Wikimedia Commons.

      .. figure:: informatica/_images/informatica-dimm-ddr2.jpg
         :align: center
         :width: 480px

         Módulo de memoria DIMM DDR y módulo DDR2 con diferente número de
         pines y distintas ranuras de seguridad.

         `Wagner51
         <https://commons.wikimedia.org/wiki/File:Notch_position_between_DDR_and_DDR2.jpg>`__,
         `CC BY-SA 3.0 <https://creativecommons.org/licenses/by-sa/3.0/>`__,
         via Wikimedia Commons.


   Zócalo para CPU
      El `zócalo de CPU <https://es.wikipedia.org/wiki/Z%C3%B3calo_de_CPU>`__
      permite conectar el microprocesador o CPU a la placa base.
      En placas base de alto rendimiento puede haber más de un zócalo para
      poder conectar varios microprocesadores en una misma placa base.
      
      Cada zócalo de CPU sirve para conectar microprocesadores de una 
      misma familia. Los zócalos cambian de forma y número de conexiones
      entre familias de microprocesadores y entre fabricantes de CPU 
      (Intel o AMD).
      
      El zócalo de CPU permite aumentar la potencia del ordenador cambiando
      el microprocesador antiguo por otro más potente de una familia 
      compatible con la del microprocesador anterior. 
      Esta operación suele ser sencilla de realizar y cuesta solo una 
      pequeña fracción de lo que costaría comprar un ordenador nuevo.

      Estos son algunos zócalos para ordenadores de escritorio:
      
      .. list-table::
         :widths: auto
         :header-rows: 1
         
         * - Nombre
           - Año
           - Familia
         * - `LGA 1155 (H2) <https://es.wikipedia.org/wiki/LGA_1155>`__
           - 2011 
           - Intel Sandy Bridge y Ivy Bridge
         * - `LGA 1150 (H3) <https://es.wikipedia.org/wiki/LGA_1150>`__
           - 2013
           - Intel Haswell y Broadwell
         * - `LGA 1151 (H4) <https://es.wikipedia.org/wiki/LGA_1151>`__
           - 2015
           - Intel Skylake​ y KabyLake
         * - `LGA 1200 <https://es.wikipedia.org/wiki/LGA_1200>`__
           - 2020
           - Intel Comet Lake
         * - `Socket  AM4 <https://es.wikipedia.org/wiki/Socket_AM4>`__
           - 2016
           - AMD  Zen+, Zen 2 y Zen 3
         * - `Socket AM5 <https://en.wikipedia.org/wiki/Socket_AM5>`__
           - 2022
           - AMD Zen 4

      .. figure:: informatica/_images/informatica-zocalo-1151.jpg
         :align: center
         :width: 340px

         Zócalo para CPU de tipo LGA 1151, también conocido como 
         `Socket H4 <https://es.wikipedia.org/wiki/LGA_1151>`__.

         `Xaar
         <https://commons.wikimedia.org/wiki/File:Socket_1151_closed_01.jpg>`__,
         `CC BY-SA 4.0 <https://creativecommons.org/licenses/by-sa/4.0/>`__,
         via Wikimedia Commons.
      

Conexiones externas
-------------------

.. glossary::

   USB
      El `USB <https://es.wikipedia.org/wiki/Universal_Serial_Bus>`__
      (Universal Serial Bus) es un estándar para dar conexión de datos y 
      alimentación a computadoras, periféricos y dispositivos 
      electrónicos.
      Comenzó a usarse de forma masiva a partir de 1998.
      
      Actualmente existen 4 grandes estándares USB con las características
      que aparecen en la siguiente tabla.
      
      .. list-table::
         :widths: auto
         :header-rows: 1
         
         * - Estándar
           - Año
           - Velocidad
           - Corriente
           - Otros
         * - USB 1.1
           - 1998
           - 1 Mbyte/s
           - 0.5 A
           - Solo conectores A y B
         * - USB 2.0
           - 2000
           - 50 Mbyte/s
           - 0.5 A
           -
         * - `USB 3.0 <https://es.wikipedia.org/wiki/USB_3.0>`__
           - 2008
           - 600 Mbyte/s
           - 0.9 A - 3.0 A
           - Color azul
         * - `USB 4.0 <https://es.wikipedia.org/wiki/USB4>`__
           - 2019
           - 4000 Mbyte/s
           - 3.0 A
           - Solo conector C
      
      `Conectores USB <https://en.wikipedia.org/wiki/USB_hardware#Connectors>`__
      
      .. figure:: informatica/_images/informatica-usb-connectors.jpg
         :align: center
         :width: 560px

         Conectores USB. Micro tipo B, UC-E6, mini tipo B, hembra tipo A, 
         macho tipo A, macho tipo B.

         `Viljo Viitanen
         <https://commons.wikimedia.org/wiki/File:Usb_connectors.JPG>`__,
         via Wikimedia Commons.
      

   Conectores de audio analógico
      Los `conectores de audio analógicos
      <https://es.wikipedia.org/wiki/Conector_de_audio_anal%C3%B3gico>`__
      se utiliza para conectar micrófonos, auriculares y otros sistemas de
      audio analógico a dispositivos electrónicos.
      
      Hay conectores de distintas medidas, pero el más popular es el 
      conector de 3,5 mm usado en la mayoría de los ordenadores y teléfonos
      inteligentes.
      
      Códigos de colores para conectores de audio de 3,5 mm en ordenadores
      personales.
      
      .. list-table::
         :widths: auto
         :header-rows: 1
         
         * - Color
           - Función
         * - Verde
           - Salida de audio. Canales frontales.
         * - Azul
           - Entrada de audio. Nivel de línea.
         * - Rosa/Rojo
           - Entrada de audio. Nivel de micrófono.
         * - Negro
           - Salida de audio. Canales traseros.
         * - Gris
           - Salida de audio. Canales laterales.
         * - Naranja
           - Salida de audio. Canal central y Subwoofer.

      .. figure:: informatica/_images/informatica-computer-audio.jpg
         :align: center
         :width: 320px

         Conectores de audio analógico de 3.5 mm de un ordenador personal.

         `Jud McCranie
         <https://commons.wikimedia.org/wiki/File:Computer_mike,_audio_out,_and_audio_in_jacks.jpg>`__,
         `CC BY-SA 4.0 <https://creativecommons.org/licenses/by-sa/4.0/>`__,
         via Wikimedia Commons.

   PS/2
      El conector `PS/2 <https://es.wikipedia.org/wiki/PS/2>`__
      toma su nombre de las computadoras IBM Personal System/2, creada por 
      IBM en 1987. Este conector se emplea para conectar teclados y 
      ratones.
      
      Actualmente estos conectores están **obsoletos**, pero todavía se 
      siguen incorporando en algunas placas base por motivos de 
      compatibilidad con los teclados y ratones más antiguos.
      Algunas placas base modernas tienen un solo conector mitad morado y 
      mitad verde que sirve para conectar tanto teclados como ratones 
      antiguos.
      
      .. figure:: informatica/_images/informatica-puertos-ps2.jpg
         :align: center
         :width: 320px

         Puertos PS/2 para teclado (morado) y para ratón (verde).

         `Norman Rogers
         <https://commons.wikimedia.org/wiki/File:Ps-2-ports.jpg>`__,
         via Wikimedia Commons.

   RS232
      El estándar de comunicaciones  
      `RS232 <https://es.wikipedia.org/wiki/RS-232>`__
      es una interfaz para intercambio de datos via serie de baja velocidad.
      
      Actualmente se encuentra obsoleto y no se incorpora en las placas 
      base, pero se puede añadir mediante una tarjeta de expansión PCI o 
      mediante un cable conversor de USB a RS-232.
      
      Este estándar fue ampliamente utilizado hace años, hasta que se fue
      reemplazando por el USB a partir de 1998. Por esa razón hay equipos
      antiguos en fábricas y laboratorios que utilizan todavía el estándar
      RS-232 y es necesario poder comunicarse con ellos.
      
      .. figure:: informatica/_images/informatica-rs232-connector.jpg
         :align: center
         :width: 320px

         Conector RS-232 (DB-9 hembra).

         `Faxe
         <https://commons.wikimedia.org/wiki/File:RS-232.jpeg>`__,
         `CC BY-SA 3.0 <https://creativecommons.org/licenses/by-sa/3.0/>`__,
         via Wikimedia Commons.


Conectores de vídeo
-------------------

.. glossary::

   VGA
      El conector `VGA
      <https://es.wikipedia.org/wiki/Video_Graphics_Array#Conector_VGA>`__
      (Video Graphics Array) de gráficos analógico.

      .. figure:: informatica/_images/informatica-conector-vga.jpg
         :align: center
         :width: 320px

         Conector VGA macho.

         `Afrank99
         <https://commons.wikimedia.org/wiki/File:VGA_Stecker.jpg>`__,
         `CC BY-SA 2.5 <https://creativecommons.org/licenses/by-sa/2.5/deed.en>`__,
         via Wikimedia Commons.

   DVI
      El conector `DVI
      <https://es.wikipedia.org/wiki/Digital_Visual_Interface>`__
      (Digital Visual Interface) de gráficos digital.

      .. figure:: informatica/_images/informatica-conector-dvi.jpg
         :align: center
         :width: 320px

         Conector DVI macho.

         `Greg Ebdon
         <https://commons.wikimedia.org/wiki/File:DVI_Connector.jpg>`__,
         `CC BY-SA 3.0 <https://creativecommons.org/licenses/by-sa/3.0/>`__,
         via Wikimedia Commons.

   HDMI
      El conector `HDMI
      <https://es.wikipedia.org/wiki/High-Definition_Multimedia_Interface>`__
      (High-Definition Multimedia Interface) de gráficos y audio digital.

      .. figure:: informatica/_images/informatica-conector-hdmi.jpg
         :align: center
         :width: 320px

         Conector HDMI macho.

         `Evan-Amos
         <https://commons.wikimedia.org/wiki/File:HDMI-Connector.jpg>`__,
         via Wikimedia Commons.
         

Conectores de red
-----------------

.. glossary::

   Ethernet
      El estándar de red local `Ethernet
      <https://es.wikipedia.org/wiki/Ethernet>`__
      se utiliza para conectar ordenadores en redes de área local, 
      que suelen unir entre sí a ordenadores de un mismo edificio o 
      incluso de diversos edificios que sean cercanos.

      Los cables de cobre suelen soportar una distancia máxima de 100 
      metros, pero esta distancia se puede ampliar utilizando switch 
      intermedios que hagan de repetidores o usando cables de fibra óptica.
      
      .. figure:: informatica/_images/informatica-ethernet-port.jpg
         :align: center
         :width: 320px

         Conector Ethernet RJ-45 hembra.

         `Amin
         <https://commons.wikimedia.org/wiki/File:Ethernet_port.jpg>`__,
         `CC BY-SA 4.0 <https://creativecommons.org/licenses/by-sa/4.0/>`__,
         via Wikimedia Commons.

      .. figure:: informatica/_images/informatica-ethernet-cable.jpg
         :align: center
         :width: 320px

         Cable UTP de Ethernet con conector RJ-45 macho.

         `David Monniaux
         <https://commons.wikimedia.org/wiki/File:Ethernet_RJ45_connector_p1160054.jpg>`__,
         `CC BY-SA 3.0 <https://creativecommons.org/licenses/by-sa/3.0/>`__,
         via Wikimedia Commons.

      El cable utilizado para las conexiones suele ser cable de cobre 
      UTP (Unshielded Twisted Pair o par trenzado no apantallado). 
      Este es un tipo de cable con peores prestaciones que los cables 
      de fibra óptica, pero es más barato de instalar y sencillo de 
      manejar, por lo que se utilizan mayoritariamente en conexiones
      cercanas, de pocos cientos de metros.

      .. figure:: informatica/_images/informatica-cable-utp.jpg
         :align: center
         :width: 320px

         Cable UTP de Ethernet, con cuatro pares de cable de cobre 
         trenzados y sin apantallar.

         `Baran Ivo
         <https://commons.wikimedia.org/wiki/File:UTP_cable.jpg>`__,
         via Wikimedia Commons.

      Estándares de comunicaciones Ethernet más usados con cable de cobre.
      
      .. list-table::
         :widths: auto
         :header-rows: 1
         
         * - Estándar
           - Año
           - Cables
           - Velocidad          
         * - `10Base T <https://es.wikipedia.org/wiki/10BASE-T>`__
           - 1990
           - UTP Categoría 3
           - 10 Mbit/s
         * - `100Base T2 <https://es.wikipedia.org/wiki/Fast_Ethernet>`__
           - 1998
           - UTP Categoría 5
           - 100 Mbit/s
         * - `1000Base T <https://es.wikipedia.org/wiki/1000BASE-T>`__
           - 1999
           - UTP Categoría 5e
           - 1000 Mbit/s
         * - `10GBase T <https://es.wikipedia.org/wiki/10_Gigabit_Ethernet>`__
           - 2006
           - UTP Categoría 6A
           - 10.000 Mbit/s
      

   Comunicación por fibra óptica
      Los estándares de `comunicación por fibra óptica
      <https://es.wikipedia.org/wiki/Comunicaci%C3%B3n_por_fibra_%C3%B3ptica#Aplicaciones>`__
      abarcan desde enlaces domésticos para audio digital, pasando por 
      enlaces de alta velocidad para Ethernet, hasta enlaces 
      intercontinentales para comunicaciones por internet.
      
      La tecnología más conocida por la mayoría de las personas es la 
      `FTTH o fibra hasta el hogar
      <https://es.wikipedia.org/wiki/Fibra_hasta_la_casa>`__,
      que instalan las compañías telefónicas para dar acceso
      a internet en los hogares.
      

Conexiones inalámbricas
-----------------------
.. glossary::

   Wifi
      El estándar `wifi
      <https://es.wikipedia.org/wiki/Wifi>`__
      de comunicaciones inalámbricas.

   Bluetooth
      El estándar `Bluetooth
      <https://es.wikipedia.org/wiki/Bluetooth>`__
      de comunicaciones inalámbricas.

