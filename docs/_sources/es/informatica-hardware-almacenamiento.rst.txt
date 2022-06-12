:Date: 08/06/2022
:Author: Carlos Pardo Martín
:Copyright: Creative Commons Attribution-ShareAlike 4.0 International


.. informatica-hardware-almacenamiento:

Almacenamiento de información
=============================
Los ordenadores son dispositivos que tratan y transforman información,
por lo que los dispositivos que almacenan esta información son
fundamentales para determinar la capacidad y velocidad del ordenador.



Clasificación de dispositivos de almacenamiento
-----------------------------------------------
Almacenamiento primario

  * Memoria RAM
  * Memoria ROM

Almacenamiento secundario

  * Disco de estado sólido SSD
  * Disco duro magnético HDD

Almacenamiento externo

  * Unidades ópticas CD-ROM, DVD, Blu-ray
  * Memoria USB 
  * Tarjetas SD
  * Cinta magnética
  * Discos flexibles

Almacenamiento virtual

  * Equipos NAS
  * Almacenamiento en la nube


Almacenamiento primario
-----------------------
.. glossary::

   Memoria RAM
      La `memoria RAM
      <https://es.wikipedia.org/wiki/Memoria_de_acceso_aleatorio>`__
      o memoria de acceso aleatorio es una memoria de almacenamiento
      temporal para los programas y datos que maneja la CPU.
      
      La memoria RAM debe ser muy rápida para no ralentizar la velocidad
      de la unidad central de proceso (CPU). Una memoria RAM actual puede
      transferir 21Gbytes por segundo.
      
      También debe tener suficiente tamaño para contener todos los 
      programas, apps y datos que se estén ejecutando de forma simultanea
      en el ordenador.
      En 2022, un smartphone medio suele tener de 4 a 8 Gbytes de 
      RAM y un ordenador personal de 8 a 16 Gbytes de RAM.
 
      .. figure:: informatica/_images/informatica-ram-ddr4.jpg
         :align: center
         :width: 340px

         Módulo de memoria RAM DDR4
         
         `Smial <https://commons.wikimedia.org/wiki/File:DDR4_DIMM_4GB_-2133_IMGP5813_smial_wp.jpg>`__,
         `GNU Free Documentation License <https://commons.wikimedia.org/wiki/Commons:GNU_Free_Documentation_License,_version_1.2>`__,
         via Wikimedia Commons.

      Como desventaja, es una memoria que pierde sus datos cuando se
      apaga la alimentación del ordenador y suele ser mucho más cara que 
      las memorias de almacenamiento secundario,
      5€/Gbyte de una memoria RAM frente a 0.02€/Gbyte de un disco 
      duro de 4Tbytes en 2022.


   Memoria ROM
      La `memoria ROM
      <https://es.wikipedia.org/wiki/Imagen_ROM>`__
      o memoria de solo lectura es una memoria de almacenamiento 
      permanente de programas del ordenador.
      Es donde se almacena el denominado 
      `Firmware <https://es.wikipedia.org/wiki/Firmware>`__,
      programas de solo lectura que manejan un dispositivo.
      
      Las memorias ROM que se utilizan hoy en día no son de solo lectura,
      suelen estar basadas en tecnología Flash y se pueden reescribir,
      aunque esto se realiza con muy poca frecuencia.
      
      Ejemplos de ROM son la memoria del BIOS (Sistema Básico de Entrada
      Salida) de un ordenador personal, o el programa interno de 
      dispositivos como un router, un mando a distancia, etc.
      
      .. figure:: informatica/_images/informatica-rom-bios.jpg
         :align: center
         :width: 340px
         
         Memoria Phoenix BIOS de una placa base de ordenador personal.

         `© Raimond Spekking <https://commons.wikimedia.org/wiki/File:Elitegroup_755-A2_-_Phoenix_Bios_D686-6679.jpg>`__,
         `CC BY-SA 4.0 <https://creativecommons.org/licenses/by-sa/4.0/>`__,
         via Wikimedia Commons.



