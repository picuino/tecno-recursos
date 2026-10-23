//
// CONFIGURACIÓN DE PÁGINA
//

#set page(
  paper: "a4",
  margin: ( top: 20mm, bottom: 10mm, left: 10mm, right: 10mm )
)

#set page(
  numbering: "1",
  footer: none,
  header: context {
    let numpage = counter(page).display()
    grid(
      columns: (auto, 1fr, auto, 1fr, auto, 1fr, auto),
      text(size: 10pt, weight: "bold")[
      #link("https://www.picuino.com/es/electric-energia.html")[La Energía]],
      [],
      text(size: 10pt, weight: "bold")[
      #link("https://creativecommons.org/licenses/by-sa/4.0/deed.es")[*Licencia CC BY-SA 4.0*]],
      [],
      text(size: 10pt, weight: "bold")[
      #link("https://www.picuino.com/es/index.html")[*www.picuino.com*]],
      [],
      text(size: 10pt, weight: "bold")[Página #numpage],
    )
    v(2mm)
    place(center)[#line(length: 100%)]
    v(2mm)
  }
)

#set text(
  font: "Liberation Sans",
  lang: "es",
  size: 11.5pt,
  hyphenate: true
)

#set par(
  justify: true,
)

#set heading(numbering: "1.1.")

#show heading: it => block()[
  #if it.level == 1 {
    text(size: 14pt, weight: "bold")[#it]
  } else if it.level == 2 {
    text(size: 12pt, weight: "bold")[#it]
  } else {
    it
  }
]

#show heading: set block(above: 2em)

#show math.equation: set text(size: 1.2em)

#set figure(supplement: none, numbering: none)
#show figure.caption: set text(size: 9pt, weight: "bold")
#show figure: set block(above: 4mm, below: 4mm)

#set terms(
  indent: 0mm,
  hanging-indent: 8mm, 
  separator: [],
  spacing: 1.2em     
)

// ***********************************************************************
// PÁGINA 1
//

#align(center)[
  #text(size: 16pt, weight: "bold")[LA ENERGÍA]
]

#place(center)[ #line(angle: 90deg, length: 256mm) ]

#columns(2, gutter: 0.8cm)[

La *energía* es muy importante en nuestra sociedad porque nos permite 
satisfacer necesidades básicas diarias, como disponer de luz, cocinar 
nuestros alimentos, calentar nuestras casas y transportarnos a diferentes 
lugares.

El uso excesivo de las *energías fósiles* (petróleo, gas natural y
carbón) está generando una crisis climática que nos obliga a cambiar
nuestras fuentes tradicionales de energía por otras menos contaminantes
y más sostenibles, como pueden ser la energía *solar* o la *eólica*.

Comenzaremos estudiando las diferentes formas o manifestaciones de la 
energía y cuáles son las fuentes de *energía primaria* que utilizamos,
para terminar estudiando en detalle la *energía eléctrica*.


= Formas de energía
La energía es la capacidad de realizar trabajo o de producir cambios.
Existen muchas formas o manifestaciones de la energía. Cada una tiene 
características diferentes, pero todas ellas pueden convertirse en 
trabajo o movimiento, luz, calor, sonido u otros efectos útiles para 
nosotros.

A continuación veremos las formas más comunes de la energía y las que más 
se utilizan usualmente.

== Energía potencial

Es la energía que tiene un objeto debido a su *posición* en un campo 
gravitatorio.

#figure(
  image("electric-presa-hoover.jpg", width: 75mm),
  
  caption: [
    Presa de Hoover desembalsando agua. \
    #link("https://commons.wikimedia.org/wiki/File:Hoover_Dam_Open_2.jpg")[Sixflashphoto],
    #link("https://creativecommons.org/licenses/by-sa/4.0/deed.en")[CC BY-SA 4.0], vía Wikimedia Commons.
  ]
)

Por ejemplo, un objeto que se encuentre en una posición elevada tiene 
energía potencial gracias a la gravedad de la Tierra. Si dejamos caer el 
objeto, esa energía potencial se transforma en energía cinética, con la 
que podría arrastrar otro objeto y realizar trabajo.

