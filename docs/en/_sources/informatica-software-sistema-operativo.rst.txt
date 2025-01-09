:Date: 23/02/2023
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. informatica-software-sistema-operativo:

:index:`Sistema Operativo`
==========================

Un `sistema operativo <https://es.wikipedia.org/wiki/Sistema_operativo>`__,
también llamado SO, es un **conjunto de programas** que hacen que
una computadora funcione.
Es un intermediario que gestiona el hardware de una computadora para
dar servicio al resto de los programas de aplicación que se ejecutan
en ella.

El sistema operativo es el encargado de **administrar los recursos** de
la computadora, como el procesador, la memoria y los dispositivos de
entrada y salida, para que otros programas puedan utilizarlos de manera
eficiente y coordinada.

Por ejemplo, el sistema operativo es el encargado de dar un bloque de
memoria vacía a cada programa a medida que estos se van ejecutando.
Se asegura de que cada programa tenga suficiente espacio en la memoria
RAM y que no coincida con los demás.
El sistema operativo también se asegura de que el procesador se reparte
entre todos los programas cada poco tiempo, dando la impresión de que
todos se ejecutan a la vez.
Cuando varios programas envían varias páginas para imprimir a una sola
impresora, el sistema operativo se encarga de enviar las páginas de
forma ordenada para que estas no se mezclen y que no se produzca un error.
El sistema operativo realiza una gestión similar cuando varios programas
quieren escribir a la vez en la memoria permanente.

El sistema operativo también proporciona una **interfaz de usuario** para
que los usuarios puedan interactuar con la computadora y realizar
diferentes tareas a la vez, como navegar por Internet, escribir documentos,
reproducir música y vídeos, entre otras cosas.

Si no existiese el sistema operativo, cada una de las aplicaciones
tendría que incluir una interfaz propia, un gestor de impresoras propio,
un gestor de memoria propio y ponerse de acuerdo con todos los demás
programas para compartir los recursos de la misma computadora de manera
ordenada.


.. contents:: Índice de contenidos:
   :local:
   :depth: 2


Componentes de un Sistema Operativo
-----------------------------------

Los `componentes de un sistema operativo
<https://es.wikipedia.org/wiki/Sistema_operativo#Componentes>`__
tienen la tarea de conseguir que las diferentes partes de una computadora
trabajen juntas.


Núcleo o kernel
   El `núcleo
   <https://es.wikipedia.org/wiki/N%C3%BAcleo_(inform%C3%A1tica)>`__
   de un sistema operativo es el encargado de coordinar todos
   los recursos de la computadora, tanto los elementos de hardware como
   los programas de software.
   Se encarga de transmitir la información entre todos estos elementos
   de la computadora de manera organizada para coordinarlos entre sí.


Controladores de dispositivos
   Los `controladores de dispositivos
   <https://es.wikipedia.org/wiki/Controlador_de_dispositivo>`__
   hacen de intermediarios entre las aplicaciones del usuario y
   los diferentes periféricos del ordenador tales como tarjetas gráficas,
   memorias externas, impresoras, cámaras web, etc.

   Cuando instalamos un controlador de impresora, todos los programas
   de aplicación de ese sistema operativo podrán imprimir con esa
   impresora.
   Los primeros sistemas operativos, como MS-DOS, no tenían controladores
   de dispositivos para las impresoras, por lo que cada uno de los
   programas de aplicación tenía que añadir su propio controlador para
   todas las impresoras del mercado.
   El sistema operativo con controladores de dispositivos ahorra recursos
   y facilita la tarea de programar aplicaciones.


Gestión de procesos
   El sistema de gestión de procesos se encarga de repartir el tiempo
   del microprocesador entre los diferentes programas que se encuentran
   en marcha. Gracias a este gestor podemos tener, por ejemplo,
   20 programas funcionando a la vez en la computadora y dará la
   impresión de que todos corren a la vez, aunque solo haya un núcleo
   de CPU atendiendo a todos.


