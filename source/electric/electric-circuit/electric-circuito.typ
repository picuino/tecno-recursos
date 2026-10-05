//
// CONFIGURACIÓN DE PÁGINA
//
#set page(
  paper: "a4",
  margin: ( top: 10mm, bottom: 14mm, left: 10mm, right: 10mm )
)

#set page(
  footer: [
    #v(2mm) 
    #grid(
      columns: (1fr, 1fr),
      align(center)[#text(size: 9pt, weight: "bold")[#link("https://creativecommons.org/licenses/by-sa/4.0/deed.es")[*Licencia CC BY-SA 4.0*]]],
      align(center)[#text(size: 9pt, weight: "bold")[#link("https://picuino.com/es/index.html")[*www.picuino.com*]]],
    )
  ]
)

#set text(
  font: "Liberation Sans",
  lang: "es",
  size: 11pt,
  hyphenate: true
)

#set par(
  justify: true,
  spacing: 12pt,
)

#set heading(numbering: "1.1.")

#show heading: it => block()[
  #if it.level == 1 {
    text(size: 12pt, weight: "bold")[#it]
  } else if it.level == 2 {
    text(size: 12pt, weight: "bold")[#it]
  } else {
    it
  }
]

#set figure(supplement: none, numbering: none)

#show figure.caption: set text(size: 9pt, weight: "bold")

#show figure.caption: it => block(
  inset: (left: 1mm, right: 1mm), 
  it
)


//
// PÁGINA 1
//

#align(center)[
  #text(size: 16pt, weight: "bold")[EL CIRCUITO ELÉCTRICO]
  #v(2mm)
]

#place(center)[ #line(angle: 90deg, length: 265mm) ]

#columns(2, gutter: 0.8cm)[


= El circuito eléctrico.

Un circuito eléctrico es un conjunto de componentes que generan y 
controlan el paso de la electricidad para producir efectos útiles.

#v(-5mm)
#figure(
  image("_images/electric-circuit-2.png", width: 70mm),
)
#v(-5mm)

Un ejemplo sencillo de circuito eléctrico es el que todos utilizamos
al encender la luz de una habitación.

Los circuitos están formados por cuatro tipos de componentes:
los generadores, conductores, receptores y elementos de control.
A continuación se estudiarán cada uno de ellos con más detalle.


= Generadores

Estos componentes son los encargados de generar corriente eléctrica. Para 
conseguirlo impulsan a los electrones para que circulen por el circuito.

Ejemplos de generadores son las pilas y baterías, las dinamos de las 
bicicletas, los alternadores de los automóviles o las placas solares 
fotovoltaicas.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1mm,

  figure(
    image("_images/electric-pilas.jpg", width: 100%),
    
    caption: [
      Pilas eléctricas. \
      #link("https://commons.wikimedia.org/wiki/File:AA_AAA_AAAA_A23_battery_comparison-1.jpg")[Lead Holder],
      #link("https://creativecommons.org/licenses/by-sa/3.0/deed.en")[CC BY-SA 3.0]     
    ]
  ),
  
  figure(
    image("_images/electric-alternador.jpg", width: 100%),
    
    caption: [
      Alternador eléctrico de un automóvil. \
      #link("https://commons.wikimedia.org/wiki/File:Alternador_003.jpg")[El Guarito],
      #link("https://creativecommons.org/licenses/by-sa/3.0/deed.en")[CC BY-SA 3.0]     
    ]
  )
)

#figure(
  image("_images/electric-fotovoltaic-array.jpg", width: 50mm),
  
  caption: [
    Panel fotovoltaico de generación eléctrica solar. \
    #link("https://commons.wikimedia.org/wiki/File:Solar_tracker_in_Lixouri.jpg")[Saintfevrier],
    Public domain     
  ]
)


= Conductores

Los conductores transportan la electricidad entre los componentes del 
circuito. Suelen ser cables eléctricos.

