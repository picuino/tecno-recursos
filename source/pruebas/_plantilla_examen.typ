//
// FUNCIONES PARA REALIZAR EXÁMENES
//

#let formato_num(num, decimal-sep: ",") = {
  let s = str(num)
  if not s.contains(".") {
    s + decimal-sep + "0"
  } else {
    s.replace(".", decimal-sep)
  }
}


#let num-pregunta = state("num-pregunta", 0)
#let puntos-totales = state("puntos-totales", 0)

#let pregunta(contenido, puntos, sep: 0) = {
  num-pregunta.update(n => n + 1)
  puntos-totales.update(total => total + puntos)
  
  grid(
    columns: (auto, 1fr),
    gutter: 0.1cm,
    align(left, [#context num-pregunta.get().]), [
      #contenido
      #h(1.5cm)
      #box(width: 1fr)[ #align(right)[ (#formato_num(puntos)~p.)] ]
    ]
  )
  
  if (sep != 0) {
    v(sep)
  }
}


#let cabecera(materia, tema) = {
  grid(
    columns: (1fr, 1fr),
    gutter: 10pt,  
    align(left, [*#materia*]),
    align(right, [*#tema*])
  )
  
  v(0.1cm)
  
  grid(
    columns: (auto, 1fr, auto, 1.5cm, auto, 2.5cm),
    gutter: 0.2cm,
    align: left + bottom,
    [*Nombre:*], box(width: 100%, line(length: 100%)),
    [*Curso:*], box(width: 100%, line(length: 100%)),
    [*Fecha:*], box(width: 100%, line(length: 100%)),
  )
  
  v(0.1cm)
}


#let test_puntos_acumulados() = {
  context {
    if puntos-totales.get() > 10.001 or  puntos-totales.get() < 9.999 {
      panic("Esperado 10 puntos, acumulados: " + str(puntos-totales.get()))
    }
  }
}