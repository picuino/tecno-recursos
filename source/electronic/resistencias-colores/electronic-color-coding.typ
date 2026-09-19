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
  lang: "en",
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
  ([4,7 M#sym.Omega], [YELLOW], [VIOLET], [GREEN], [GOLD], [1,91 μA]),
  ([22 #sym.Omega], [RED], [RED], [BLACK], [GOLD], [409 mA]),
  ([15 #sym.Omega], [BROWN], [GREEN], [BLACK], [GOLD], [600 mA]),
  ([3,3 #sym.Omega], [ORANGE], [ORANGE], [GOLD], [GOLD], [2,73 A]),
  ([10 k#sym.Omega], [BROWN], [BLACK], [ORANGE], [GOLD], [900 μA]),
  ([150 #sym.Omega], [BROWN], [GREEN], [BROWN], [GOLD], [60,0 mA]),
  ([220 #sym.Omega], [RED], [RED], [BROWN], [GOLD], [40,9 mA]),
  ([47 #sym.Omega], [YELLOW], [VIOLET], [BLACK], [GOLD], [192 mA]),
  ([3,3 k#sym.Omega], [ORANGE], [ORANGE], [RED], [GOLD], [2,73 mA]),
  ([2,2 k#sym.Omega], [RED], [RED], [RED], [GOLD], [4,09 mA]),
  ([100 #sym.Omega], [BROWN], [BLACK], [BROWN], [GOLD], [90,0 mA]),
  ([680 #sym.Omega], [BLUE], [GREY], [BROWN], [GOLD], [13,2 mA]),
  ([22 k#sym.Omega], [RED], [RED], [ORANGE], [GOLD], [409 μA]),
  ([100 k#sym.Omega], [BROWN], [BLACK], [YELLOW], [GOLD], [90,0 μA]),
  ([1,0 #sym.Omega], [BROWN], [BLACK], [GOLD], [GOLD], [9,00 A]),
  ([68 k#sym.Omega], [BLUE], [GREY], [ORANGE], [GOLD], [132 μA]),
  ([680 k#sym.Omega], [BLUE], [GREY], [YELLOW], [GOLD], [13,2 μA]),
  ([3,3 M#sym.Omega], [ORANGE], [ORANGE], [GREEN], [GOLD], [2,73 μA]),
  ([1,5 k#sym.Omega], [BROWN], [GREEN], [RED], [GOLD], [6,00 mA]),
  ([4,7 k#sym.Omega], [YELLOW], [VIOLET], [RED], [GOLD], [1,91 mA]),
  ([2,2 #sym.Omega], [RED], [RED], [GOLD], [GOLD], [4,09 A]),
  ([10 #sym.Omega], [BROWN], [BLACK], [BLACK], [GOLD], [900 mA]),
  ([2,2 M#sym.Omega], [RED], [RED], [GREEN], [GOLD], [4,09 μA]),
  ([15 k#sym.Omega], [BROWN], [GREEN], [ORANGE], [GOLD], [600 μA]),
  ([330 k#sym.Omega], [ORANGE], [ORANGE], [YELLOW], [GOLD], [27,3 μA]),
  ([220 k#sym.Omega], [RED], [RED], [YELLOW], [GOLD], [40,9 μA]),
  ([4,7 #sym.Omega], [YELLOW], [VIOLET], [GOLD], [GOLD], [1,91 A]),
  ([6,8 M#sym.Omega], [BLUE], [GREY], [GREEN], [GOLD], [1,32 μA]),
  ([470 #sym.Omega], [YELLOW], [VIOLET], [BROWN], [GOLD], [19,2 mA]),
  ([1,0 k#sym.Omega], [BROWN], [BLACK], [RED], [GOLD], [9,00 mA]),
  ([47 k#sym.Omega], [YELLOW], [VIOLET], [ORANGE], [GOLD], [192 μA]),
  ([1,5 #sym.Omega], [BROWN], [GREEN], [GOLD], [GOLD], [6,00 A]),
  ([33 #sym.Omega], [ORANGE], [ORANGE], [BLACK], [GOLD], [273 mA]),
  ([1,5 M#sym.Omega], [BROWN], [GREEN], [GREEN], [GOLD], [6,00 μA]),
  ([150 k#sym.Omega], [BROWN], [GREEN], [YELLOW], [GOLD], [60,0 μA]),
  ([6,8 #sym.Omega], [BLUE], [GREY], [GOLD], [GOLD], [1,32 A]),
  ([68 #sym.Omega], [BLUE], [GREY], [BLACK], [GOLD], [132 mA]),
  ([330 #sym.Omega], [ORANGE], [ORANGE], [BROWN], [GOLD], [27,3 mA]),
  ([1,0 M#sym.Omega], [BROWN], [BLACK], [GREEN], [GOLD], [9,00 μA]),
  ([33 k#sym.Omega], [ORANGE], [ORANGE], [ORANGE], [GOLD], [273 μA]),
  ([6,8 k#sym.Omega], [BLUE], [GREY], [RED], [GOLD], [1,32 mA]),
  ([470 k#sym.Omega], [YELLOW], [VIOLET], [YELLOW], [GOLD], [19,2 μA])
)
#let datos-inicio = datos.slice(0, 10)
#let datos-fin = datos.slice(10)


//
// DEFINICIONES
//

#let encabezado() = [
  #align(center)[
    #title[
      #link("https://www.picuino.com/en/electronic-codigo-colores.html")[
        COLOR CODING \ FOR RESISTORS
      ]
    ]

    #image("electronic-resistor-02.en.png", width: 70mm)

    #link("https://creativecommons.org/licenses/by-sa/4.0/")[*License CC BY-SA 4.0*] 
    #h(12mm)
    #link("https://picuino.com/en/index.html")[*www.picuino.com*]
  ]

  - Calculate the missing colors and resistors in the following tables.
  - In the last column, calculate the current that will flow through the
    resistor when connected to a 9 volt battery.
  - All values should be written to 3 decimal places and with the
    multiplier symbol that best corresponds to it 
    (M=Mega, k=kilo, m=mili, μ=micro)
]

#let tabla-colores() = [
  #set text(size: 10pt)
  #table(
    columns: (3fr, 2fr, 3fr, 2fr),
    align: center + horizon,
    rows: (10mm,) + (5mm,) * 11,
    fill: (x, y) => if y == 0 { rgb("d0d0d0") } else { none },
    table.header(
      [COLOR], [VALUE], [MULTIPLIER], [TOLERANCE],
    ),
    [BLACK],   [0],   [x 1],         [],
    [BROWN],   [1],   [x 10],        [#sym.plus.minus 1%],
    [RED],     [2],   [x 100],       [#sym.plus.minus 2%],
    [ORANGE],  [3],   [x 1000],      [],
    [YELLOW],  [4],   [x 10 000],    [],
    [GREEN],   [5],   [x 100 000],   [],
    [BLUE],    [6],   [x 1000 000],  [],
    [VIOLET],  [7],   [],            [],
    [GREY],    [8],   [],            [],
    [WHITE],   [9],   [],            [],
    [GOLD],    [],    [x 0,1],       [#sym.plus.minus 5%],
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

  #align(center)[== COMMERCIAL SERIES E6: (5%)]

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
      [Value #sym.Omega], [Stripe 1], [Stripe 2], [Stripe 3], [Stripe 4], [I = 9V / R],
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
      [Value #sym.Omega], [Stripe 1], [Stripe 2], [Stripe 3], [Stripe 4], [I = 9V / R],
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

  #align(center)[== COMMERCIAL SERIES E6: (5%)]
  
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
      [Value #sym.Omega], [Stripe 1], [Stripe 2], [Stripe 3], [Stripe 4], [I = 9V / R],
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
      [Value #sym.Omega], [Stripe 1], [Stripe 2], [Stripe 3], [Stripe 4], [I = 9V / R],
    ),
    ..datos-fin.flatten()
  )
]







