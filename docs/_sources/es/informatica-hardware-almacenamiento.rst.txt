:Date: 08/06/2022
:Author: Carlos Pardo Martín
:Copyright: Creative Commons Attribution-ShareAlike 4.0 International


.. informatica-hardware-almacenamiento:

Almacenamiento de información
=============================
Los ordenadores son dispositivos que tratan y transforman información,
por lo que los dispositivos que almacenan esta información son
fundamentales para determinar la capacidad y velocidad del ordenador.

.. contents:: Índice de contenidos
   :local:
   :depth: 2


Clasificación de dispositivos de almacenamiento
-----------------------------------------------
Almacenamiento primario

  * Memoria RAM
  * Memoria caché
  * Búfer de datos

Almacenamiento secundario

  * Memoria ROM
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
Las memorias de almacenamiento primario son los dispositivos que contienen
la información con la que está trabajando en este momento el procesador.

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
      5€/Gbyte de una memoria RAM frente a 0,02€/Gbyte de un disco 
      duro de 4Tbytes en 2022.


   Memoria caché
      La `memoria caché
      <https://es.wikipedia.org/wiki/Cach%C3%A9_(inform%C3%A1tica)>`__
      es un tipo de memoria rápida que almacena temporalmente los 
      contenidos leídos de la memoria RAM para que las posteriores
      peticiones de lectura se puedan atender con mayor rapidez.
      
      Funciona de manera semejante a la memoria principal, pero es de 
      menor tamaño y de acceso más rápido. Surgió cuando la memoria RAM
      ya no fue capaz de trabajar a la misma velocidad del procesador
      y sirve para que el microprocesador reduzca el tiempo de acceso 
      a datos ubicados en la memoria RAM que se utilizan con más 
      frecuencia.
      
      Hoy en día la memoria caché de la RAM suele estar integrada dentro
      del propio procesador y suele tener un tamaño de varios megabytes.


   Búfer de datos
      Un `búfer de datos
      <https://es.wikipedia.org/wiki/B%C3%BAfer_de_datos>`__
      es un espacio de memoria temporal que almacena datos de lectura o de 
      escritura a un periférico para acelerar el funcionamiento del 
      procesador o para evitar que un dispositivo pierda datos durante una 
      transferencia de datos irregular.
      
      Los búfer de escritura para un dispositivo lento, como un disco duro
      o un pendrive, almacenan varios mega bytes de datos que son enviados 
      en ráfagas rápidas por el procesador para, más tarde, escribirlos 
      en el dispositivo de almacenamiento a menor velocidad y de manera
      continua.
      
      Los dispositivos de entrada, como los teclados o ratones, también 
      tienen búfer de lectura que va almacenando los datos que envían
      los periféricos hasta que el procesador los lee rápidamente.
      De esta manera el microprocesador principal no tiene que estar 
      atendiendo continuamente a un dispositivo lento, sino que lo 
      atiende a ráfagas rápidas, unas 100 veces por segundo.
      
      El búfer de datos forma parte de los periféricos de entrada/salida
      y de los medios de almacenamiento.
      
      
Almacenamiento secundario
-------------------------
Los dispositivos de almacenamiento secundario de un ordenador son 
memorias no volátiles, es decir que almacenan datos a pesar de que el
ordenador no tenga alimentación, que se suelen instalar de forma 
permanente en el interior del ordenador para que almacenen el sistema
operativo y los diferentes programas y datos de uso habitual.