Gestión de memoria
   El sistema de `gestión de la memoria
   <https://es.wikipedia.org/wiki/Gesti%C3%B3n_de_memoria>`__
   se encarga de reservar bloques
   de memoria RAM para los programas cuando van a comenzar a ejecutarse
   o cuando necesitan espacio para abrir un nuevo archivo de datos.

   Otra función del gestor de memoria es realizar la recolección de basura.
   Se llama así a la tarea que consiste en liberar de la memoria los
   bloques que ya no se estén usando, para dejar espacio a los nuevos
   programas que quiera el usuario ejecutar.


Interfaz gráfica de usuario
   La `interfaz gráfica de usuario
   <https://es.wikipedia.org/wiki/Interfaz_gr%C3%A1fica_de_usuario>`__,
   también llamada GUI, es un programa del sistema operativo encargado
   de presentar la información en la pantalla y recoger las acciones
   que el usuario realiza con el ratón, teclado o con la pantalla táctil.

   Este sistema es común a todos los programas, con lo que se consigue
   un aspecto homogéneo para todas las aplicaciones del mismo sistema
   operativo y simplifica la programación de las aplicaciones porque
   estas no tienen que encargarse de representar las ventanas,
   los botones, la barra de scroll, los menús y demás elementos
   gráficos.


Gestión de Interrupciones
   Las `interrupciones
   <https://es.wikipedia.org/wiki/Interrupci%C3%B3n>`__
   son señales que envían los periféricos a la
   computadora para que sean atendidos por esta.
   Cuando un usuario de ordenador escribe una tecla en el teclado,
   el carácter aparece inmediatamente en la pantalla.
   Del mismo modo, cuando un usuario mueve el ratón, el cursor se desplaza
   inmediatamente por la pantalla.
   Cada pulsación de tecla y cada movimiento del ratón generan una
   interrupción que alerta a la computadora para que atienda a los datos
   que está enviando el periférico.

   Gracias a las interrupciones la computadora no tiene que estar
   continuamente atendiendo a cada periférico para comprobar si ya
   tienen datos listos para enviar.


Sistema de archivos
   El `sistema de archivos
   <https://es.wikipedia.org/wiki/Sistema_de_archivos>`__
   es un sistema que controla cómo se almacenan y recuperan los datos
   desde las unidades de almacenamiento como los CD-ROM, las memorias
   USB o los discos duros.
   Sin un sistema de archivos, los datos almacenados en un medio de
   almacenamiento se convertirían en un conjunto de información sin
   manera de distinguir dónde termina un dato y dónde comienza el
   siguiente.

   Sus principales funciones son la asignación de espacio a los archivos,
   la administración del espacio libre y el acceso a los datos guardados.

Sistema de seguridad
   Es el sistema encargado de controlar el acceso de los programas o de
   los usuarios a los recursos del sistema.
   Este sistema se encarga de tareas como comprobar el usuario y la
   contraseña correctas para entrar en una sesión del sistema o para
   realizar una instalación de programas.

Comunicaciones
   El sistema de gestión de comunicaciones se encarga de controlar
   las redes de datos conectadas a la computadora.
   Es el encargado de gestionar los paquetes de datos que se transmiten
   por la red local cableada, por la red Wifi o por otras redes de
   datos como, por ejemplo, Bluetooth.


Programas de sistema
   Son aplicaciones que sirven para gestionar el sistema operativo
   o para informarse de su estado.
   Ejemplos de programas del sistema son el explorador de archivos,
   el panel de control, la consola de comandos, la aplicación de
   ajustes en Android, etc.


Sistema Operativo :index:`Windows`
----------------------------------
`Windows <https://es.wikipedia.org/wiki/Microsoft_Windows>`__
es un sistema operativo de la empresa Microsoft y es uno de
los más populares del mundo. Se utiliza en la mayoría de las computadoras
personales de escritorio y portátiles, con una cuota de mercado cercana
al `87% de los PC en 2020
<https://en.wikipedia.org/wiki/Usage_share_of_operating_systems#Market_share_by_category>`__.

Sus características principales son las siguientes.

Interfaz de usuario
   Windows tiene una interfaz gráfica de usuario (GUI) intuitiva que
   está basada en el uso del ratón y el teclado, aunque también permite
   el uso de una pantalla táctil.