Las presas hidráulicas acumulan energía potencial en el agua cuando esta 
se almacena en una posición elevada. Al caer desde la presa, el agua 
transforma su energía potencial en cinética, que mueve una turbina. 
Finalmente la turbina mueve un alternador que produce energía eléctrica.

== Energía cinética

Es la energía que tiene un objeto debido a su *movimiento*.

#figure(
  image("electric-aerogeneradores.jpg", height: 70mm),
  
  caption: [
    Aerogeneradores en Thornton Bank a 28km de la costa (off shore),
    en la parte belga del mar del norte. \
    #link("https://commons.wikimedia.org/wiki/File:Windmills_D1-D4_(Thornton_Bank).jpg")[Hans Hillewaert],
    #link("https://creativecommons.org/licenses/by-sa/4.0/deed.en")[CC BY-SA 4.0], vía Wikimedia Commons.
  ]
)

Por ejemplo, una pelota lanzada a gran velocidad tendrá energía cinética 
y podrá desplazar otros objetos.
La *energía eólica* es la energía cinética del aire en movimiento.
Cuando un automóvil acelera, se transforma la energía química de la
gasolina en energía cinética.

La Luna tiene energía cinética al moverse alrededor de la Tierra.
En las mareas de los océanos podemos observar cómo la energía cinética
de la Luna se transfiere a la Tierra.

== Energía mecánica

Es la energía que se transmite mediante el *desplazamiento lineal* o el 
*giro* de una pieza mecánica de una máquina.

]

#pagebreak()

// ***********************************************************************
// PÁGINA 2
//

#place(center)[ #line(angle: 90deg, length: 267mm) ]

#columns(2, gutter: 0.8cm)[

#figure(
  image("electric-junta-cardan.gif", width: 80mm),
  
  caption: [
    Junta de cardan giratoria, utilizada para transmitir energía. \
    #link("https://commons.wikimedia.org/wiki/File:Cardan-joint_intermediate-shaft_topview_animated.gif")[Silberwolf],
    #link("https://creativecommons.org/licenses/by-sa/2.5/deed.en")[CC BY-SA 2.5], vía Wikimedia Commons.
  ]
)

Por ejemplo, el eje de una batidora transmite la energía mecánica del 
motor a las cuchillas. La biela de un motor, que sube y baja, transmite 
energía mecánica desde el pistón hasta el cigüeñal para que este gire y 
mueva el automóvil.


== Energía térmica

Es una forma de energía asociada a la *temperatura* de un objeto. Se basa 
en el movimiento interno de los átomos y moléculas del objeto. Cuanto 
mayor es la temperatura de un objeto, más rápido se mueven sus partículas.

#figure(
  image("electric-fuego-cocina.jpg", width: 80mm),
  
  caption: [
    Fuego de cocina a gas. \
    #link("https://commons.wikimedia.org/wiki/File:Gas_stove_flame.jpg")[Ivan Radic],
    #link("https://creativecommons.org/licenses/by-sa/2.0/deed.en")[CC BY-SA 2.0], vía Wikimedia Commons.
  ]
)

Es la forma de energía más degradada y más difícil de transformar, sobre 
todo si se encuentra a bajas temperaturas.

En todas las transformaciones de energía se producen pérdidas que se 
terminan convirtiendo en energía térmica.

Un ejemplo de energía térmica es la transformación que se produce en una 
caldera de calefacción. La energía química del gas se transforma en calor
a alta temperatura durante la combustión, lo que sirve para calentar los
edificios.


== Energía química

Es la energía que se encuentra en los *enlaces químicos* de los 
combustibles, de los alimentos o de las baterías.

#figure(
  image("electric-surtidor-gasolina.jpg", width: 80mm),
  
  caption: [
    Surtidor de gasolina cargando el depósito de un automóvil. \
    #link("https://commons.wikimedia.org/wiki/File:Petrol_pump_mp3h0355.jpg")[Rama],
    #link("https://creativecommons.org/licenses/by-sa/2.0/fr/deed.en")[CC BY-SA 2.0 France], vía Wikimedia Commons.
  ]
)