Los materiales más comunes utilizados para conducir electricidad son:


*Cobre:*

Es el más utilizado en el interior de los edificios, en los cables 
flexibles de los aparatos y para la fabricación de motores eléctricos.


*Aluminio y acero:*

Son los materiales más utilizados en los cables de alta tensión. Tienen 
buena resistencia mecánica, resisten bien a la oxidación y son más baratos 
que el cobre.


*Oro, níquel y cromo:*

Se utilizan en el recubrimiento de los contactos eléctricos para evitar la 
oxidación y mejorar la conducción. Se pueden ver en las clavijas de audio 
y los conectores USB.


*Estaño, plomo y plata:*

Por su baja temperatura de fusión (menor de 300ºC) se utilizan en la 
soldadura de componentes electrónicos. La plata, a pesar de ser más cara, 
se utiliza cada vez más porque no produce los efectos tóxicos del plomo.


#grid(
  columns: (1fr, 1fr),
  column-gutter: 1mm,
  row-gutter: 5mm,

  figure(
    image("_images/electric-copper-wire.jpg", width: 100%),
    
    caption: [
      Cable de cobre con 3 hilos de 2,5mm2 de sección. \
      #link("https://commons.wikimedia.org/wiki/File:Electric_guide_3%C3%972.5_mm.jpg")[Petar Milošević],
      #link("https://creativecommons.org/licenses/by-sa/4.0/deed.en")[CC BY-SA 4.0]   
    ]
  ),
  
  figure(
    image("_images/electric-wire-high-voltage.jpg", width: 100%),
    
    caption: [
      Cable de alta tensión, de aluminio y acero. \
      #link("https://commons.wikimedia.org/wiki/File:High_voltage_cables_with_glass_insulators.jpg")[Albarubescens],
      #link("https://creativecommons.org/licenses/by-sa/4.0/deed.en")[CC BY-SA 4.0]   
    ]
  ),

  figure(
    image("_images/electric-ssd-gold-plated.jpg", width: 100%),
    
    caption: [
      Disco SSD con conectores bañados en oro. \
      #link("https://commons.wikimedia.org/wiki/File:M.2_2230_M-key_SSD_in_comparison_with_Micro-SD_card.jpg")[Phiarc],
      #link("https://creativecommons.org/licenses/by-sa/4.0/deed.en")[CC BY-SA 4.0]   
    ]
  ),

  figure(
    image("_images/electric-soldaduras.jpg", width: 100%),
    
    caption: [
      Componentes SMD unidos a la PCB con soldaduras de estaño-plomo. \
      #link("https://commons.wikimedia.org/wiki/File:Many_different_SMD_capacitors.jpg")[Phiarc],
      #link("https://creativecommons.org/licenses/by-sa/4.0/deed.en")[CC BY-SA 4.0]   
    ]
  )
)

]

#pagebreak()


//
// PÁGINA 2
//

#place(center)[ #line(angle: 90deg, length: 205mm) ]

#columns(2, gutter: 0.8cm)[

= Receptores

Los componentes receptores transforman la electricidad en efectos
útiles como luz, calor, movimiento, sonido, etc.

Algunos ejemplos de receptores son las bombillas que producen luz,
los motores que producen movimiento, las resistencias que producen calor o
los timbres que producen sonido.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1mm,

  figure(
    image("_images/electric-lamp-led.jpg", width: 100%),
    
    caption: [
      Lámpara led. Produce luz a partir de la electricidad. \
      #link("https://commons.wikimedia.org/wiki/File:60_LED_3W_Spot_Light_eq_25W.jpg")[Mcapdevila],
      #link("https://creativecommons.org/licenses/by-sa/3.0/deed.en")[CC BY-SA 3.0]   
    ]
  ),
  
  figure(
    image("_images/electric-vitroceramica.jpg", width: 100%),
    
    caption: [
      Resistencia eléctrica que produce calor. \
      #link("https://commons.wikimedia.org/wiki/File:Electric_stove_coil_with_glass_ceramic_cooktop.jpg")[A. Savin],
      #link("https://creativecommons.org/licenses/by-sa/3.0/deed.en")[CC BY-SA 3.0]   
    ]
  )
)