Compatibilidad con software
   Windows es compatible con una amplia gama de software y aplicaciones.
   Muchas aplicaciones están diseñadas específicamente para Windows,
   lo que hace que sea fácil para los usuarios encontrar y utilizar
   el software que necesitan.

   La gran popularidad de Windows también es la causa de que existan
   muchos programas maliciosos (malware) especializados en este sistema
   operativo.

Facilidad de personalización
   Windows permite a los usuarios personalizar su experiencia de usuario.
   Pueden personalizar el fondo de pantalla, la pantalla de inicio,
   los iconos y los colores según sus preferencias.
   Sin embargo, los programadores que no trabajen para Microsoft
   no pueden acceder a su código y no pueden hacer cambios en el
   sistema operativo.

Soporte de hardware
   Windows es compatible con una amplia variedad de hardware, lo que
   significa que funciona bien con la mayoría de las computadoras
   y dispositivos periféricos.

Videojuegos
   Windows es conocido por ser un gran sistema operativo para juegos.
   Muchos de los juegos más populares del mundo se pueden jugar en
   una computadora con Windows.

Precio
   Windows tiene un precio aproximado de 150 Euros en su versión más
   básica (Windows Home).
   A los fabricantes de hardware les cuesta aproximadamente 50 Euros
   instalar un sistema Windows en sus ordenadores.

Versiones
   Actualmente la única versión que está a la venta por parte de la
   empresa Microsoft es la versión Windows 11, aunque aún existe una
   gran base de computadoras con Windows 10 instalado.
   Las versiones anteriores a Windows 10 son a día de hoy obsoletas y
   deberían ser actualizadas para evitar problemas de seguridad.

   Windows 11 tiene un total de 7 ediciones muy similares entre sí,
   aunque las más conocidas son:
   la edición Home destinada a usuarios domésticos y
   la edición Pro destinada a usuarios profesionales.


Sistema Operativo :index:`Android`
----------------------------------
`Android <https://es.wikipedia.org/wiki/Android>`__
es un sistema operativo desarrollado por la empresa Google y es uno de
los más populares entre los dispositivos móviles, con una cuota de mercado
del `71% de los smartphones y tablets en 2020
<https://en.wikipedia.org/wiki/Usage_share_of_operating_systems#Market_share_by_category>`__.

Se utiliza en una amplia variedad de dispositivos móviles, incluyendo
teléfonos inteligentes, tabletas, televisores inteligentes,
relojes inteligentes o automóviles.
Android se basa en el núcleo de Linux, sobre el que se construye el resto
del sistema operativo.

Sus características principales son las siguientes.

Interfaz de usuario
   Android tiene una interfaz gráfica de usuario (GUI)
   basada en la pantalla táctil del dispositivo.

Compatibilidad con software
   Android es compatible con una amplia gama de software y aplicaciones,
   disponibles en su mayoría en la Google Play Store.

Facilidad de personalización
   Android es de código abierto, lo que significa que el código fuente
   está disponible públicamente y los desarrolladores pueden modificarlo
   y personalizarlo según sus necesidades.

Soporte de hardware
   Android es compatible con una amplia variedad de hardware, lo que
   significa que funciona bien con la mayoría de los dispositivos
   móviles y sus periféricos. Además, al ser de código abierto,
   facilita que los desarrolladores puedan adaptar Android a cualquier
   nuevo periférico o sistema hardware.

Precio
   Android es un sistema operativo gratuito, lo que abarata el precio
   final de los dispositivos que funcionan con él.

Versiones
   Android está fuertemente controlado por la empresa Google, por lo
   que existen pocas versiones de otros desarrolladores.
   Las últimas versiones de Android son las siguientes:

   .. list-table::
      :header-rows: 1

      * - Año
        - Versión
      * - Agosto de 2018
        - Android 9
      * - Septiembre de 2019
        - Android 10
      * - Septiembre de 2020
        - Android 11
      * - Octubre de 2021
        - Android 12
      * - Agosto de 2022
        - Android 13
      * - Octubre de 2023
        - Android 14


