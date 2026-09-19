//
// CONFIGURACIÓN DE PÁGINA
//
#set page(
  paper: "a4",
  margin: (top: 10mm, bottom: 8mm, left: 10mm, right: 10mm ),
  columns: 2,
)

#set columns(
  gutter: 6mm
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

#show table.cell: set text(weight: "bold")

#show link: set text(fill: blue.darken(80%))

//
// DATOS
//

#let datos = (
  ([4,7 M#sym.Omega], [AMARILLO], [VIOLETA], [VERDE], [ORO], [1,91 μA]),
  ([22 #sym.Omega], [ROJO], [ROJO], [NEGRO], [ORO], [409 mA]),
  ([15 #sym.Omega], [MARRÓN], [VERDE], [NEGRO], [ORO], [600 mA]),
  ([3,3 #sym.Omega], [NARANJA], [NARANJA], [ORO], [ORO], [2,73 A]),
  ([10 k#sym.Omega], [MARRÓN], [NEGRO], [NARANJA], [ORO], [900 μA]),
  ([150 #sym.Omega], [MARRÓN], [VERDE], [MARRÓN], [ORO], [60,0 mA]),
  ([220 #sym.Omega], [ROJO], [ROJO], [MARRÓN], [ORO], [40,9 mA]),
  ([47 #sym.Omega], [AMARILLO], [VIOLETA], [NEGRO], [ORO], [192 mA]),
  ([3,3 k#sym.Omega], [NARANJA], [NARANJA], [ROJO], [ORO], [2,73 mA]),
  ([2,2 k#sym.Omega], [ROJO], [ROJO], [ROJO], [ORO], [4,09 mA]),
  ([100 #sym.Omega], [MARRÓN], [NEGRO], [MARRÓN], [ORO], [90,0 mA]),
  ([680 #sym.Omega], [AZUL], [GRIS], [MARRÓN], [ORO], [13,2 mA]),
  ([22 k#sym.Omega], [ROJO], [ROJO], [NARANJA], [ORO], [409 μA]),
  ([100 k#sym.Omega], [MARRÓN], [NEGRO], [AMARILLO], [ORO], [90,0 μA]),
  ([1,0 #sym.Omega], [MARRÓN], [NEGRO], [ORO], [ORO], [9,00 A]),
  ([68 k#sym.Omega], [AZUL], [GRIS], [NARANJA], [ORO], [132 μA]),
  ([680 k#sym.Omega], [AZUL], [GRIS], [AMARILLO], [ORO], [13,2 μA]),
  ([3,3 M#sym.Omega], [NARANJA], [NARANJA], [VERDE], [ORO], [2,73 μA]),
  ([1,5 k#sym.Omega], [MARRÓN], [VERDE], [ROJO], [ORO], [6,00 mA]),
  ([4,7 k#sym.Omega], [AMARILLO], [VIOLETA], [ROJO], [ORO], [1,91 mA]),
  ([2,2 #sym.Omega], [ROJO], [ROJO], [ORO], [ORO], [4,09 A]),
  ([10 #sym.Omega], [MARRÓN], [NEGRO], [NEGRO], [ORO], [900 mA]),
  ([2,2 M#sym.Omega], [ROJO], [ROJO], [VERDE], [ORO], [4,09 μA]),
  ([15 k#sym.Omega], [MARRÓN], [VERDE], [NARANJA], [ORO], [600 μA]),
  ([330 k#sym.Omega], [NARANJA], [NARANJA], [AMARILLO], [ORO], [27,3 μA]),
  ([220 k#sym.Omega], [ROJO], [ROJO], [AMARILLO], [ORO], [40,9 μA]),
  ([4,7 #sym.Omega], [AMARILLO], [VIOLETA], [ORO], [ORO], [1,91 A]),
  ([6,8 M#sym.Omega], [AZUL], [GRIS], [VERDE], [ORO], [1,32 μA]),
  ([470 #sym.Omega], [AMARILLO], [VIOLETA], [MARRÓN], [ORO], [19,2 mA]),
  ([1,0 k#sym.Omega], [MARRÓN], [NEGRO], [ROJO], [ORO], [9,00 mA]),
  ([47 k#sym.Omega], [AMARILLO], [VIOLETA], [NARANJA], [ORO], [192 μA]),
  ([1,5 #sym.Omega], [MARRÓN], [VERDE], [ORO], [ORO], [6,00 A]),
  ([33 #sym.Omega], [NARANJA], [NARANJA], [NEGRO], [ORO], [273 mA]),
  ([1,5 M#sym.Omega], [MARRÓN], [VERDE], [VERDE], [ORO], [6,00 μA]),
  ([150 k#sym.Omega], [MARRÓN], [VERDE], [AMARILLO], [ORO], [60,0 μA]),
  ([6,8 #sym.Omega], [AZUL], [GRIS], [ORO], [ORO], [1,32 A]),
  ([68 #sym.Omega], [AZUL], [GRIS], [NEGRO], [ORO], [132 mA]),
  ([330 #sym.Omega], [NARANJA], [NARANJA], [MARRÓN], [ORO], [27,3 mA]),
  ([1,0 M#sym.Omega], [MARRÓN], [NEGRO], [VERDE], [ORO], [9,00 μA]),
  ([33 k#sym.Omega], [NARANJA], [NARANJA], [NARANJA], [ORO], [273 μA]),
  ([6,8 k#sym.Omega], [AZUL], [GRIS], [ROJO], [ORO], [1,32 mA]),
  ([470 k#sym.Omega], [AMARILLO], [VIOLETA], [AMARILLO], [ORO], [19,2 μA])
)
#let datos-inicio = datos.slice(0, 10)
#let datos-fin = datos.slice(10)


//
// DEFINICIONES
//

#let encabezado() = [
  #align(center)[
    #title[
      #link("https://www.picuino.com/es/electronic-codigo-colores.html")[
        CÓDIGO DE COLORES \ PARA RESISTENCIAS
      ]
    ]

    #image("electronic-resistor-02.png", width: 70mm)

    #link("https://creativecommons.org/licenses/by-sa/4.0/deed.es")[*Licencia CC BY-SA 4.0*] 
    #h(12mm)
    #link("https://picuino.com/es/index.html")[*www.picuino.com*]
  ]

  - Calcula los colores y las resistencias que faltan en las siguientes tablas.
  - En la última columna, calcula la corriente que circulará por la resistencia
    cuando la conectemos a una pila de 9 voltios.
  - Todos los valores se deben escribir con 3 decimales y con el símbolo
    multiplicador que mejor le corresponda (M=Mega, k=kilo, m=mili, μ=micro)
]

#let tabla-colores() = [
  #set text(size: 10pt)
  #table(
    columns: (3fr, 2fr, 3fr, 2fr),
    align: center + horizon,
    rows: (10mm,) + (5mm,) * 11,
    fill: (x, y) => if y == 0 { rgb("d0d0d0") } else { none },
    table.header(
      [COLOR], [VALOR], [MULTIPLICADOR], [TOLERANCIA],
    ),
    [NEGRO],    [0],   [x 1],         [],
    [MARRÓN],   [1],   [x 10],        [#sym.plus.minus 1%],
    [ROJO],     [2],   [x 100],       [#sym.plus.minus 2%],
    [NARANJA],  [3],   [x 1000],      [],
    [AMARILLO], [4],   [x 10 000],    [],
    [VERDE],    [5],   [x 100 000],   [],
    [AZUL],     [6],   [x 1000 000],  [],
    [VIOLETA],  [7],   [],            [],
    [GRIS],     [8],   [],            [],
    [BLANCO],   [9],   [],            [],
    [ORO],      [],    [x 0,1],       [#sym.plus.minus 5%],
  )
]


//
// CONTENIDO
//

#encabezado()

#tabla-colores()

#v(1fr)
#v(5mm)

#block[

  #align(center)[== SERIE COMERCIAL E6: (5%)]

  #set text(size: 9pt)
  #set par(leading: 4pt)

  #show table.cell: it => {
    if ((it.x == 0 and calc.even(it.y) and it.y > 0) or 
       (it.x > 0 and calc.odd(it.y) and it.y > 0)) {
      hide(it)
    } else { it }
  }

  #table(
    columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1.2fr),
    align: center + horizon,
    rows: (8.44mm,) + (8.44mm,) * datos-inicio.len(),
    inset: 0.5mm,
    fill: (x, y) => 
      if y == 0 { 
        rgb("e0e0e0") 
      } else {
        if ((x == 0 and calc.even(y)) or (x > 0 and calc.odd(y))) {
          rgb("ccffff")
        } else { none }
      },
    table.header(
      [Valor #sym.Omega], [Banda 1], [Banda 2], [Banda 3], [Banda 4], [I = 9V / R],
    ),
    ..datos-inicio.flatten()
  )
  
  #colbreak()
  
  #table(
    columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1.2fr),
    align: center + horizon,
    rows: (8.44mm,) + (1fr,) * datos-fin.len(),
    inset: 1mm,
    fill: (x, y) => 
      if y == 0 { 
        rgb("e0e0e0") 
      } else {
        if ((x == 0 and calc.even(y)) or (x > 0 and calc.odd(y))) {
          rgb("ccffff")
        } else { none }
      },
    table.header(
      [Valor #sym.Omega], [Banda 1], [Banda 2], [Banda 3], [Banda 4], [I = 9V / R],
    ),
    ..datos-fin.flatten()
  )

]


//
// PÁGINA 2
//


#encabezado()

#tabla-colores()

#v(1fr)
#v(5mm)

#block[
  #align(center)[== SERIE COMERCIAL E6: (5%)]
  
  #set text(size: 9pt)
  #set par(leading: 4pt)
  #show table.cell: set text(weight: "bold")
  
  #show table.cell: it => {
    if ((it.x == 0 and calc.odd(it.y) and it.y > 0) or 
       (it.x > 0 and calc.even(it.y) and it.y > 0)) {
      hide(it)
    } else { it }
  }
  
  #table(
    columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1.2fr),
    align: center + horizon,
    rows: (8.44mm,) + (8.44mm,) * datos-inicio.len(),
    inset: 0.5mm,
    fill: (x, y) => 
      if y == 0 { 
        rgb("e0e0e0")
      } else {
        if ((x == 0 and calc.odd(y)) or (x > 0 and calc.even(y))) {
          rgb("ccffff")
        } else { none }
      },
    table.header(
      [Valor #sym.Omega], [Banda 1], [Banda 2], [Banda 3], [Banda 4], [I = 9V / R],
    ),
    ..datos-inicio.flatten()
  )
  
  #colbreak()
  
  #table(
    columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1.2fr),
    align: center + horizon,
    rows: (8.44mm,) + (1fr,) * datos-fin.len(),
    inset: 1mm,
    fill: (x, y) => 
      if y == 0 { 
        rgb("e0e0e0")
      } else {
        if ((x == 0 and calc.odd(y)) or (x > 0 and calc.even(y))) {
          rgb("ccffff")
        } else { none }
      },
    table.header(
      [Valor #sym.Omega], [Banda 1], [Banda 2], [Banda 3], [Banda 4], [I = 9V / R],
    ),
    ..datos-fin.flatten()
  )
]