Para liberar esta energía es necesario provocar reacciones químicas, que 
en la mayoría de los casos consisten en combinar combustibles con 
oxígeno. Eso es lo que hacemos los animales cuando convertimos la grasa y 
los carbohidratos de los alimentos en movimiento y calor para seguir con 
vida. Los combustibles fósiles son sustancias que producen energía al 
combinarse con el oxígeno del aire. Por ejemplo, al quemar carbón o 
gasolina se produce energía térmica.

También encontramos este tipo de energía química en las baterías 
recargables y en las de un solo uso. En este caso, en las reacciones no 
interviene el oxígeno.

== Energía nuclear

Es la energía interna de los átomos que se libera en las reacciones de 
fusión y de fisión nuclear.

#figure(
  image("electric-central-nuclear.jpg", width: 80mm),
  
  caption: [
    Central nuclear de José Cabrera en Guadalajara. \
    #link("https://commons.wikimedia.org/wiki/File:Nuclear_power_station_in_Almonacid_de_Zorita_(Spain).jpg")[Mr. Tickle],
    #link("https://creativecommons.org/licenses/by-sa/3.0/deed.en")[CC BY-SA 3.0], vía Wikimedia Commons.
  ]
)

]

#pagebreak()

// ***********************************************************************
// PÁGINA 3
//

#place(center)[ #line(angle: 90deg, length: 267mm) ]

#columns(2, gutter: 0.8cm)[

Ejemplos de esta energía son la energía del Sol, que se produce por la 
fusión de sus átomos de hidrógeno, y la energía de una central 
nuclear, que fisiona los átomos de uranio. La energía geotérmica de la 
Tierra también proviene de la energía nuclear del uranio que se 
encuentra en su interior.

 
== Energía radiante

Es la energía que está presente en la *luz* o en las *microondas* de
radio.

#figure(
  image("electric-paneles-solares.jpg", width: 80mm),
  
  caption: [
    Paneles solares en el tejado de una casa. \
    #link("https://commons.wikimedia.org/wiki/File:Installation_of_solar_PV_panels_-_panels_in_place_-_geograph.org.uk_-_2624288.jpg")[David Hawgood],
    #link("https://creativecommons.org/licenses/by-sa/2.0/deed.en")[CC BY-SA 2.0], vía Wikimedia Commons.
  ]
)

Es fundamental porque es la mayor parte de la energía que llega a la 
Tierra gracias al Sol y que podemos aprovechar con paneles solares.

Los microondas de las cocinas convierten la energía eléctrica en 
microondas de radio que calientan el agua de los alimentos.

== Energía eléctrica

Es la energía asociada al movimiento de los *electrones* a través de los 
cables conductores. Es muy sencillo convertir otros tipos de energía 
en energía eléctrica y viceversa. Por esa razón la energía eléctrica 
se utiliza mucho para transportar otras formas de energía de un lugar 
a otro.

Por ejemplo, la energía mecánica de un aerogenerador moviéndose con el 
viento puede transportarse fácilmente y de forma casi instantánea en 
forma de energía eléctrica a una casa que se encuentre a cientos de 
kilómetros. Esa energía eléctrica puede transformarse de nuevo en la 
energía mecánica, por ejemplo, en la de batidora o en cualquier otra 
forma aprovechable.

Los rayos de las tormentas y las descargas eléctricas que 
experimentamos al quitarnos un jersey son manifestaciones naturales de 
la energía eléctrica, pero no podemos aprovecharlas de forma útil.

#figure(
  image("electric-rayo.jpg", height: 65mm),
  
  caption: [
    Rayo cayendo en Toronto. \
    #link("https://commons.wikimedia.org/wiki/File:Krunkwerke_-_IMG_4515_(by-sa).jpg")[John R. Southern],
    #link("https://creativecommons.org/licenses/by-sa/2.0/deed.en")[CC BY-SA 2.0], vía Wikimedia Commons.
  ]
)

Una desventaja de la energía eléctrica consiste en que no se puede 
almacenar con facilidad, por lo que hay que consumirla en el momento 
en el que se genera. Para poder almacenar energía eléctrica, esta debe 
transformarse en energía química mediante baterías o en energía 
potencial mediante centrales hidroeléctricas reversibles.