Sistema Operativo :index:`GNU/Linux`
------------------------------------
`GNU/Linux <https://es.wikipedia.org/wiki/GNU/Linux>`__
es un sistema operativo libre desarrollado por multitud de empresas y
voluntarios y es el más `popular entre los ordenadores profesionales
<https://en.wikipedia.org/wiki/Usage_share_of_operating_systems#Market_share_by_category>`__,
tales como servidores web y supercomputadores. Además se encuentra en
multitud de dispositivos embebidos tales como videoconsolas, routers,
televisores inteligentes, etc. También se encuentra en el núcleo del
sistema operativo Android.

El sistema operativo GNU/Linux está basado en el antiguo sistema operativo
`Unix <https://es.wikipedia.org/wiki/Unix>`__.

Sus características principales son las siguientes.

Interfaz de usuario
   GNU/Linux tiene muchas interfaces gráficas de usuario (GUI).
   Algunas son muy simples, orientadas a dispositivos con poca memoria
   (XFCE), otras son parecidas a la interfaz de Windows (KDE) y otras
   son parecidas a la interfaz gráfica de Apple (Gnome).

   Una interfaz gráfica que se suele utilizar en muchos dispositivos
   embebidos es una página web desde la que se controlan los parámetros
   del dispositivo. Es una interfaz muy rápida y ligera.
   Un ejemplo se puede ver al conectarse con un navegador al router de
   Internet.

   GNU/Linux también puede ejecutarse sin interfaz gráfica, por línea de
   comandos, lo que es muy útil para los profesionales y para que el
   sistema ocupe muy poca memoria en el dispositivo.

   GNU/Linux es un sistema operativo
   `multiusuario <https://es.wikipedia.org/wiki/Multiusuario>`__,
   por lo que una sola computadora puede dar servicio a varias
   terminales a la vez, con distintos usuarios conectados a ellas.

Compatibilidad con software
   El sistema GNU/Linux tiene multitud de aplicaciones de todos los ámbitos
   y está orientado a desarrolladores.

   En algunos casos falta compatibilidad con programas muy populares,
   que pueden ejecutarse con el programa "Wine" de emulación de Windows.

Facilidad de personalización
   Al ser un sistema operativo de código abierto y controlado por la
   comunidad, es muy personalizable. Existen multitud de distribuciones
   gratuitas orientadas a todo tipo de ámbitos.

   Su gran facilidad de personalización y su gran seguridad contra el
   malware es lo que hace a este sistema operativo tan atractivo para
   instalarlo en servidores web y todo tipo de ordenadores profesionales.

Soporte de hardware
   Al ser GNU/Linux software abierto, algunos desarrolladores de hardware
   tales como Nvidia han puesto dificultades para realizar controladores
   para sus productos. A día de hoy la mayoría de los dispositivos tienen
   soporte en el sistema operativo, que es compatible con una amplia
   variedad de hardware.

Precio
   GNU/Linux es un sistema operativo gratuito, lo que abarata el precio
   final de los dispositivos que funcionan con él.

Versiones
   El sistema GNU/Linux tiene muchas distribuciones orientadas a todo
   tipo de aplicaciones y a todo tipo de plataformas hardware.
   Estas son algunas de las distribuciones más populares.

   * `Ubuntu <https://es.wikipedia.org/wiki/Ubuntu>`__,
     orientada sobre todo a usuarios domésticos.
   * `Debian <https://es.wikipedia.org/wiki/Debian_GNU/Linux>`__,
     orientada a mantener una distribución abierta, de software libre.
   * `MAX <https://www.educa2.madrid.org/web/max>`__,
     orientada a la educación en la Comunidad de Madrid.
   * `Red Hat Linux <https://es.wikipedia.org/wiki/Red_Hat>`__,
     orientada a mainframes y al entorno empresarial.
   * `Kali Linux <https://es.wikipedia.org/wiki/Kali_Linux>`__,
     orientada a pentesting y ciberseguridad.
   * `Linux embebido <https://es.wikipedia.org/wiki/Linux_embebido>`__,
     orientada a pequeños dispositivos inteligentes.


