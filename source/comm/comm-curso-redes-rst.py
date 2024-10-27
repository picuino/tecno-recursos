import re
import os
import yaml
import jinja2


def main():
    database = read_database('comm-curso-redes.yml')
    template = jinja2.Template(template_rst)
    rst_code = template.render(database=database)
    write_rst('../comm-curso-redes.rst', rst_code)
    input('Pulsa Enter para terminar')


def write_rst(fname, data):
    with open(fname, 'w', encoding='utf-8-sig') as fo:
        fo.write(data)

def read_database(fname):
    with open(fname, 'r', encoding='utf-8-sig') as fi:
        data = fi.read()
    return yaml.safe_load(data)


template_rst = """:Date: 18/04/2022
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International
:tocdepth: 1

.. _comm-curso-redes:

Curso de Redes Telemáticas
==========================
Curso de nivel universitario sobre Redes Telemáticas publicado en 2018
por Rogelio Montañana en `AulaClic. <https://www.aulaclic.es/redes/index.htm>`__

El curso contiene 175 vídeos de alrededor de 20 minutos cada uno y equivale
a dos asignaturas de 3 créditos cada una.
La primera parte abarca desde la capa física hasta la capa de enlace de
datos.
La segunda parte abarca las capas de red y de transporte de datos.

.. contents:: Índice de contenidos:
   :local:
   :depth: 2

{% set table_mode = False %}
{% for section in database %}

{% set seclen = section.title | length %}
{{ section.title }}
{{ "-" * seclen }}
{%- if table_mode %} {# True = Modo de tabla. False = Modo de listado #}
.. list-table::
   :widths: 80 20
   :header-rows: 1

   * - Título
     - Youtube
   {% for subsection in section.subtitles %}
   * - {% if subsection.url_ac %}{{ "-- " * (subsection.level-2) }}`{{ subsection.title }} <{{ subsection.url_ac }}>`__
       {%- else %}{{ subsection.title }}{% endif %}
     - {% if subsection.url_yt %}`YouTube <{{ subsection.url_yt }}>`__ {% endif %}
   {% endfor %}

{%- else %}
{% for subsection in section.subtitles %}
{% if subsection.url_ac %}{{ "  " * (subsection.level-2) }}* `{{ subsection.title }} <{{ subsection.url_ac }}>`__
{% else %}{{ "  " * (subsection.level-2) }}* {{ subsection.title }}{% endif %}
{%- if subsection.url_yt %}{{ "  " * (subsection.level-2) }}  `(YouTube). <{{ subsection.url_yt }}>`__ {% endif %}
{% endfor %}
{% endif %}

{% endfor %}
"""

main()
