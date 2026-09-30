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
  [3º ESO Tecnología y Digitalización],
  [Energía Eléctrica.]
)


#place(center)[ #line(angle: 90deg, length: 26.5cm) ]

#columns(2, gutter: 0.8cm)[


#pregunta([¿Qué beneficios aporta la energía a nuestra
sociedad?], 0.25, sep: 1fr)
#pregunta([¿Qué está causando el uso excesivo de energías
fósiles?], 0.25, sep: 1fr)
#pregunta([¿Qué es la energía?], 0.25, sep: 1fr)
#pregunta([¿Qué tipo de energía tiene un objeto debido a su
posición en un campo gravitatorio?], 0.25, sep: 1fr)
#pregunta([¿Qué tipo de energía tiene un objeto debido a su
velocidad?], 0.25, sep: 1fr)
#pregunta([¿Qué tipo de energía transmite el eje de una
batidora?], 0.25, sep: 1fr)
#pregunta([¿Qué forma de energía se basa en el movimiento
interno de los átomos y moléculas de un objeto?], 0.25, sep: 1fr)
#pregunta([¿Qué tipo de energía tienen los
combustibles?], 0.25, sep: 1fr)
#pregunta([¿Qué tipo de energía es interna a los átomos y se
libera en reacciones de fisión?], 0.25, sep: 1fr)
#pregunta([¿Qué tipo de energía emite un horno microondas?], 0.25, sep: 1fr)


#colbreak()


#pregunta([¿Cómo se puede almacenar la energía eléctrica?], 0.25, sep: 3fr)
#pregunta([¿Cómo se puede transformar la energía mecánica en energía
eléctrica?], 0.25, sep: 3fr)
#pregunta([Cuando transformamos energía de un tipo a otro se producen
pérdidas que se terminan convirtiendo en energía...], 0.25, sep: 3fr)
#pregunta([¿Qué tipo de energía tienen en su interior las pilas y las
baterías?], 0.25, sep: 3fr)
#pregunta([Según el primer principio de la termodinámica, la
energía...], 0.25, sep: 3fr)
#pregunta([¿Qué energía se transforma al quemar gas natural en una
caldera de calefacción?], 0.25, sep: 3fr)
#pregunta([El vapor de agua sobrecalentado en una planta nuclear
se usa para...], 0.25, sep: 3fr)
#pregunta([La energía química de la gasolina en un automóvil se
convierte primero en...], 0.25, sep: 3fr)

]

#pagebreak()


//
// PÁGINA 2
//

#place(center)[ #line(angle: 90deg, length: 28.1cm) ]

#columns(2, gutter: 0.8cm)[

#pregunta([En un aerogenerador, la energía cinética del viento se
convierte en...], 0.25, sep: 3fr)
#pregunta([En la conversión de energía de una presa, la turbina
convierte la energía...], 0.25, sep: 3fr)
#pregunta([En el proceso de convertir gas natural en energía eléctrica,
la turbina convierte la energía térmica en...], 0.25, sep: 3fr)
#pregunta([Una resistencia eléctrica convierte de forma
eficiente...], 0.25, sep: 3fr)
#pregunta([¿Qué es una fuente de energía? ], 0.25, sep: 3fr)
#pregunta([¿Qué fuente de energía no renovable es la más utilizada
actualmente para transporte y calefacción? ], 0.25, sep: 3fr)
#pregunta([¿Qué efecto tiene el metano del gas natural cuando se
libera en la atmósfera? ], 0.25, sep: 3fr)
#pregunta([¿Qué desventaja presenta la energía nuclear? ], 0.25, sep: 3fr)
#pregunta([¿Cuál es uno de los principales problemas de las
energías renovables? ], 0.25, sep: 3fr)
#pregunta([¿Qué hay que hacer en la red eléctrica
constantemente? ], 0.25, sep: 3fr)


#colbreak()


#pregunta([Un automóvil eléctrico consigue recargar su batería
de 90kWh en su casa desde el 30% de capacidad hasta el 90% de
capacidad en 10 horas. ¿Qué potencia tiene el punto de
carga?], 1.0, sep: 8fr)

#pregunta([Una calculadora electrónica consume una potencia de
0,25 mili-vatios. Sabiendo que su pila de litio tiene una capacidad
de 0,8 vatios-hora ¿Cuántas horas puede estar en funcionamiento antes
de que se agote la batería?], 1.0, sep: 8fr)

#pregunta([La factura eléctrica de una vivienda es de  260 kWh al mes.
Se calcula que la tercera parte de esa energía la consume el frigorífico,
que está siempre en funcionamiento. ¿Qué potencia media consume este
electrodoméstico?], 1.0, sep: 8fr)

]


#test_puntos_acumulados()