Sistema Operativo :index:`macOS`
--------------------------------
`macOS <https://es.wikipedia.org/wiki/MacOS>`__
es un sistema operativo para ordenadores personales de escritorio y
portátiles de la empresa Apple. Es el segundo sistema más utilizado
para ordenadores personales, con una `cuota de mercado del 21% en 2023
<https://en.wikipedia.org/wiki/Usage_share_of_operating_systems#Market_share_by_category>`__.

El sistema operativo macOS está basado en el antiguo sistema operativo
`Unix <https://es.wikipedia.org/wiki/Unix>`__,
al igual que GNU/Linux.

Sus características principales son las siguientes.

Interfaz de usuario
   Es más minimalista y elegante que la interfaz gráfica de Windows.
   La barra de menú se encuentra siempre en la parte superior de la
   pantalla, en vez de en las ventanas de cada aplicación.

   macOS tiene un soporte completo de gestos en el `touchpad
   <https://es.wikipedia.org/wiki/Panel_t%C3%A1ctil>`__.

Compatibilidad con software
   macOS tiene una menor gama de software disponible debido a su menor
   cuota de mercado y a su menor popularidad.
   Sin embargo, macOS sigue siendo una plataforma con una base de
   desarrolladores activa y una amplia gama de software de calidad
   disponible, especialmente para aplicaciones de diseño y edición
   de medios.

   macOS es mucho más resistente a ataques de malware que Windows.
   Entre otras razones debido a que se diseñan menos programas maliciosos
   para este sistema operativo al ser menos popular y porque tiene un
   diseño que previene mejor de los ataques.

Facilidad de personalización
   Aunque macOS tiene algunas posibilidades de personalización, estas
   son más limitadas en comparación con las que ofrecen Windows o Linux.

Soporte de hardware
   macOS está diseñado para funcionar exclusivamente en dispositivos
   Apple, como MacBooks, iMacs y Mac Pros.
   Esto significa que macOS está muy optimizado para estos dispositivos,
   es más eficiente y tiene mayor estabilidad, pero no es compatible con
   otros fabricantes.

   En cuanto a los periféricos, macOS tiene una menor variedad de
   dispositivos compatibles y, en la mayor parte de los casos, los
   controladores son proporcionados por Apple.

Precio
   El sistema operativo macOS ya viene preinstalado de forma
   gratuita en todos los dispositivos Apple.
   El desarrollo del sistema operativo se financia con el costo del
   hardware, ya que es un sistema exclusivo para los productos Apple.

Versiones
   Las versiones de macOS no tienen diferentes ediciones.

   Las últimas versiones de macOS son las siguientes:

   .. list-table::
      :header-rows: 1

      * - Año
        - Versión
      * - Octubre de 2019
        - macOS 10.15 (Catalina)
      * - Noviembre de 2020
        - macOS 11 (Big Sur)
      * - Octubre de 2021
        - macOS 12 (Monterey)
      * - Octubre de 2022
        - macOS 13 (Ventura)
      * - Octubre de 2023
        - macOS 14 (Sonoma)


Sistema Operativo :index:`iOS`
------------------------------
`iOS <https://es.wikipedia.org/wiki/IOS>`__ es el sistema operativo de
la empresa **Apple** para sus dispositivos móviles, incluyendo el
smartphone iPhone, la tableta iPad y el reproductor de música iPod.

Actualmente
`Apple lidera las ventas de teléfonos inteligentes de gama alta
<https://www.enriquedans.com/2023/03/analizando-el-mercado-de-los-smartphones-y-la-estrategia-de-apple.html>`__,
por lo que el sistema operativo iOS lidera las tendencias del sector.


Interfaz de usuario
   Aunque es similar a la interfaz de su competidor Android, tiende a
   ser más uniforme y consistente en todos los dispositivos Apple,
   mientras que la interfaz de Android puede variar según el fabricante.

