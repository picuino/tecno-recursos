import os
import re
import jinja2
import yaml
import math

def main():
   data = load_yaml('recursos-blogs.yaml')
   data = process(data)
   data['webs'] = sorted(data['webs'], key=sorted_key)
   for web in data['webs']:
      print(web['webname'])
   rst_data = render_template('recursos-blogs.txt', data)
   write('../recursos-blogs.rst', rst_data)


def process(data):
   webs = data['webs']
   for web in webs:
      if re.search('[0-9,]{3,10}', web['similarweb_rank']):
         web['similarweb_rank'] = int(web['similarweb_rank'].replace(',', ''))
      if ('visitas' in web and web['visitas'] and web['duracion']):
         duracion = web['duracion'].split(':')
         duracion = int(duracion[0])*60 + int(duracion[1])
         web['duracion'] = duracion
   return data


def sorted_key(web):
   if ('visitas' in web and web['visitas'] and web['duracion']):
      visitas = float(web['visitas'])
      duracion = web['duracion']
      paginas = float(web['paginas_visita'])
      penalizacion = 1.0      
      if 'penalizacion' in web:
         penalizacion = float(web['penalizacion'])
      rank = int(6000000/( visitas * duracion * paginas * penalizacion ))
   else:
      rank = web['similarweb_rank']
      if not isinstance(rank, int):
         rank = 99000000
   return rank


def write(filename, data):
   with open(filename, 'w', encoding='utf-8') as fo:
      fo.write(data) 


def render_template(filename, data):
   environment = jinja2.Environment(loader=jinja2.FileSystemLoader("."))
   template = environment.get_template(filename)
   rst_data = template.render(data = data)
   return rst_data


def load_yaml(filename):
   with open(filename, 'r', encoding='utf-8') as fi:
      data = yaml.load(fi, Loader=yaml.Loader)
   return data


main()
