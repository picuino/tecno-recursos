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
  * Zócalo para DIMM
  * Zócalo para CPU

Conexiones externas
  * USB
  * Audio
  * PS/2
  * eSATA
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
      Por esta razón este es un estándar pensado para conectar dispositivos
      dentro de la caja o carcasa del ordenador.
      
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
         via Wikimedia Commons.
         `CC BY-SA 3.0 <https://creativecommons.org/licenses/by-sa/3.0/>`__,
         via Wikimedia Commons.

      .. figure:: informatica/_images/informatica-cable-sata.jpg
         :align: center
         :width: 240px

         Cable de SATA de datos.

         `Swiki
         <https://commons.wikimedia.org/wiki/File:SATA_Data_Cable.jpg>`__,
         via Wikimedia Commons.
         `CC BY-SA 3.0 <https://creativecommons.org/licenses/by-sa/3.0/>`__,
         via Wikimedia Commons.

   PCI Express
      `PCI Express <https://es.wikipedia.org/wiki/PCI_Express>`__
      abrevidado PCIe o PCI-e es un conjunto de conectores internos
      de la placa base, que sirven para conectar tarjetas de expansión
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

   Zócalo para módulo de memoria RAM de tipo DIMM
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
         via Wikimedia Commons.
         `CC BY-SA 3.0 <https://creativecommons.org/licenses/by-sa/3.0/>`__,
         via Wikimedia Commons.

      .. figure:: informatica/_images/informatica-dimm-ddr2.jpg
         :align: center
         :width: 480px

         Módulo de memoria DIMM DDR y módulo DDR2 con diferente número de
         pines y distintas ranuras de seguridad.

         `Wagner51
         <https://commons.wikimedia.org/wiki/File:Notch_position_between_DDR_and_DDR2.jpg>`__,
         via Wikimedia Commons.
         `CC BY-SA 3.0 <https://creativecommons.org/licenses/by-sa/3.0/>`__,
         via Wikimedia Commons.


   Zócalo para CPU
      El `Zócalo_de_CPU <https://es.wikipedia.org/wiki/Z%C3%B3calo_de_CPU>`__
      

Conexiones externas
-------------------

.. glossary::

   USB
      El `USB <https://es.wikipedia.org/wiki/Universal_Serial_Bus>`__
      (Universal Serial Bus)

   Audio
      Los `conectores de audio analógicos
      <https://es.wikipedia.org/wiki/Conector_de_audio_anal%C3%B3gico>`__

   eSATA
      La interfaz `external SATA
      <https://es.wikipedia.org/wiki/Serial_ATA#SATA_externo_(eSATA)>`__

   PS/2
      El conector `PS/2 <https://es.wikipedia.org/wiki/PS/2>`__

   RS232
      El estándar `RS232 <https://es.wikipedia.org/wiki/RS-232>`__


Conectores de vídeo
-------------------

.. glossary::

   VGA
      El conector `VGA
      <https://es.wikipedia.org/wiki/Video_Graphics_Array#Conector_VGA>`__
      (Video Graphics Array)
      de gráficos analógico.

   DVI
      El conector `DVI
      <https://es.wikipedia.org/wiki/Digital_Visual_Interface>`__
      (Digital Visual Interface)
      de gráficos digital.

   HDMI
      El conector `HDMI
      <https://es.wikipedia.org/wiki/High-Definition_Multimedia_Interface>`__
      (High-Definition Multimedia Interface)
      de gráficos digital.


Conectores de red
-----------------

.. glossary::

   Ethernet
     El estándar de red local `Ethernet
     <https://es.wikipedia.org/wiki/Ethernet>`__
     suele utilizar un conector RJ-45 con cable UTP.

   Comunicación por fibra óptica
      Los estándares de `comunicación por fibra óptica
      <https://es.wikipedia.org/wiki/Comunicaci%C3%B3n_por_fibra_%C3%B3ptica#Aplicaciones>`__
      abarcan desde enlaces domésticos para audio pasando por enlaces de 
      alta velocidad para Ethernet, hasta enlaces intercontinentales para
      comunicaciones por internet.
      
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