Compatibilidad con software
   La App Store de Apple tiende a ser más estricta con la calidad y
   el control de las aplicaciones. Como resultado, la disponibilidad
   de software es menor en el sistema operativo iOS, aunque la mayoría
   de las aplicaciones más populares se pueden encontrar sin problema.

   Por otro lado la menor diversidad de hardware en los dispositivos
   Apple hace que las aplicaciones sean más robustas y estén más
   optimizadas.

   Los dispositivos iOS suelen tener actualizaciones del sistema
   operativo durante mucho más tiempo, hasta 6 años, en comparación
   con los dispositivos Android, que apenas tienen actualizaciones
   del sistema operativo durante un periodo de 2 años desde el
   lanzamiento del dispositivo.

Facilidad de personalización
   El sistema iOS ofrece menos opciones y menos flexibilidad en la
   personalización que el sistema competidor Android.

Soporte de hardware
   iOS solo es compatible con los dispositivos Apple. Esto restringe
   mucho su uso a un solo fabricante. Como ventaja, al tener un
   ecosistema de hardware más controlado, es más sencillo optimizar las
   aplicaciones.

Precio
   iOS viene preinstalado por defecto en los dispositivos móviles de
   Apple y no tiene precio. Por otra parte, la financiación de su
   desarrollo se hace con el elevado precio de los dispositivos de
   Apple en comparación con los dispositivos de la competencia.

Versiones
   Las últimas versiones de iOS son las siguientes:

   .. list-table::
      :header-rows: 1

      * - Año
        - Versión
      * - Septiembre de 2019
        - iOS 13
      * - Septiembre de 2020
        - iOS 14
      * - Septiembre de 2021
        - iOS 15
      * - Septiembre de 2022
        - iOS 16

   Las versiones anteriores se encuentran sin soporte, por lo que
   es recomendable actualizarlas a una versión más moderna.


Otros Sistemas Operativos
-------------------------

:index:`z/OS`
   z/OS es un sistema operativo de IBM que se utiliza en mainframes,
   computadoras de gran escala utilizadas en grandes empresas.
   Es uno de los sistemas operativos más antiguos y ampliamente
   utilizados en el mundo empresarial.

   z/OS se caracteriza por ser robusto, fiable, escalable y seguro.
   Ofrece una amplia gama de capacidades, incluyendo la gestión de
   recursos del sistema, la ejecución de trabajos en lote (batch),
   la administración de sistemas de archivos y dispositivos,
   la gestión de seguridad y la capacidad de ejecutar múltiples
   aplicaciones a la vez.


:index:`FreeRTOS`
   FreeRTOS es un sistema operativo en tiempo real diseñado para sistemas
   embebidos, es decir, dispositivos electrónicos que realizan tareas
   específicas tales como lavadoras, ascensores, sistemas de control
   industrial, aparatos IoT (Internet de las Cosas), gestión del motor
   del automóvil, alarmas, equipos de diagnóstico médico, etc.

   FreeRTOS se caracteriza por su pequeño tamaño y su bajo consumo de
   recursos, lo que lo hace adecuado para sistemas con poca memoria
   y pequeña capacidad de procesamiento.

   Está escrito en lenguaje C y se puede portar a una amplia variedad
   de arquitecturas de procesadores, lo que lo hace altamente adaptable
   a diferentes plataformas y dispositivos.

   FreeRTOS es de código abierto, su código fuente está disponible
   para el público y se puede modificar y distribuir bajo una licencia
   de software libre.
   Esto brinda flexibilidad y permite a los desarrolladores personalizar
   y adaptar el sistema operativo según las necesidades específicas de
   sus aplicaciones.


Test de la unidad
-----------------

`Test de Sistema Operativo I.
<../test/es-software-sistema-operativo-1.html>`__

`Test de Sistema Operativo II.
<../test/es-software-sistema-operativo-2.html>`__

`Test de Sistema Operativo III.
<../test/es-software-sistema-operativo-3.html>`__

`Test de Sistema Operativo IV.
<../test/es-software-sistema-operativo-4.html>`__

`Test de Sistema Operativo V.
<../test/es-software-sistema-operativo-5.html>`__

`Test de Sistema Operativo VI.
<../test/es-software-sistema-operativo-6.html>`__
