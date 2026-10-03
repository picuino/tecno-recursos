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
      align(center)[#text(size: 10pt, weight: "bold")[#link("https://creativecommons.org/licenses/by-sa/4.0/deed.es")[*Licencia CC BY-SA 4.0*]]],
      align(center)[#text(size: 10pt, weight: "bold")[#link("https://picuino.com/es/index.html")[*www.picuino.com*]]],
    )
  ]
)

#set text(
  font: "Liberation Sans",
  lang: "es",
  size: 12pt,
  hyphenate: true
)

#set par(
  justify: true,
  spacing: 12pt,
)

#set heading(numbering: "1.1.")

#show heading: it => block()[
  #if it.level == 1 {
    text(size: 14pt, weight: "bold")[#it]
  } else if it.level == 2 {
    text(size: 14pt, weight: "bold")[#it]
  } else {
    it
  }
]

#set figure(supplement: none, numbering: none)

#show figure.caption: set text(size: 10pt, weight: "bold")


//
// PÁGINA 1
//

#align(center)[
  #text(size: 16pt, weight: "bold")[EL RELÉ ELECTROMECÁNICO]
  #v(2mm)
]

#place(center)[ #line(angle: 90deg, length: 265mm) ]

#columns(2, gutter: 0.8cm)[

= Qué es un relé

Un relé es un aparato electromecánico con dos componentes: la *bobina* y
los *contactos*. La bobina recibe una pequeña corriente eléctrica a baja
tensión en el circuito de mando y mueve los contactos que hacen de
interruptores en el circuito de potencia, con mayor tensión y corriente.

#figure(
  grid(
    columns: (1fr, 1fr),
    gutter: 2mm,
    [#image("electric-relay-principle.gif")],
    [#image("electric-rele-05.jpg")],
  ),
  
  caption: [
    Esquema y fotografía de un relé. \
    #link("https://commons.wikimedia.org/wiki/File:Relay_principle_horizontal_new.gif")[Digigalos]
    #link("https://creativecommons.org/licenses/by-sa/3.0/deed.en")[CC BY-SA 3.0] #h(6mm)     #link("https://commons.wikimedia.org/wiki/File:Omron_G2R-2-24V_relay_02.jpg")[Public Domain]
  ]
)


= Funcionamiento del relé

En el siguiente esquema podemos ver el circuito de un relé en
funcionamiento.

El *circuito de mando* se encuentra a la izquierda y se compone de una 
pila de 12 voltios, un pulsador y la bobina del relé. Cuando se presiona 
el pulsador, la corriente llega a la bobina y esta acciona el contacto 
(interruptor) de potencia. 

El *circuito de potencia* se compone de un contacto del relé, un generador 
de corriente alterna de 230 voltios y un motor. Cuando el contacto se 
cierra, se aplica tensión al motor y se pone en marcha.

#figure(
  image("electric-rele-01.png", width: 65mm),
)

Una ventaja de este diseño consiste en que el pulsador tiene una tensión 
segura para las personas, separada de la alta tensión del motor que es más 
apropiada para suministrar grandes potencias.


= Relé realimentado

Un relé tiene varios contactos, algunos normalmente abiertos y otros 
normalmente cerrados. Estos contactos se pueden utilizar para realimentar 
el circuito de mando de manera que permanezca funcionando una vez que se 
ha activado el relé.

En el siguiente esquema podemos ver un relé con funcionamiento de marcha y 
parada. El pulsador de marcha activa la bobina y una vez activada, los dos 
contactos K1 asociados al relé mantienen a la bobina con tensión y al 
motor en marcha aunque se deje de presionar el pulsador de marcha. 

Para que el circuito pare, habrá que presionar el pulsador de parada. La 
bobina dejará de tener corriente y los dos contactos K1 se abren 
deteniendo el circuito.

#figure(
  image("electric-rele-02.png", width: 100%),
)


= Relé oscilador

En este caso la realimentación se hará con un contacto normalmente cerrado 
del relé K1. Cuando se presione el pulsador S1, la corriente circulará por 
la bobina. La bobina actuará moviendo los contactos y el contacto K1 
normalmente cerrado se abrirá. Al abrirse este contacto, dejará de 
circular corriente por la bobina. La bobina dejará de actuar, con lo que 
el contacto K1 volverá a cerrarse permitiendo otra vez que circule la 
corriente por la bobina.

#figure(
  image("electric-rele-03.png", width: 84mm),
)

]

#pagebreak()


//
// PÁGINA 2
//


#place(center)[ #line(angle: 90deg, length: 130mm) ]

#columns(2, gutter: 0.8cm)[


= Historia del relé

El relé se inventó en *1835* y comenzó a utilizarse en telegrafía para 
amplificar las señales de larga distancia. Como el relé es capaz de 
controlar una potencia de salida mayor que la de entrada puede 
considerarse un amplificador que permitía aumentar la calidad de las 
señales telegráficas.

En *1941* Konrad Zuse terminó la primera computadora a base de relés.
Los relés se sustituyeron posteriormente por válvulas de vacío, mucho más
rápidas. A partir del año 1954 se comenzaron a usar los transistores, más 
rápidos aún y mucho más fiables. Actualmente se siguen utilizando los 
transistores en los ordenadores y en multitud de aparatos electrónicos. 

Si bien los relés ya no se utilizan como base de los ordenadores, todavía 
hoy en día se usan con frecuencia en automatismos para controlar motores y 
otros elementos de gran potencia. Ejemplos se pueden encontrar en las 
casas para mover los ascensores, las bombas de agua o el temporizador de 
luz de la escalera.

#colbreak()


= Contactores

Los contactores son relés especiales de gran potencia que sirven para 
mover motores trifásicos, es decir, que tienen tres líneas de alimentación 
de corriente.

En el siguiente dibujo se puede ver el esquema de un contactor alimentando 
un motor trifásico. En este circuito se puede apreciar el valor de los 
relés para manejar grandes potencias y conmutar muchos circuitos con una 
pequeña señal de baja tensión.


#figure(
  image("electric-rele-04.png", width: 62mm),
)

]



#align(center)[
  #v(50mm)
  #text(size: 16pt, weight: "bold")[EJERCICIOS]
  #v(2mm)
]

#place(center)[ #line(angle: 90deg, length: 83mm) ]

#columns(2, gutter: 0.8cm)[

+ ¿Qué es un relé y para qué sirve?
+ Dibuja un esquema de un relé con su bobina y sus contactos.
+ Dibuja el esquema eléctrico de un relé que encienda una bombilla de 125 V
  desde un pulsador alimentado a 24 V.
+ Explica el funcionamiento del circuito anterior.
+ Dibuja el esquema de un relé que encienda una resistencia de 23 ohmios
  alimentada a 220 V con dos pulsadores, uno de marcha y otro de parada.
+ Explica cómo funciona el circuito anterior.
+ Dibuja los dos estados de un relé oscilador mientras se presiona el
  pulsador.
+ ¿Qué usos ha tenido el relé a lo largo de la historia?
+ ¿Qué componentes electrónicos sustituyeron al relé?
+ ¿Para qué se utilizan los relés en la actualidad?
+ ¿Qué es un contactor y para qué se utiliza?
+ Dibuja el esquema de un contactor que haga funcionar un motor
  trifásico cuando se pulse un contacto normalmente abierto.

]