.. glossary::

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
      Por esta razón esta memoria hoy en día también se denomina 
      memoria Flash.
      
      Las memorias ROM o Flash suelen ser más lentas, más sencillas y de
      menor capacidad que las memorias SSD, aunque ambas estén basadas 
      internamente en la misma tecnología.
      
      Ejemplos de ROM son la memoria del BIOS (Sistema Básico de Entrada
      Salida) de un ordenador personal, o el programa interno de 
      dispositivos como un router, un mando a distancia, etc.

      .. figure:: informatica/_images/informatica-rom-bios.jpg
         :align: center
         :width: 340px
         
         Memoria ROM Phoenix BIOS de una placa base de ordenador personal.

         `© Raimond Spekking <https://commons.wikimedia.org/wiki/File:Elitegroup_755-A2_-_Phoenix_Bios_D686-6679.jpg>`__,
         `CC BY-SA 4.0 <https://creativecommons.org/licenses/by-sa/4.0/>`__,
         via Wikimedia Commons.


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
           600MBytes/s de un SSD frente a 100 Mbytes/s de un HDD
         * Menor tiempo de acceso.
           0,1ms de un SSD frente a 10 milisegundos de un HDD.
         * Mayor resistencia a los golpes y a las vibraciones.
         * Menor tasa de fallos de los SSD al no tener partes mecánicas.
         * Menor consumo eléctrico. 
           4W o 5W de un SSD a máximo rendimiento frente a
           6W a 10W de un HDD. 
         * Menor tamaño físico.
         * Menor ruido generado.

      Desventajas
         * Menor resistencia a un gran número de escrituras.
         * Mayor precio por Gbyte.
           0,08€ de un SSD frente a 0,02€ de un HDD en 2022.


   Tecnología SMART
      La `tecnología SMART
      <https://es.wikipedia.org/wiki/S.M.A.R.T.>`__ 
      que implementan los discos duros y las unidades de estado sólido 
      es un sistema de detección temprana de fallos que permite conocer
      con antelación si un disco duro da señales de fallar próximamente.
      
      La tecnología SMART monitoriza parámetros de la unidad como su
      temperatura, sectores defectuosos, cantidad de datos escritos, 
      errores de lectura, tiempo de funcionamiento, número de arranques,
      etc.
      Aunque no es capaz de detectar todos los fallos posibles, si que 
      permite avisar ante la mayoría de los fallos debidos a una 
      degradación de la unidad.

      Existen varios programas que permiten leer los parámetros SMART de 
      una unidad de almacenamiento.
      Algunos programas de monitorización son:
      
      * `CrystalDiskInfo <https://crystalmark.info/en/software/crystaldiskinfo/>`__
      * `HDDScan <https://hddscan.com/>`__
      * `Clear Disk Info <https://www.carifred.com/cleardiskinfo/>`__
      * `HDD Health <https://panterasoft.com/download_ok.html>`__


Almacenamiento externo
----------------------
Los dispositivos de almacenamiento externo son removibles, es decir que se
pueden desconectar con facilidad del ordenador para ser transportados.