= Elementos de control

Estos elementos permiten controlar el paso de la electricidad según 
convenga. El ejemplo más sencillo es un interruptor que enciende o
apaga la luz dejando pasar la electricidad cuando nos conviene.

Dependiendo de cómo se accionen hay varios tipos de elementos de
control.

*Accionamiento manual:*

Interruptores, pulsadores, mandos giratorios, etc. Permiten a las
personas controlar los aparatos eléctricos.

Cada elemento de control manual tiene su aplicación práctica.
A la hora de controlar un timbre no se puede utilizar un interruptor
porque después de pulsarlo, el timbre funcionará sin parar.
En esta aplicación usaremos mejor un pulsador, que solo acciona
el timbre mientras lo estemos pulsando.

#colbreak()


*Protección eléctrica:*

Fusibles, interruptores automáticos, diferenciales, etc.

Los *fusibles* y los *interruptores automáticos* cortan la
corriente eléctrica para proteger la instalación eléctrica y evitar
que se quemen los cables si hay un cortocircuito o una sobrecarga.

El *interruptor diferencial* protege la vida de las personas cortando
la corriente eléctrica antes de que una derivación pueda
electrocutarnos.


*Accionamiento automático:*

Algunos elementos de control se accionan a partir de señales
eléctricas. Esto permite un control automático, ahorrando la
intervención de una persona.

Ejemplos de accionamientos automáticos son:
la luz de una escalera que se apaga sola al cabo de un tiempo,
una puerta eléctrica que se abre sola al detectar presencia,
un ascensor que se detiene en el piso correcto gracias a un final de
carrera, un edificio inteligente que controla mediante ordenador la
temperatura, humedad, apertura de persianas, riego automático, etc.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1mm,

  figure(
    image("_images/electric-switch.jpg", width: 100%),
  
    caption: [
      Interruptor de encendido y apagado. \
      #link("https://en.wikipedia.org/wiki/File:On-Off_Switch.jpg")[Jszack],
      #link("https://creativecommons.org/licenses/by-sa/2.5/deed.en")[CC BY-SA 2.5]   
    ]
  ),

  figure(
    image("_images/electric-diferencial.jpg", width: 100%),
  
    caption: [
      Interruptor diferencial. Protege a las personas de descargas eléctricas. \
      #link("https://commons.wikimedia.org/wiki/File:Moeller_Xpole_PXF-40-4-003-A-2289.jpg")[Raimond Spekking],
      #link("https://creativecommons.org/licenses/by-sa/4.0/deed.en")[CC BY-SA 4.0]   
    ]
  )
)

]

#align(center)[
  #v(5mm)
  #text(size: 16pt, weight: "bold")[EJERCICIOS]
  #v(2mm)
]

#place(center)[ #line(angle: 90deg, length: 50mm) ]

#columns(2, gutter: 0.8cm)[

+ Dibuja un circuito eléctrico sencillo de una linterna que encienda
  una lámpara con un interruptor. Escribe el nombre de sus elementos
  y de qué tipo es cada uno de ellos.
+ ¿Qué es un generador eléctrico y para qué sirve?
  Escribe tres ejemplos de generadores eléctricos distintos.
+ ¿Qué es un conductor eléctrico y para qué sirve?
+ Escribe cuatro tipos de conductores diferentes y para qué sirve
  cada uno de ellos.
+ ¿Qué función tienen los receptores en un circuito eléctrico?
+ Escribe cuatro receptores distintos y el efecto que produce cada uno.
+ ¿Qué función tienen los elementos de control en un circuito eléctrico?
+ Escribe un ejemplo de elemento de control de accionamiento manual, uno
  de protección y otro automático.
]