= Transformación de la energía

Según el primer principio de la termodinámica, la energía no se crea ni se 
destruye, solo se transforma de una forma a otra.

En estos procesos, a menudo se necesitan varios pasos intermedios para 
llegar a producir la forma de energía deseada.

A continuación se verán algunos ejemplos de conversiones comunes entre
formas de energía.

*Energía potencial del agua de una presa en energía eléctrica:*

La energía potencial del agua de una presa se transforma en energía 
cinética cuando se deja caer el agua. A continuación, una turbina 
convierte esta energía cinética en giro de un eje. El giro del eje mueve 
un alternador, que convierte la energía mecánica transmitida por el eje en 
energía eléctrica.


*Energía química del gas natural en energía eléctrica:*

La energía química del gas natural se convierte en energía térmica dentro 
del quemador de una turbina, que a su vez la convierte en giro de la 
turbina. Un alternador convierte la energía mecánica del eje giratorio en 
energía eléctrica.


]

#pagebreak()

// ***********************************************************************
// PÁGINA 4
//

#place(center)[ #line(angle: 90deg, length: 267mm) ]

#columns(2, gutter: 0.8cm)[





*Energía nuclear del uranio en energía eléctrica:*

La energía nuclear del uranio se convierte en energía térmica dentro del 
reactor nuclear, que a su vez se convierte en vapor de agua 
sobrecalentado. Una turbina de vapor convierte la energía térmica del 
vapor de agua en energía mecánica de giro de un eje, que un alternador 
convierte en energía eléctrica.

*Energía química de la gasolina en energía cinética de un automóvil:*

La energía química de la gasolina se convierte en energía térmica dentro 
de la cámara de combustión, lo que aumenta la presión del gas y mueve un 
pistón, produciendo energía mecánica. Esta energía mecánica se transmite a 
las ruedas, que giran y mueven el automóvil, aportando energía cinética.

*Energía eólica en calor para cocinar:*

La energía cinética del viento mueve las palas de un aerogenerador y 
produce energía mecánica de giro que se aplica a un alternador para 
convertirla en energía eléctrica. La energía eléctrica se transporta hasta 
nuestras casas donde, al pasar por la resistencia de la vitrocerámica, se 
convierte en energía térmica para cocinar.

= Fuentes de energía

Una fuente de energía es un recurso natural del que se puede obtener 
energía. Según su disponibilidad, podemos distinguir entre fuentes de 
energía renovables y fuentes de energía no renovables.

== Fuentes de energía no renovables

Estas fuentes de energía se agotan a medida que las consumimos porque solo 
existen unas reservas limitadas.

La mayoría de estas fuentes de energía se basan en la energía química que 
las plantas y los animales captaron del Sol hace millones de años.

Un problema importante que genera este tipo de fuentes de energía es la 
contaminación, el calentamiento global y la crisis climática.

- *Carbón*. Es la fuente de energía que produce mayor contaminación 
  medioambiental y emisiones de gases de efecto invernadero.
    
- *Petróleo*. Es la más utilizada en la actualidad para todo tipo de 
  usos, desde el transporte hasta la calefacción de viviendas. También 
  es muy contaminante.
    
- *Gas natural*. Es el menos contaminante de los tres tipos de fuentes 
  de energía fósiles cuando se quema, pero también emite CO2 de efecto 
  invernadero. Está compuesto de metano y, cuando se pierde en la 
  atmósfera, produce un efecto invernadero mucho mayor que el del CO2.
- *Nuclear*. Esta energía produce pocos gases de efecto invernadero, pero
  sí genera importantes cantidades de residuos radioactivos contaminantes.

== Fuentes de energía renovables

Estas fuentes de energía se las considera inagotables y, con las técnicas 
adecuadas, se pueden aprovechar sin límite.

El problema de la mayoría de las energías renovables consiste en que son 
intermitentes, por lo que es necesario almacenar los excedentes de energía 
para poder utilizarlos más adelante.


- *Solar*. Es energía radiante que proviene de las reacciones nucleares de
  fusión que tienen lugar en el interior del Sol.