Almacenamiento secundario
-------------------------
.. glossary::

   Unidad de disco duro (HDD)
      La `unidad de disco duro
      <https://es.wikipedia.org/wiki/Unidad_de_disco_duro>`__
      es un tipo de memoria secundaria basada en un disco giratorio
      impregnado con una sustancia magnética que permite almacenar
      información de forma permanente.
      
      Los discos duros son los encargados de almacenar los programas
      y los datos para que se mantengan mientras el ordenador está apagado.
      
      Cuando un usuario de ordenador quiere utilizar un programa o 
      visualizar un archivo de datos, la información se lee desde
      el disco duro y pasa a escribirse en la memoria RAM para que
      la CPU pueda trabajar con ellos.

      Los discos duros llevan muchos años en el mercado (desde 1956)
      por lo que se basan en tecnologías asentadas y muy optimizadas.
      A pesar de ello van sustituyéndose poco a poco por los SSD por 
      las múltiples ventajas que presentan.
      
      .. figure:: informatica/_images/informatica-hdd.jpg
         :align: center
         :width: 340px

         Unidad de disco duro (HDD) con conexión SATA, vista desde abajo.

         `Dmitry Makeev <https://commons.wikimedia.org/wiki/File:3.5%22_-_hard_disks.jpg>`__,
         `CC BY-SA 4.0 <https://creativecommons.org/licenses/by-sa/4.0/deed.en>`__,
         via Wikimedia Commons.


   Unidad de estado sólido (SSD)
      La `unidad de estado sólido
      <https://es.wikipedia.org/wiki/Unidad_de_estado_s%C3%B3lido>`__
      es un tipo de memoria secundaria basado en chips de tecnología Flash
      que almacenan información de forma permanente.
      
      Son más modernos en el mercado que los discos duros (desde 2009)
      y tienen menos capacidad a igualdad de precio, pero van mejorando
      rápidamente con los años y están sustituyendo poco a poco a 
      los discos duros tradicionales.
      
      .. figure:: informatica/_images/informatica-ssd-pcie.jpg
         :align: center
         :width: 340px
         
         Unidad de almacenamiento de estado sólido (SSD) con conexión 
         PCI Express.

         `D-Kuru <https://commons.wikimedia.org/wiki/File:Samsung_980_PRO_PCIe_4.0_NVMe_SSD_1TB-top_PNr%C2%B00915.jpg>`__,
         `CC BY-SA 4.0 <https://creativecommons.org/licenses/by-sa/4.0/deed.en>`__,
         via Wikimedia Commons.
      

      Comparación entre las unidades de estado sólido y los discos duros
      
      Ventajas:
         * Mayor velocidad de transferencia.
           600MB/s de un SSD frente a 100 Mbytes/s de un HDD
         * Menor tiempo de acceso.
           0ms de un SSD frente a 10 milisegundos de un HDD.
         * Mayor resistencia a los golpes y a las vibraciones.
         * Menor consumo eléctrico. 
           4W o 5W de un SSD a máximo rendimiento frente a
           6W a 10W de un HDD. 
         * Menor tasa de fallos de los SSD al no tener partes mecánicas.
         * Menor tamaño físico
         * Menor ruido generado

      Desventajas
         * Menor resistencia a muchas escrituras.
         * Mayor precio por Gbyte.
           0.02€ de un HDD frente a 0.09€ de un SSD.         


