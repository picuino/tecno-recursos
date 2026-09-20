//
// CONFIGURACIÓN DE PÁGINA
//
#set page(
  paper: "a4",
  margin: ( top: 0.8cm, bottom: 0.6cm, left: 1cm, right: 1cm )
)

#set text(
  font: "Liberation Sans",
  lang: "es",
  size: 11pt,
  hyphenate: true
)

#set par(
  justify: true
)
  
#import "_plantilla_examen.typ": *

//
// EXAMEN
// 

#cabecera(
  [4º ESO Tecnología],
  [Electrónica Analógica. El Diodo]
)


#place(center)[ #line(angle: 90deg, length: 26.5cm) ]

#columns(2, gutter: 0.8cm)[

#pregunta([Dibuja el símbolo de un diodo semiconductor con el nombre de
sus terminales.], 0.8)
#v(32mm)


#pregunta([Qué función realiza un diodo? ¿Cuándo conduce corriente?], 0.8)
#v(48mm)


#pregunta([¿Qué es la tensión umbral y cuánto vale para diferentes diodos?], 0.8)
#v(56mm)


#pregunta([Dibuja un circuito rectificador de *ONDA COMPLETA* que rectifique
la tensión alterna de un generador de 230 voltios y que alimente a una
resistencia de 100 ohmios.], 1.0)

#colbreak()

#pregunta([En cada una de las siguientes gráficas indica a qué tipo de
rectificador corresponden.], 1.0)

#image("_images/electronic-diode-wave-01.png", width: 100%, height: 28mm, fit: "stretch")
#v(4mm)

#image("_images/electronic-diode-wave-02.png", width: 100%, height: 28mm, fit: "stretch")
#v(4mm)

#image("_images/electronic-diode-wave-03.png", width: 100%, height: 28mm, fit: "stretch")
#v(4mm)

#image("_images/electronic-diode-wave-04.png", width: 100%, height: 28mm, fit: "stretch")
#v(4mm)


#pregunta([Dibuja el esquema de una bobina de 1 Henrio en serie con una
resistencia de 100 ohmios, en serie con un interruptor y con una pila
de 5 voltios. Coloca correctamente un diodo de protección de rueda libre
en paralelo a la bobina.], 0.8)

]

#pagebreak()

#place(center)[ #line(angle: 90deg, length: 28.1cm) ]

#columns(2, gutter: 0.8cm)[


#pregunta([Dibuja el símbolo del diodo zener con el nombre de sus
terminales.], 0.8)
#v(32mm)


#pregunta([¿Qué otros diodos están relacionados con los diodos zener
porque realizan la misma función? ¿En qué se diferencian de los zener?], 0.8)
#v(48mm)


#pregunta([Dibuja un circuito con un diodo zener que limite la tensión
a 5.6 voltios a partir de una tensión de alimentación de 12 voltios.
Calcula la resistencia de polarización del diodo zener para que conduzca
aproximadamente 20 miliamperios.], 0.8)

#colbreak()


#pregunta([Dibuja el esquema eléctrico de una linterna que alimenta un
diodo led con 3 pilas de 1.5 voltios cada una.], 0.8)
#v(80mm)


#pregunta([Calcula la resistencia de polarización de un diodo led sabiendo
que la tensión de alimentación es de 4.5 voltios, la tensión umbral del
led es de 3 voltios y la corriente es de 50 miliamperios.], 0.8)
#v(64mm)


#pregunta([Calcula la resistencia de polarización de un diodo led sabiendo
que la tensión de alimentación es de 5 voltios, la tensión umbral del led
es de 1.8 voltios y la corriente es de 15 miliamperios.], 0.8)

]

#test_puntos_acumulados()