- *Eólica*. La energía del viento proviene del calentamiento por parte del 
  Sol de las masas de aire en la atmósfera.

- *Hidráulica*. Proviene de la energía potencial del agua de los ríos 
  acumulada en las presas. Tiene la ventaja de que se puede almacenar con 
  facilidad.

- *Geotérmica*. Proviene del calor interno de la Tierra producido por las 
  reacciones nucleares de su interior. Tiene la ventaja de estar siempre 
  disponible, aunque solo se puede aprovechar en algunas zonas volcánicas 
  la Tierra.

- *Biomasa*. Es la energía química que podemos obtener de los árboles o de 
  los residuos biológicos que se pueden convertir en biogás.

- *Mareomotriz*. Es la energía que se puede extraer del agua del mar 
  gracias al movimiento que producen las mareas.

]


#pagebreak()

// ***********************************************************************
// PÁGINA 5
//

#place(center)[ #line(angle: 90deg, length: 267mm) ]

#columns(2, gutter: 0.8cm)[

= Energía eléctrica

La energía eléctrica no es una fuente de energía primaria, sino que se 
debe generar a partir de fuentes de energía primarias. La razón por la que 
se genera energía eléctrica es que se trata de una energía muy fácil de 
transportar, fácil de controlar y de convertir en otras formas de energía 
de manera eficiente.

#figure(
  image("electric-arco.jpg", height: 80mm),
  
  caption: [
    Arco eléctrico de 3000 voltios. \
    #link("https://commons.wikimedia.org/wiki/File:Lichtbogen_3000_Volt.jpg")[Achim Grochowski],
    #link("https://creativecommons.org/licenses/by-sa/3.0/deed.en")[CC BY-SA 3.0], vía Wikimedia Commons.
  ]
)

Arco eléctrico de 3000 voltios.

Achim Grochowski, CC BY-SA 3.0 Unported, via Wikimedia Commons.

== Ventajas de la energía eléctrica
- Puede obtenerse con facilidad a partir de otras formas de energía 
  (mecánica, química, calorífica, radiante, etc.).
- Se puede transportar con facilidad a grandes distancias.
- El transporte es eficiente y consume poca energía.
- Se puede convertir fácilmente en otras formas de energía.
- Se puede controlar de forma muy sencilla.
- Es muy limpia y no contamina en el lugar donde se usa. Aunque sí puede
  producir contaminación en el lugar de generación.
- Es más segura que otras formas de energía.

== Desventajas de la energía eléctrica

- No existe una fuente primaria de energía eléctrica, hay que generarla a 
  partir de otras fuentes primarias.
- Un porcentaje alto de la electricidad que se genera en la actualidad 
  procede de energías primarias no renovables y contaminantes, como las 
  energías fósiles o la nuclear.
- No se puede almacenar con facilidad. En la red eléctrica hay que generar 
  en cada momento la misma cantidad de electricidad que la que se está 
  consumiendo.
- Para su transporte se necesitan cables, por lo que es difícil de 
  utilizar en el transporte marítimo y aéreo.
- Puede ser peligrosa y provocar incendios y descargas eléctricas si no se 
  toman las medidas de precaución necesarias.

= Cálculos con energía eléctrica

La fórmula de la energía eléctrica es la siguiente:

$ E = P dot t $

Siendo las magnitudes y unidades las siguientes:
#grid(columns: (3mm, auto, 1fr), column-gutter: 2mm, align: horizon,
  [], [$E$ =], [Energía en kilovatios-hora \[kWh\]])
#grid(columns: (3mm, auto, 1fr), column-gutter: 2mm, align: horizon,
  [], [$P$ =], [Potencia en kilovatios \[kW\]])
#grid(columns: (3mm, auto, 1fr), column-gutter: 2mm, align: horizon,
  [], [$t$ =], [Tiempo en horas \[h\]])

Despejando, tenemos las otras formas de la fórmula de la energía eléctrica:

$ P = E / t $

$ t = E / P $

Esta fórmula nos permite realizar cálculos relativos a la factura
eléctrica, que es uno de los gastos más importantes de los hogares.