Almacenamiento externo
----------------------
.. glossary::

   Memoria USB
      La `memoria USB
      <https://es.wikipedia.org/wiki/Memoria_USB>`__
      es una memoria externa basada en 
      `memoria flash <https://es.wikipedia.org/wiki/Memoria_flash>`__
      con conexión de tipo USB.
      
      .. figure:: informatica/_images/informatica-pendrive.jpg
         :align: center
         :width: 340px

         Memoria USB (pendrive).

         `Evan-Amos <https://commons.wikimedia.org/wiki/File:SanDisk-Cruzer-USB-4GB-ThumbDrive.jpg>`__,
         Public Domain,
         via Wikimedia Commons.
      
   
   Tarjeta SD
      La memoria en `tarjeta SD
      <https://es.wikipedia.org/wiki/Secure_Digital>`__

      .. figure:: informatica/_images/informatica-sd.jpg
         :align: center
         :width: 340px

         Tarjetas de memoria microSD de varias capacidades.

         `Afrank99 <https://commons.wikimedia.org/wiki/File:MicroSD_cards_2GB_4GB_8GB.jpg>`__,
         `CC BY-SA 3.0 <https://creativecommons.org/licenses/by-sa/3.0/deed.en>`__,
         via Wikimedia Commons.


   CD-ROM y DVD
      El `CDROM
      <https://es.wikipedia.org/wiki/CD-ROM>`__
      y el `DVD
      <https://es.wikipedia.org/wiki/DVD>`__
   
   
      .. figure:: informatica/_images/informatica-cdrom.jpg
         :align: center
         :width: 340px

         Disco óptico CD-ROM.

         `Don-vip <https://commons.wikimedia.org/wiki/File:Windows_2000_SP4_install_disc_(French).jpg>`__,
         `CC BY-SA 4.0 <https://creativecommons.org/licenses/by-sa/4.0/deed.en>`__,
         via Wikimedia Commons.
   
   
   Blu-Ray
      El `Blu-ray
      <https://es.wikipedia.org/wiki/Disco_Blu-ray>`__

      .. figure:: informatica/_images/informatica-blu-ray-disk.jpg
         :align: center
         :width: 340px

         Discos ópticos Blu-ray.

         `Racer009 <https://commons.wikimedia.org/wiki/File:SanDisk-Cruzer-USB-4GB-ThumbDrive.jpg>`__,
         `CC0 1.0 <https://creativecommons.org/publicdomain/zero/1.0/deed.en>`__,
         via Wikimedia Commons.
         
         
   Cinta magnética
      La `cinta magnética
      <https://es.wikipedia.org/wiki/Cinta_magn%C3%A9tica_de_almacenamiento_de_datos>`__
      
      .. figure:: informatica/_images/informatica-tape-lto4.jpg
         :align: center
         :width: 340px

         Cinta magnética LTO.

         `Hannes Grobe <https://commons.wikimedia.org/wiki/File:400gb-lto-tape_hg.jpg>`__,
         `CC BY-SA 3.0 <https://creativecommons.org/licenses/by/3.0/deed.en>`__,
         via Wikimedia Commons.


   Discos flexibles
      Los `disquetes o discos flexibles
      <https://es.wikipedia.org/wiki/Disquete>`__
      
      .. figure:: informatica/_images/informatica-floppy-disk.jpg
         :align: center
         :width: 340px

         Discos flexibles (floppy disks) de diferentes tamaños.

         `George Chernilevsky <https://commons.wikimedia.org/wiki/File:Floppy_disk_2009_G1.jpg>`__,
         Public Domain,
         via Wikimedia Commons.


Almacenamiento virtual
----------------------
.. glossary::

   Servidor NAS
      El `servidor NAS
      <https://es.wikipedia.org/wiki/Almacenamiento_conectado_en_red>`__

      .. figure:: informatica/_images/informatica-nas.png
         :align: center
         :width: 340px

         Synology DiskStation NAS (Network Attached Storage) de 6 bahías.
         
         `Radha 1100 <https://commons.wikimedia.org/wiki/File:Synology_DS1621xs%2B_6_Bay_Network_Attached_Storage.png>`__,
         `CC BY-SA 4.0 <https://creativecommons.org/licenses/by/4.0/deed.en>`__,
         via Wikimedia Commons.
         

   Almacenamiento en la nube
      La `nube
      <https://es.wikipedia.org/wiki/Computaci%C3%B3n_en_la_nube>`__

         
      .. raw:: html

         <div class="video-center">
         <iframe src="https://www.youtube.com/embed/XZmGGAbHqa0"
         frameborder="0" allow="accelerometer; autoplay; encrypted-media;
         gyroscope; picture-in-picture" allowfullscreen></iframe>
         </div>   