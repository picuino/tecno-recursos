#
#  Index maker (c) 2022 Carlos Félix Pardo Martín
#
#  This program is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program.  If not, see <https://www.gnu.org/licenses/>.
#

import os
import codecs
from jinja2 import Template


index_data = [
   {
      "header" : ["energias_renovables", "Energías renovables"],
      "links": [
         #["energias_renovables.html", "Energías renovables"],
         ["energia_hidraulica.html", "Energía hidráulica"],
         ["energia_eolica.html", "Energía eólica"],
         ["energia_solar_fotovoltaica.html", "Energía solar fotovoltaica"],
         ["placas_solares_moviles.html", "Placas solares móviles"],
         ["energia_solar_termica.html", "Energía solar térmica"],
         ["energia_biomasa.html", "Energía biomasa"],
         ["energia_mareomotriz.html", "Energía mareomotriz"],
         ["energia_de_las_olas.html", "Energía de las olas"],
         ["energia_geotermal.html", "Energía geotermal"],
         ["energia_fusion_proyecto_iter.html", "Energía de fusión. Proyecto Iter"],
      ]
   },
   {
      "header" : ["energias_no_renovables", "Energías no renovables"],
      "links": [
         #["energias_no_renovables.html", "Energías no renovables"],
         ["energia_petroleo.html", "Energía petroleo"],
         ["energia_gas natural.html", "Energía gas natural"],
         ["energia_carbon.html", "Energía carbón"],
         ["energia_biodiesel.html", "Energía biodiesel"],
         ["efecto_invernadero.html", "Efecto invernadero"],
         ["energia_nuclear.html", "Energía nuclear"],
      ]
   },
   {
      "header" : ["energias_escala", "Energías a pequeña escala"],
      "links": [
         ["energia_mini-eolica.html", "Energía mini-eólica"],
         ["laminas_nanosolares.html", "Láminas nanosolares"],
         ["energia_solar_viviendas.html", "Energía solar viviendas"],
         ["casas_geosolares.html", "Casas geosolares"],
         ["buques_cometa.html", "Buques cometa"],
      ]
   },
   {
      "header" : ["energias_transmision", "Transmisión de energía"],
      "links": [
         ["transmision_electrica.html", "Transmisión eléctrica"],
         ["energia_hidrogeno.html", "Energía hidrógeno"],
         ["energia_aire_comprimido.html", "Energía aire comprimido"],
      ]
   },
   {
      "header" : ["energias_otras", "Otras infografías"],
      "links": [
         ["automovil_electrico.html", "Automóvil eléctrico"],
         ["bici_electrica.html", "Bicicleta eléctrica"],
         ["tipos_de_bombillas.html", "Bombillas eléctricas"],
         ["biodigestores.html", "Biodigestores"],
         ["sistemas_de_calefaccion.html", "Sistemas de calefacción"],
      ]
   },
   #{
   #   "header" : ["varios", "Test varios"],
   #   "links": [
   #       ["es-dinosaurios-1.html", "Dinosaurios. Test I"],
   #    ]
   #},
]


index_template = """<!DOCTYPE html>
<html lang="es-es">
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <meta http-equiv="X-UA-Compatible" content="ie=edge">
   <meta name="description" content="Test de Tecnología. Materiales, Mecánica, Electricidad.">
   <title>Infografías de energías.</title>

   <link rel="stylesheet" href="app.css">

   <style>
   h1, h2 {
     font-size: 32px;
     text-align: center;
     color: #094070;
     padding-top: 32px;
     margin: 0 0 32px 0;
   }
   h2 {
     margin-top: 96px;
   }
   </style>

</head>

<body>
   <div class="container">
      <div id="home" class="flex-center flex-column">

        <h1 id="index">INFOGRAFÍAS DE ENERGÍA</h1>
        {% set sp = namespace(section = 1) %}
        {% for section in data %}
        <a class="btn2" href="#{{section.header[0]}}">{{ sp.section }}. {{ section.header[1] }}</a>
        {%- set sp.section = sp.section + 1 %}
        {%- endfor %}
      
    <hr style="margin:20px 0 20px 0">

        {% set sp = namespace(section=1, numtest=1, sumtest=0) %}
        {%- for section in data %}

        <h2 id="{{ section.header[0] }}">{{ section.header[1] }}</h2>
        {%- for link in section.links %}
        <a class="btn" href="{{ link[0] }}">{{ sp.section }}.{{ sp.numtest }} {{ link[1] }}</a>
        {%- set sp.numtest = sp.numtest + 1 %}
        {%- set sp.sumtest = sp.sumtest + 1 %}
        {%- endfor %}
        <a class="btn2" href="#index">Volver al índice</a>
        {%- set sp.section = sp.section + 1 %}
        {%- set sp.numtest = 1 %}
        {%- endfor %}

      </div>
   </div>

   <div class="container">
   
   <!-- FOOTER -->
   <div class="footer">
   <p>{{ sp.sumtest }} infografías de energía.</p>
   </div>

   </div>
</body>
</html>
"""


def main():
   template = Template(index_template)
   data = template.render(data = index_data)
   with codecs.open("index.html", 'w', encoding="utf-8") as fo:
       fo.write(data)
   input('Pulsa Enter')


if __name__ == "__main__":
   main()
