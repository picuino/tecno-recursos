//
// CONFIGURACIÓN DE PÁGINA
//
#set page(
  paper: "a4",
  margin: ( top: 0.8cm, bottom: 0.6cm, left: 1.5cm, right: 1.5cm )
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
  [Componentes eléctricos]
)

#pregunta([Dibuja los símbolos de los siguientes componentes:], 1.8)
#v(-2mm)
#table(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr),
  inset: 2mm,
  rows: 32mm,
  align: center + top,
  [Pila], [Motor], [Voltímetro], [Resistencia], [Lámpara],
  [Interruptor], [Altavoz], [Conexión a Tierra], [Diodo LED], [Condensador],
  [Bobina], [Pulsador Normalmente Abierto], [Conector], [Potenciómetro], [Generador],
)


#pregunta([Escribe el nombre de los componentes a partir de sus símbolos:], 1.8)
#v(-2mm)
#table(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr),
  inset: 2mm,
  rows: 32mm,
  align: center + top,
  image("_images/electric-simbolo-puerta-and.png", width: 100%),
  image("_images/electric-simbolo-resistencia-ntc.png", width: 100%),
  image("_images/electric-simbolo-fusible.png", width: 100%),
  image("_images/electric-simbolo-final-carrera.png", width: 100%),
  image("_images/electric-simbolo-resistencia-ldr.png", width: 100%),
  image("_images/electric-simbolo-pulsador-nc.png", width: 100%),
  image("_images/electric-simbolo-puerta-xor.png", width: 100%),
  image("_images/electric-simbolo-transformador.png", width: 100%),
  image("_images/electric-simbolo-amplificador-operacional.png", width: 100%),
  image("_images/electric-simbolo-zumbador.png", width: 100%),
  image("_images/electric-simbolo-cable-conectado.png", width: 100%),
  image("_images/electric-simbolo-conmutador.png", width: 100%),
  image("_images/electric-simbolo-npn.png", width: 100%),
  image("_images/electric-simbolo-puerta-or.png", width: 100%),
  image("_images/electric-simbolo-amperimetro.png", width: 100%),
)


#pregunta([Resuelve los siguientes circuitos escribiendo la ley de ohm en
cada uno de ellos.], 3.0)
#table(
  columns: (1fr, 1fr, 1fr),
  inset: 0mm,
  rows: 40mm,
  align: center + top,
  image("_images/electric-ley-ohm-07.png", width: 90%),
  image("_images/electric-ley-ohm-09.png", width: 90%),
  image("_images/electric-ley-ohm-10.png", width: 90%),
  
  image("_images/electric-ley-ohm-14.png", width: 90%),
  image("_images/electric-ley-ohm-17.png", width: 90%),
  image("_images/electric-ley-ohm-18.png", width: 90%),
  
  image("_images/electric-ley-ohm-31.png", width: 90%),
  image("_images/electric-ley-ohm-34.png", width: 90%),
  image("_images/electric-ley-ohm-37.png", width: 90%),
)

#pregunta([¿Qué tipos de materiales hay dependiendo de cómo conducen la
electricidad? Escribe dos ejemplos de cada uno.], 0.6)
#v(2fr)

#pregunta([¿Por qué son tan útiles los semiconductores?], 0.3)
#v(1fr)

#pregunta([¿Qué aplicaciones tienen los diodos?], 0.3)
#v(1fr)

#pregunta([¿Cuándo conduce corriente un diodo?], 0.3)
#v(1fr)

#pregunta([¿Qué es un transistor? ¿Cuántos terminales tiene?], 0.4)
#v(1fr)

#pregunta([¿Qué estados del transistor se utilizan en los circuitos
analógicos? ¿Y en los digitales?], 0.3)
#v(1fr)

#pregunta([¿Qué es una LDR y qué significan esas siglas?], 0.4)
#v(1fr)

#pregunta([¿Qué es un circuito integrado o chip?], 0.4)
#v(1fr)

#pregunta([¿Qué es la ley de Moore?], 0.4)
#v(1fr)


#test_puntos_acumulados()