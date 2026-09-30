//
// CONFIGURACIÓN DE PÁGINA
//
#set page(
  paper: "a4",
  margin: (top: 10mm, bottom: 14mm, left: 10mm, right: 10mm ),
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
// MACROS
//

#let num-eng(num) = {
  if num == 0 { return "0,00" }
  
  let prefixes = (
    "15": "P",  "12": "T",  "9":  "G",  "6":  "M",  "3":  "k",
    "0":  "",
    "-3": "m",  "-6": "μ",  "-9": "n",  "-12": "p", "-15": "f"
  )

  let sign = if num < 0 { "-" } else { "" }
  let abs-num = calc.abs(num)
  
  let exp-10 = calc.floor(calc.log(abs-num))
  let exp-3 = calc.floor(exp-10 / 3) * 3
  
  let base = abs-num / calc.pow(10, exp-3)
  
  let base-digits = 3 - calc.floor(calc.log(base)) - 1
  let rounded-base = calc.round(base, digits: int(base-digits))
  
  if rounded-base >= 1000 {
    rounded-base = rounded-base / 1000
    exp-3 = exp-3 + 3
    let base-digits = 3 - calc.floor(calc.log(rounded-base)) - 1
    rounded-base = calc.round(rounded-base, digits: int(base-digits))
  }

  let decimales = int(3 - calc.floor(calc.log(rounded-base)) - 1)
  if decimales < 0 { decimales = 0 }
  
  let rounded-str = str(rounded-base)
  
  if decimales > 0 {
    if not "." in rounded-str {
      rounded-str = rounded-str + "," + "0" * decimales
    } else {
      let partes = rounded-str.split(".")
      let faltantes = decimales - partes.at(1).len()
      if faltantes > 0 {
        rounded-str = rounded-str + "0" * faltantes
      }
      rounded-str = rounded-str.replace(".", ",")
    }
  } else {
    rounded-str = rounded-str.replace(".", ",")
  }

  // --- SOLUCIÓN CRÍTICA: Convertir el signo menos tipográfico de Typst al guion estándar ---
  let exp-str = str(exp-3).replace("−", "-")
  
  let prefix = if exp-str in prefixes { prefixes.at(exp-str) } else { "e" + exp-str }
  
  // Si el prefijo está vacío (exponente 0), no dejamos espacio en blanco al final
  if prefix == "" {
    return sign + rounded-str
  }
  
  return sign + rounded-str + " " + prefix
}


#let num-norm(num, digits: 5) = {
  if num == 0 { return "0" }
  
  let log10 = calc.log(calc.abs(num))
  let magnitude = calc.floor(log10)
  let decimals = digits - 1 - magnitude
  
  let result-str = ""
  if decimals >= 0 {
    // Para números pequeños o medianos
    result-str = str(calc.round(num, digits: decimals))
  } else {
    // Para números grandes
    let factor = calc.pow(10, calc.abs(decimals))
    let rounded = calc.round(num / factor) * factor
    result-str = str(rounded)
  }
  
  // Reemplazar el punto decimal por una coma
  result-str.replace(".", ",")
}


#let num-exp(num, digits: 5) = {
  if num == 0 { return "0," + "0" * (digits - 1) + " * 10^0" }
  
  let log10 = calc.log(calc.abs(num))
  let exponent = calc.floor(log10)
  
  // Extraer la mantisa (número entre 1 y 10)
  let mantissa = num / calc.pow(10, exponent)
  
  // Redondear la mantisa a los decimales necesarios para tener las cifras deseadas
  let rounded-mantissa = calc.round(mantissa, digits: digits - 1)
  
  // Convertir a texto y formatear la mantisa
  let mantissa-str = str(rounded-mantissa).replace(".", ",")
  
  // Asegurar que mantenga exactamente los ceros a la derecha si es necesario
  let parts = mantissa-str.split(",")
  let current-decimals = if parts.len() > 1 { parts.at(1).len() } else { 0 }
  let missing-zeros = (digits - 1) - current-decimals
  
  if missing-zeros > 0 {
    if parts.len() == 1 {
      mantissa-str += "," + "0" * missing-zeros
    } else {
      mantissa-str += "0" * missing-zeros
    }
  }
  
  // Construir el formato final en Typst
  mantissa-str + " * 10^" + str(exponent)
}


#let random-next(current-state) = {
  let next-state = calc.rem(1103515245 * current-state + 12345, 2147483648)
  let value = next-state / 2147483647
  return (next-state, value)
}

#let state = 20260928


//
// CONTENIDO
//

#let celdas-tabla = ()

#let num-filas = 84

#for i in range(num-filas) {
  let base = 0.0
  while base < 0.1 {
    let result = random-next(state)
    state = result.at(0)
    base = result.at(1) * 10
  }

  let (next-state2, rand-exp) = random-next(state)
  state = next-state2
  
  let num = base * calc.pow(10, int(rand-exp * 15) - 6)
  let num-str = ""
  
  if (i < num-filas / 2) {
    num-str = num-norm(num)
  } else {
    num-str = num-exp(num)
  }
  celdas-tabla.push(num-str)
  num-str = num-str.replace(",", ".").replace(" * 10^", "e")
  celdas-tabla.push(num-eng(float(num-str)))
}


#align(center)[
  #title[NÚMEROS CON FORMATO Y CIFRAS SIGNIFICATIVAS]
]


#columns(2, gutter: 0.8cm)[

  #show table.cell: it => {
    if (it.x > 0 and it.y > 0) {
      hide(it)
    } else {
      it 
    }
  }

  #table(
    columns: (1fr, 1fr),
    rows: (auto, (6mm,) * calc.div-euclid(celdas-tabla.len(), 2)).flatten(),
    align: horizon + center,
    fill: (col, row) => if row == 0 { rgb("e0e0e0") } else { none },
  
    table.header(
      [*Número*], [*Formato de ingeniería*]
    ),
  
    // Volcamos el contenido acumulado
    ..celdas-tabla 
  )
]

#v(6mm)
#place(center)[
  #text(size: 10pt)[
    #h(1fr)
    #link("https://creativecommons.org/licenses/by-sa/4.0/deed.es")[*Licencia CC BY-SA 4.0*] 
    #h(2fr)
    #link("https://picuino.com/es/index.html")[*www.picuino.com*]
    #h(1fr)
  ]
]


//
// PÁGINA 2
//

#align(center)[
  #title[NÚMEROS CON FORMATO Y CIFRAS SIGNIFICATIVAS]
]


#columns(2, gutter: 0.8cm)[

  #show table.cell: it => {
    if (it.x < 1 and it.y > 0) {
      hide(it)
    } else {
      it
    }
  }

  #table(
    columns: (1fr, 1fr),
    rows: (auto, (6mm,) * calc.div-euclid(celdas-tabla.len(), 2)).flatten(),
    align: horizon + center,
    fill: (col, row) => if row == 0 { rgb("e0e0e0") } else { none },
  
    table.header(
      [*Número*], [*Formato ingeniería*]
    ),
  
    // Volcamos el contenido acumulado
    ..celdas-tabla 
  )
]

#v(6mm)
#place(center)[
  #text(size: 10pt)[
    #h(1fr)
    #link("https://creativecommons.org/licenses/by-sa/4.0/deed.es")[*Licencia CC BY-SA 4.0*] 
    #h(2fr)
    #link("https://picuino.com/es/index.html")[*www.picuino.com*]
    #h(1fr)
  ]
]