Según esta fórmula, la energía que consumimos depende de la potencia del
aparato que conectemos y del tiempo que el aparato esté en funcionamiento.

Así, el frigorífico es uno de los electrodomésticos con menor potencia, 
ya que consume alrededor de 150 vatios. Sin embargo, es el 
electrodoméstico que más energía consume en el hogar, aproximadamente un 
tercio del total, ya que está en funcionamiento casi todo el día todos 
los días del año.

Los electrodomésticos de mayor potencia suelen ser los que generan 
grandes cantidades de calor.

#colbreak()

En este grupo se encuentran el horno eléctrico, la vitrocerámica, el
secador de pelo, el calefactor de aire, etc. La potencia de estos
electrodomésticos oscila entre 1000 y 3000 vatios, por lo que gastan
mucha energía eléctrica aunque estén poco tiempo encendidos.
]

#place(
  top + left,
  dx: 50%,
  dy: 0mm,
  block(width: 0pt, height: 0pt, line(angle: 90deg, length: 31mm))
)



// ***********************************************************************
// PÁGINA 6
//

#align(center)[
  #v(8mm)
  #text(size: 16pt, weight: "bold")[EJERCICIOS DE ENERGÍA]
]

#place(center)[ #line(angle: 90deg, length: 210mm) ]

#columns(2, gutter: 0.8cm)[
= La Energía
1. ¿Qué beneficios aporta la energía a nuestra sociedad?
#v(1fr)
2. ¿Qué está causando el uso excesivo de energías fósiles?
#v(1fr)
3. ¿Cuál es una fuente de energía más sostenible que las energías fósiles?
#v(1fr)

== Formas de energía

4. ¿Qué es la energía?
#v(1fr)
5. ¿Qué puede convertirse en trabajo o movimiento, luz, calor, sonido u otros efectos útiles?
#v(1fr)
6. ¿Qué tipo de energía tiene un objeto debido a su posición en un campo gravitatorio?
#v(1fr)
7. ¿Qué tipo de energía tiene una presa hidráulica?
#v(1fr)

#colbreak()

8. ¿Qué tipo de energía tiene un objeto debido a su movimiento?
#v(1fr)
9. ¿Qué tipo de energía tiene un balón lanzado a mucha velocidad?
#v(1fr)
10. ¿Qué tipo de energía se transmite mediante el desplazamiento lineal o el giro de una pieza mecánica de una máquina?
#v(1fr)
11. ¿Qué tipo de energía transmite el eje de una batidora?
#v(1fr)
12. ¿Qué forma de energía está asociada a la temperatura de un objeto?
#v(1fr)
13. ¿Qué forma de energía se basa en el movimiento interno de los átomos y moléculas de un objeto?
#v(1fr)
14. ¿Qué tipo de energía tiene el agua caliente de una caldera?
#v(1fr)

]

#pagebreak()

#place(center)[ #line(angle: 90deg, length: 267mm) ]

#columns(2, gutter: 0.8cm)[

15. ¿Qué tipo de energía tienen los combustibles?
#v(1fr)
16. ¿Qué tipo de energía tienen los alimentos?
#v(1fr)
17. ¿Qué tipo de energía es interna a los átomos y se libera en reacciones de fisión?
#v(1fr)
18. ¿Cómo se produce calor en el interior de la Tierra, que se puede aprovechar como energía geotérmica?
#v(1fr)
19. ¿Qué tipo de energía se libera con la fusión del hidrógeno en el Sol?
#v(1fr)
20. ¿Qué tipo de energía está presente en la luz?
#v(1fr)
21. ¿Qué tipo de energía emite un horno microondas?
#v(1fr)
22. ¿Por qué es fundamental la energía radiante?
#v(1fr)
23. ¿Qué tipo de energía está asociada al movimiento de los electrones a través de los cables conductores?
#v(1fr)

#colbreak()

