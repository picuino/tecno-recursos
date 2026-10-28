//
// CONFIGURACIÓN DE PÁGINA
//

#set page(
  paper: "a4",
  margin: ( top: 10mm, bottom: 15mm, left: 10mm, right: 10mm )
)

#set page(
  header: none,
  footer: context {
    grid(
      columns: (auto, 1fr, auto, 1fr, auto),
      text(size: 10pt, weight: "bold")[
      #link("https://www.jpl.nasa.gov/edu/resources/project/space-origami-make-your-own-starshade/")[Origami: Starshade]],
      [],
      text(size: 10pt, weight: "bold")[
      #link("https://creativecommons.org/licenses/by-sa/4.0/deed.es")[*Licencia CC BY-SA 4.0*]],
      [],
      text(size: 10pt, weight: "bold")[
      #link("https://www.picuino.com/es/index.html")[*www.picuino.com*]],
      [],
    )
  }
)

#set text(
  font: "Liberation Sans",
  lang: "es",
  size: 12pt,
  hyphenate: true
)

#set par(
  justify: true,
)

#show heading: it => block()[
  #if it.level == 1 {
    text(size: 14pt, weight: "bold")[#it]
  } else if it.level == 2 {
    text(size: 12pt, weight: "bold")[#it]
  } else {
    it
  }
]

// ***********************************************************************
// PÁGINA 1
//

#align(center)[ = ORIGAMI: STARSHADE 6]

+ *Recorta* con cuidado siguiendo las líneas exteriores (negras) para
  separar el modelo.
+ *Dobla* todas las líneas de manera que todos los trazos sobresalgan hacia 
  arriba.
+ *Vuelve a doblar* las líneas grises en el sentido contrario, hacia 
  dentro.
+ *Dobla y pliega* con cuidado las líneas de pliegue principales
  (radios en espiral) de manera que la pieza se enrolle sobre si misma.

Proyecto original: #link("https://www.jpl.nasa.gov/edu/resources/project/space-origami-make-your-own-starshade/")[Starshade del JPL.]

#v(1fr)
#image("origami-starshade-6.svg", width: 100%)
#v(1fr)