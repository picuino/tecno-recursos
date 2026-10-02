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
  size: 10pt,
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

#show figure.caption: set text(size: 10pt, weight: "bold")


//
// PÁGINA 1
//

#align(center)[
  #text(size: 16pt, weight: "bold")[EL MOTOR ELÉCTRICO]
  #v(2mm)
]

#place(center)[ #line(angle: 90deg, length: 265mm) ]

#columns(2, gutter: 0.8cm)[


= Qué es un motor eléctrico

Un motor eléctrico es una *máquina* que transforma la energía eléctrica en
energía mecánica de giro. Los motores eléctricos son ampliamente 
utilizados para producir movimientos en juguetes, electrodomésticos, 
vehículos de transporte, herramientas eléctricas, máquinas industriales, 
bombas de agua, etc.

El motor eléctrico también puede comportarse como un generador de energía 
eléctrica cuando se le fuerza a girar. Este generador de electricidad es 
mucho más barato y duradero que las pilas electroquímicas.


= Historia del motor eléctrico

En la década de *1820* H. C. Ørsted y Michael Faraday descubrieron los 
principios básicos del electromagnetismo, necesarios para construir 
motores.

Entre *1834 y 1838* se desarrolla el primer motor eléctrico práctico, que
sirvió para impulsar un barco para doce personas en San Petersburgo.

En *1866* Werner von Siemens patentó la dinamo iniciando la producción de 
electricidad de forma industrial, con corriente continua.

A partir de *1880* comenzaron a construirse redes y centrales eléctricas
de corriente continua en muchos países, entre ellos España.

En *1888* Nikola Tesla fabricó el primer motor de corriente alterna. Esta 
forma de corriente es la que terminó por utilizarse en las redes de 
distribución eléctrica gracias a sus ventajas y gracias a las patentes 
cedidas gratuitamente por Tesla a la empresa Westinhouse.


= Historia de la electrificación de España

En España la primera empresa que produjo y comercializó electricidad 
(Sociedad Española de Electricidad) se creó en 1881 en Barcelona. Sin 
embargo no fue hasta muchos años después cuando la electricidad llegó de 
forma masiva a todos los hogares.

#table(
  columns: (auto, 1fr, 1fr),
  
  align: center + horizon,

  fill: (col, row) => if row == 0 { rgb("f0f0f0") } else { none },

  table.header(
    [*Año*], [*Energía generada*], [*Hogares con\ electricidad*]
  ),

  // Datos
  [1940], [3,6 TWh], [60 %],
  [1950], [6,9 TWh], [80 %],
  [1960], [19 TWh],  [90 %],
  [1970], [57 TWh],  [95 %],
  [1980], [110 TWh], [99 %],
  [1990], [152 TWh], [100 %],
)


= Clasificación de los motores

- Motores de corriente continua y motores universales.
- Motores síncronos y motores brushless.
- Motores de inducción.
- Motores de reluctancia y motores paso a paso.


= Partes del motor

Un motor eléctrico está compuesto por dos grandes bloques, el estátor que
permanece fijo y el rotor que gira cuando el motor está en funcionamiento.

Motor de inducción de corriente alterna, abierto para poder observar su
interior:

#figure(
  image("electric-motor-induccion-num.jpg", width: 100%),
  
  caption: [
    #link("https://commons.wikimedia.org/wiki/File:Rotterdam_Ahoy_Europort_2011_(14).JPG")[S. J. de Waard]
    #link("https://creativecommons.org/licenses/by-sa/3.0/deed.en")[CC BY-SA 3.0]     
  ]
)

1. Rotor de jaula de ardilla (inducido).
2. y 3. Rodamientos que sujetan el eje del rotor.
4. Eje giratorio que transporta la energía mecánica.
5. Carcasa con aletas de enfriamiento.
6. Ventilador con aspas que enfría la carcasa.
7. Estátor que genera un campo magnético giratorio.
8. Bobinas del estátor alimentadas con corriente alterna.
9. Pie de sujeción del estátor para fijar al motor.

Rotor de un motor de corriente continua. En este motor el campo magnético
del estátor es fijo:

#figure(
  image("electric-motor-dc-num.jpg", width: 100%),
  
  caption: [
    #link("https://commons.wikimedia.org/wiki/File:Kommutator_universalmotor_stab.jpg")[Sebastian Stabinger]
    #link("https://creativecommons.org/licenses/by-sa/3.0/deed.en")[CC BY-SA 3.0]     
  ]
)

10. Colector con delgas de conexión.
11. Devanado de hilo de cobre (bobinas del rotor).
12. Polos magnéticos del rotor.
13. Eje de giro del rotor.

]

#pagebreak()


//
// PÁGINA 2
//


#place(center)[ #line(angle: 90deg, length: 165mm) ]

#columns(2, gutter: 0.8cm)[

= Funcionamiento del motor eléctrico

El funcionamiento del motor eléctrico se basa en  la fuerza que ejerce
un campo magnético sobre una corriente eléctrica (fuerza de Lorentz).

#figure(
  image("electric-motor-simplified-02.png", width: 50mm),
)

Los motores de *corriente continua* tienen devanados con muchos cables de
cobre aislados (11) por los que pasa corriente proveniente del colector de 
delgas (10). El campo magnético del estátor es fijo, producido por imanes 
permanentes o por un electroimán.

El campo magnético genera una fuerza en la corriente que circula por los 
hilos de cobre que tiende a girar el rotor. Si invertimos el sentido de la 
corriente, la fuerza también cambia de sentido y el motor girará en 
sentido contrario.

Cuando el rotor gira, también gira el colector de delgas y alimenta con 
corriente nuevos cables del rotor. De esta forma siempre están alimentados 
los cables horizontales que producen fuerza de giro.

En los *motores de inducción* los cables del rotor se sustituyen por barras 
conductoras. El campo magnético del estátor es giratorio y arrastra 
consigo en su giro a las barras del rotor.

#colbreak()


= El variador de frecuencia

Un variador de frecuencia es un dispositivo electrónico que controla la 
tensión y la corriente de alimentación del motor.

#figure(
  image("electric-motor-variador.jpg", width: 60mm),
  
  caption: [
    #link("https://commons.wikimedia.org/wiki/File:Small_variable-frequency_drive.jpg")[C. J. Cowie]
    #link("https://creativecommons.org/licenses/by-sa/3.0/deed.en")[CC BY-SA 3.0]     
  ]
)

La *corriente de alimentación* del motor es proporcional a la fuerza de
giro (par motor). La *tensión de alimentación*, y su frecuencia, es
proporcional a la velocidad de giro del motor. Controlando la corriente y
la tensión se controla con precisión el funcionamiento del motor.

Una aplicación del variador de frecuencia es mover de forma suave los 
motores de los vehículos para que tengan una aceleración constante. 
También pueden controlar la velocidad del medio de transporte.

Cuando el variador está funcionando produce un zumbido audible que es 
característico de los motores de tren y de los automóviles eléctricos.

]



#align(center)[
  #v(20mm)
  #text(size: 16pt, weight: "bold")[EJERCICIOS]
  #v(2mm)
]

#place(center)[ #line(angle: 90deg, length: 75mm) ]

#columns(2, gutter: 0.8cm)[

+ ¿Qué es un motor eléctrico y para qué sirve?
+ ¿Qué es un generador eléctrico y qué relación tiene con los motores?
+ Dibuja una línea de tiempo en la que aparezcan los principales hitos
  de la historia del motor eléctrico.
+ Dibuja un gráfico de la historia de la electrificación en España.
  Debe aparecer una línea con la energía anual generada con los valores
  en el eje vertical izquierdo en tramos de 15 TWh y otra línea con el
  porcentaje de hogares con electricidad con los valores en el eje
  vertical derecho en tramos de 10%.
+ Aproximadamente ¿en qué año tuvieron instalada electricidad el 85% de
  los hogares en España?.
+ Nombra 5 tipos diferentes de motores eléctricos.
+ Dibuja un motor de inducción y nombra sus partes principales.
+ Dibuja el rotor de un motor de corriente continua y nombra sus partes principales.
+ Explica el funcionamiento de un motor de corriente continua.
+ ¿Qué es y para qué sirve un variador de frecuencia para motor?
  Escribe un ejemplo de aplicación.
+ ¿Cómo se puede controlar la velocidad de giro de un motor?
  ¿Y su par de giro?

]