24. Los rayos de las tormentas son manifestaciones naturales de...
#v(1fr)
25. ¿Qué permite la energía eléctrica debido a su facilidad de transformación?
#v(1fr)
26. ¿Qué energía no se puede almacenar fácilmente?
#v(1fr)
27. ¿Cómo se puede almacenar la energía eléctrica?
#v(1fr)
28. ¿Cómo se puede transformar energía mecánica en energía eléctrica?
#v(1fr)
29. ¿Qué produce las mareas de los océanos?
#v(1fr)
30. ¿Cuál es el tipo de energía más degradada y difícil de transformar?
#v(1fr)
31. Cuando transformamos energía de un tipo a otro se producen pérdidas que se terminan convirtiendo en energía...
#v(1fr)
32. ¿Cómo se libera la energía química de los combustibles?
#v(1fr)
33. ¿Qué tipo de energía tienen en su interior las pilas y las baterías?
#v(1fr)

]

#pagebreak()

#place(center)[ #line(angle: 90deg, length: 267mm) ]

#columns(2, gutter: 0.8cm)[

== Transformación de la energía

34. Según el primer principio de la termodinámica, la energía…
#v(1fr)
35. ¿Qué energía se transforma al quemar gas natural en una caldera de calefacción?
#v(1fr)
36. La energía potencial del agua de una presa se convierte primero en...
#v(1fr)
37. En la transformación de la energía, a menudo...
#v(1fr)
38. El giro del eje de la turbina en una presa genera...
#v(1fr)
39. En el proceso de generación de energía con gas natural, la energía química se convierte primero en...
#v(1fr)
40. En la conversión de la energía nuclear del uranio, se genera primero...
#v(1fr)
41. El vapor de agua sobrecalentado en una planta nuclear se usa para...
#v(1fr)

#colbreak()

42. La energía química de la gasolina en un automóvil se convierte primero en...
#v(1fr)
43. En un automóvil a gasolina, la energía térmica generada por la gasolina se utiliza para...
#v(1fr)
44. En un aerogenerador, la energía cinética del viento se convierte en...
#v(1fr)
45. En la conversión de energía de una presa, la turbina convierte la energía...
#v(1fr)
46. En el proceso de convertir gas natural en energía eléctrica, la turbina convierte la energía térmica en...
#v(1fr)
47. En cualquier central eléctrica la energía mecánica de giro se convierte en ...
#v(1fr)
48. En un automóvil, la energía mecánica transmitida a las ruedas produce...
#v(1fr)
49. La energía eléctrica generada en una presa se utiliza para...
#v(1fr)
50. Una resistencia eléctrica convierte de forma eficiente...
#v(1fr)

]

#pagebreak()

#place(center)[ #line(angle: 90deg, length: 267mm) ]

#columns(2, gutter: 0.8cm)[

== Fuentes de energía

51. ¿Qué es una fuente de energía?
#v(1fr)
52. ¿Cómo se clasifican las fuentes de energía según su disponibilidad?
#v(1fr)
53. ¿Qué característica define a las fuentes de energía no renovables?
#v(1fr)
54. ¿Cuál es la base energética principal de las fuentes no renovables?
#v(1fr)
55. ¿Qué problemas ambientales se asocian a las fuentes de energía no renovables?
#v(1fr)
56. ¿Cuál de las siguientes fuentes de energía no renovables produce la mayor contaminación medioambiental?
#v(1fr)
57. ¿Qué fuente de energía no renovable es la más utilizada actualmente para transporte y calefacción?
#v(1fr)
58. ¿Qué característica tiene el gas natural en comparación con otros combustibles fósiles?
#v(1fr)

#colbreak()

59. ¿De qué compuesto principal está formado el gas natural? 
#v(1fr)
60. ¿Qué efecto tiene el metano del gas natural cuando se libera en la atmósfera?
#v(1fr)
61. ¿Qué desventaja presenta la energía nuclear?
#v(1fr)
62. ¿Qué característica define a las fuentes de energía renovables?
#v(1fr)
63. ¿Cuál es uno de los principales problemas de las energías renovables?
#v(1fr)
64. ¿De dónde proviene la energía solar?
#v(1fr)
65. ¿Qué fuente de energía se aprovecha mediante la utilización de la energía cinética del viento?
#v(1fr)
66. ¿De dónde proviene la energía hidráulica?
#v(1fr)
67. ¿Qué ventaja ofrece la energía hidráulica?
#v(1fr)

]