.. glossary::

   Memoria USB
      La `memoria USB
      <https://es.wikipedia.org/wiki/Memoria_USB>`__
      es una memoria externa basada en 
      `memoria flash <https://es.wikipedia.org/wiki/Memoria_flash>`__
      con conexión de tipo USB.

      Su capacidad máxima aumenta con los años debido a la ley de Moore.
      en 2022 es sencillo conseguir una memoria USB de 512 Gbytes por 
      un precio que ronda de 20 a 40 Euros.
      
      La velocidad de lectura suele ser menor que la de un disco duro
      y la velocidad de escritura suele ser mucho menor en la mayoría
      de los dispositivos.
      
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
      se basa en la misma tecnología que las unidades de memoria USB y 
      tienen rendimientos semejantes.
      
      Las diferencias fundamentales entre las dos tecnologías se encuentran
      en el tipo de comunicación con el ordenador, que es más sencilla que 
      el USB, y en el tamaño mucho menor sobre todo de las tarjetas 
      microSD.
      
      .. figure:: informatica/_images/informatica-sd.jpg
         :align: center
         :width: 340px

         Tarjetas de memoria microSD de varias capacidades.

         `Afrank99 <https://commons.wikimedia.org/wiki/File:MicroSD_cards_2GB_4GB_8GB.jpg>`__,
         `CC BY-SA 3.0 <https://creativecommons.org/licenses/by-sa/3.0/deed.en>`__,
         via Wikimedia Commons.


   CD-ROM, DVD, Blu-ray
      El `CDROM
      <https://es.wikipedia.org/wiki/CD-ROM>`__,
      el `DVD
      <https://es.wikipedia.org/wiki/DVD>`__
      y el `Blu-ray
      <https://es.wikipedia.org/wiki/Disco_Blu-ray>`__      
      son unidades ópticas de almacenamiento de datos.
      
      .. figure:: informatica/_images/informatica-cdrom.jpg
         :align: center
         :width: 340px

         Disco óptico CD-ROM.

         `Don-vip <https://commons.wikimedia.org/wiki/File:Windows_2000_SP4_install_disc_(French).jpg>`__,
         `CC BY-SA 4.0 <https://creativecommons.org/licenses/by-sa/4.0/deed.en>`__,
         via Wikimedia Commons.


      Todas ellas se basan en una lámina de material metálico plateado que
      refleja un fino haz de luz láser o no la refleja dependiendo de las
      marcas que se graban en un surco en forma de espiral a lo largo del 
      disco.
      
      La diferencia fundamental entre las distintas tecnologías es la
      creciente capacidad de almacenamiento y mayor velocidad de 
      transferencia de los dispositivos más modernos.
      
      .. figure:: informatica/_images/informatica-cdrom-surface.jpg
         :align: center
         :width: 340px

         Micrografía de la superficie de un CD-ROM en la que se pueden 
         ver los surcos con las marcas.

         `Freiermensch <https://commons.wikimedia.org/wiki/File:Afm_cd-rom.jpg>`__,
         `CC BY-SA 3.0 <https://creativecommons.org/licenses/by-sa/3.0/deed.en>`__,
         via Wikimedia Commons.
         
         
      Las características típicas de los distintos dispositivos ópticos
      son las siguientes:
      
      .. list-table:: 
         :widths: 25 25 25 25
         :header-rows: 1
      
         * - Parámetro
           - CD-ROM
           - DVD
           - Blu-ray
         * - Capacidad
           - 0,750 GBytes
           - 4,7 GBytes
           
             8,0 Gbytes a doble capa
           - 25 GBytes
           
             50 Gbytes a doble capa
         * - Velocidad de transferencia
           - 0,15 MBytes/s (1x)
           
             2,8-7,2 MBytes/s (48x)
           - 1,4 MBytes/s (1x)
           
             33,2 MBytes/s (24x)
           - 4,5 Mbytes/s (1x)
           
             54 MBytes/s (12x)
         * - Láser de lectura/escritura
           - Infrarojo (780 nm)
           - Rojo (650 nm)
           - Violeta (405 nm)
         * - Costo de la unidad
           - 18 €
           - 18 €
           - 100 €
         * - Costo del disco
           - 0,40 €
           - 0,90 €
           - 0,90 €  
         * - Costo por GByte
           - 0,53 €/GB
           - 0,19 €/GB
           - 0,036 €/GB
         * - Año de lanzamiento
           - 1985
           - 1996
           - 2005
         * - Diámetro de disco
           - 12 cm
           - 12 cm
           - 12 cm

      .. figure:: informatica/_images/informatica-blu-ray-disk.jpg
         :align: center
         :width: 340px

         Discos ópticos Blu-ray.

         `Racer009 <https://commons.wikimedia.org/wiki/File:SanDisk-Cruzer-USB-4GB-ThumbDrive.jpg>`__,
         `CC0 1.0 <https://creativecommons.org/publicdomain/zero/1.0/deed.en>`__,
         via Wikimedia Commons.
      
      En el momento en el que salieron al mercado, estas unidades de
      almacenamiento óptico tenían más capacidad que los propios discos 
      duros, por lo que era un método de almacenamiento muy barato para 
      realizar backups. Hoy en día la capacidad de los discos duros ha
      crecido tanto que su costo de almacenamiento ha bajado muchísimo,
      hasta los 0,023 €/GB, por lo que ya no son rentables estas unidades
      ópticas para almacenar grandes cantidades de datos.

      Las memorias USB también han crecido exponencialmente en su capacidad
      y en 2022 una unidad con mayor capacidad que un Blu-ray es 
      relativamente barata (5€). Aunque el precio por GByte siga siendo 
      algo mayor en las memorias USB (0,12 - 0,05€/GByte), su mayor 
      versatilidad y facilidad de lectura/escritura han hecho que ocupen 
      muchas aplicaciones que antes se realizaban con discos ópticos, 
      tales como los reproductores de música.
      
      Hace años era frecuente que los programas se vendieran grabados en
      discos ópticos. Hoy en día, gracias a las redes de fibra óptica,
      se ha popularizado la descarga de programas por internet y los 
      discos de almacenamiento virtual como medio de transmisión de 
      datos entre particulares.
      
      Por todas estas razones el uso de discos ópticos ha decaído poco a 
      poco y hoy en día son muy pocas las aplicaciones en las que tienen 
      alguna ventaja.
      

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


Almacenamiento en red
---------------------
Los dispositivos de almacenamiento en red son dispositivos especializados
en el almacenamiento de datos a los que se accede a través de una red local 
ethernet o a través de internet, dando la impresión de que se está 
trabajando con una unidad de almacenamiento local.
El almacenamiento en red permite que la información y los recursos de 
almacenamiento se puedan optimizar y compartir entre varios ordenadores.

La mayoría de los servidores de almacenamiento en red suelen estar 
basados en discos duros o unidades SSD configurados en grupo 
`RAID (matriz redundante de discos independientes)
<https://es.wikipedia.org/wiki/RAID>`__.
Esta configuración permite aumentar la tasa de transferencia y
que se pueda recuperar un fallo de una unidad directamente por el 
hadware del servidor de almacenamiento al cambiar en caliente la 
unidad dañada.

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