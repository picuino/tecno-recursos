import os
import re
import codecs
import yaml
import jinja2
from urllib.parse import urljoin
import requests
from bs4 import BeautifulSoup


url_base = 'http://pelandintecno.blogspot.com'


def main():
   database = yaml.load(read('recursos-pelandintecno.yaml'), Loader=yaml.Loader)

   if False and read_new_posts(database):
      yaml_txt = yaml.dump(database, default_flow_style=False, allow_unicode=True)
      write('recursos-pelandintecno.yaml', yaml_txt)

   database.sort(key=lambda w: w['date'], reverse=True)
   new_database = clasifica(database)

   wc = words(new_database[-1][1])

   rst_data = render_template('recursos-pelandintecno.txt', new_database)
   if True:
      write('../recursos-pelandintecno.rst', rst_data)


def words(database):
   wc = {}
   for web in database:
      words = re.split('[\s\.,:0-9\-#/]+', web['title'])
      for word in words:
         if word in wc and word:
            wc[word] += 1
         else:
            wc[word] = 1

   wc = [w for w in wc.items()]
   wc.sort(key=lambda x: x[1])
   return wc


def clasifica(database):
   clasificacion = [
      ['Dibujo', 'trazado|Expresión gráfica|acotación|vistas|perspectivas|ángulos|geométrico'
                 '|escuadra y cartabón|División de un segmento|acotar|acotación'
                 '|comunicación gráfica'],
      ['Mecanismos', 'relaciones de transmisión|palancas|engranajes|poleas|mecanismos'
                     '|biela|manivela|máquina|Tornillo sin fin|relación de transmisión'],
      ['Estructuras', 'Estructuras|resonancia|tacoma|cúpulas|arquitectura|torsión'
                      '|Arco|Kinetic|esfuerzos|pirámides|puente de Trajano|puente de papel'
                      '|torre de Pisa|arquitectónico|cúpula|estructurales|ingeniería civil'
                      ''],
      ['Diseño 3D', ' 3D|BlocksCAD|OpenSCAD|SketchUp'],
      ['Energía', 'Energía|enegía|fusion|eólica|mareomotriz|nuclear|consumo eléctrico|termosolar'
                  '|vapor|petróleo|motor|ENERGÉTICO|Chernobyl|combustible|chimenea solar'
                  '|aerogeneradores' ],
      ['Materiales', 'plástico|cemento|madera|metal|pétreos|cerámicos|polímeros'
                     '|fabricación del? papel|acero|moldeo|bronce|Titanio'
                     '|alto horno|Papel tissue|Niquel'],
      ['Electricidad', 'Nikola|Tesla|eléctric|electricidad|serie|paralelo|cortocircuito|circuitos'
                       '|resistencias|diferencial|magnetotérmico|circuito|ELECTRIC|Relé'
                       '|bombilla|Ohm'],
      ['Electrónica', 'protoboard|electrónica|electrónicos|microchips|condensadores'
                      '|puertas lógicas|semiconductores|Karnaugh|lógicas|diodos'
                      '|Electronics|LÓGICA BINARIA|Moore|LED|unión PN|Transistor'
                      '|Tablas de verdad|Binario y Hexadecimal'],
      ['El proceso tecnológico', 'Proceso tecnológico'],
      ['Taller', 'seguridad|taller|Señales:|herramientas|Henry Ford|Torres de espagueti'],
      ['GIMP', 'gimp'],
      ['Historia de la Tecnología', 'Historia de la tecnología'],
      ['Neumática e hidráulica', 'neumática|hidráulic|FluidSim|válvulas distribuidoras'],
      ['Internet', 'internet|Redes Sociales|netiqueta|Netetiquetas'],
      ['Proyectos', 'proyecto|proceso|TANGRAM'],
      ['Historia', 'Historia|revolución industrial'],
      ['Mujer', 'mujer|niña|Curie'],
      ['Leonardo', 'leonardo'],
      ['Vídeos y animaciones', 'vídeos|infograf[íi]a|animaciones|Home: la película'
                               '|documental'],
      ['Ciencia', 'ciencia'],
      ['Ordenadores', 'ordenador|computación|Turing|Scratch|Assembler'],
      ]

   new_database = []
   for titulo, pattern in clasificacion:
      for i in range(len(database)):
         web = database[i]
         if re.search(pattern, web['title'], flags=re.I) and not 'selected' in web:
            database[i]['selected'] = True
            append(new_database, titulo, web)

   titulo = 'Varios'
   for i in range(len(database)):
      web = database[i]
      if not 'selected' in web:
         append(new_database, titulo, web)
         
   return new_database


def append(database, titulo, web):
   for field in database:
      if field[0] == titulo:
         field[1].append(web)
         return
   database.append([titulo, [web]])   
   

def read_new_posts(database):
   year = '2022'
   months = ['11']
   new_data = False
   for month in ['11']:
      url = '{0}/{1}/{2}/'.format(url_base, year, month)
      html = download(url)
      for title in get_titles(url, html):
         page = {
            'date': '{}-{}'.format(year, month),
            'url': title[0],
            'title': title[1],
         }
         if not search_database(page, database):
            new_data = True
            database.append(page)
   return new_data


def render_template(filename, database):
   environment = jinja2.Environment(loader=jinja2.FileSystemLoader("."))
   template = environment.get_template(filename)
   rst_data = template.render(database = database)
   return rst_data


def search_database(page, database):
   for p in database:
      if p['date'] == page['date'] and p['url'] == page['url']:
         return True
   return False


def read(filename):
   with codecs.open(filename, 'r', encoding='utf-8-sig') as fi:
      data = fi.read()
   return data


def write(filename, data):
   with codecs.open(filename, 'w', encoding='utf-8') as fo:
      fo.write(data)

   
def get_titles(url, html):
   soup = BeautifulSoup(html, 'html.parser')
   for header3 in soup.find_all('h3'):
      if 'entry-title' in header3.get('class'):
         title = header3.text.strip()
         for link in header3.find_all('a'):
            url_link = link['href']
         yield url_link, title


def download(url):
   return requests.get(url).text

main()