#pagebreak()

#place(center)[ #line(angle: 90deg, length: 267mm) ]

#columns(2, gutter: 0.8cm)[

68. ¿De dónde se obtiene la energía geotérmica?
#v(1fr)
69. ¿Cuál es una ventaja de la energía geotérmica?
#v(1fr)
70. ¿Cómo se obtiene la energía de la biomasa?
#v(1fr)

== Energía eléctrica

71. ¿La energía eléctrica es una fuente de energía primaria?
#v(1fr)
72. ¿Por qué se genera energía eléctrica?
#v(1fr)
73. ¿Cuál es una ventaja de la energía eléctrica?
#v(1fr)
74. ¿Qué tipo de energía puede convertirse fácilmente en energía eléctrica?
#v(1fr)
75. ¿Cómo es el transporte de energía eléctrica?
#v(1fr)
76. ¿En qué se puede convertir fácilmente la energía eléctrica?
#v(1fr)


#colbreak()

77. ¿Qué característica tiene la energía eléctrica en su uso?
#v(1fr)
78. ¿Dónde puede producir contaminación la energía eléctrica?
#v(1fr)
79. ¿Cómo se puede controlar la energía eléctrica?
#v(1fr)
80. ¿Qué se necesita para transportar energía eléctrica?
#v(1fr)
81. ¿Cuál es una desventaja de la energía eléctrica?
#v(1fr)
82. Como desventaja, ¿de dónde procede gran parte de la electricidad generada actualmente?
#v(1fr)
83. ¿Qué dificultad presenta el almacenamiento de energía eléctrica?
#v(1fr)
84. ¿Qué hay que hacer en la red eléctrica constantemente?
#v(1fr)
85. ¿Qué se necesita para utilizar la energía eléctrica en medios de transporte?
#v(1fr)
86. ¿Cuál es una desventaja del uso de energía eléctrica en el transporte marítimo y aéreo?
#v(1fr)

]

#pagebreak()

#place(center)[ #line(angle: 90deg, length: 267mm) ]

#columns(2, gutter: 0.8cm)[

87. ¿Qué riesgo presenta la energía eléctrica si no se toman las medidas de precaución necesarias?
#v(1fr)

== Cálculos con energía eléctrica

88. ¿Cuál es la fórmula de la energía eléctrica?
#v(1fr)
89. ¿Qué representa "E" en la fórmula de la energía eléctrica?
#v(1fr)
90. ¿Qué representa "P" en la fórmula de la energía eléctrica?
#v(1fr)
91. ¿Qué representa "t" en la fórmula de la energía eléctrica?
#v(1fr)
92. ¿Cuál es la fórmula para calcular la potencia (P) a partir de la energía (E) y el tiempo (t)?
#v(1fr)
93. ¿Cuál es la fórmula para calcular el tiempo (t) a partir de la energía (E) y la potencia (P)?
#v(1fr)
94. ¿De qué depende la energía que consumimos según la fórmula de energía eléctrica?
#v(1fr)


#colbreak()
95. ¿Qué electrodoméstico consume aproximadamente un tercio de la energía total del hogar?
#v(1fr)
96. ¿Por qué el frigorífico consume tanta energía?
#v(1fr)
97. ¿Qué tipo de electrodomésticos suelen tener mayor potencia?
#v(1fr)
98. ¿Cuál es el rango de potencia de los electrodomésticos que generan mucho calor?
#v(1fr)
99. ¿Qué electrodoméstico no pertenece al grupo de los que generan grandes cantidades de calor?
#v(1fr)
100. ¿Qué unidad se utiliza para medir la energía en la fórmula de energía eléctrica?
#v(1fr)
101. ¿Qué unidad se utiliza para medir la potencia en la fórmula de energía eléctrica?
#v(1fr)
102. ¿Qué unidad se utiliza para medir el tiempo en la fórmula de energía eléctrica?
#v(1fr)
103. ¿Qué determina la cantidad de energía que consume un aparato eléctrico?
#v(1fr)

]