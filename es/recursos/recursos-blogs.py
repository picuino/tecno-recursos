import os
import re
import jinja2
import yaml
import math
import time
from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from webdriver_manager.chrome import ChromeDriverManager


def main():
   webs = load_yaml('recursos-blogs.yaml')
   webs = process(webs)
   webs = sorted(webs, key=sorted_key)
   rst_data = render_template('recursos-blogs.txt', webs)
   write('../recursos-blogs.rst', rst_data)

   new_blogs(webs)
   input('Pulsa Enter')


def new_blogs(webs):
   print('Listado de nuevas web:')
   with open('recursos-blogs-nuevos.txt', 'r', encoding='utf-8') as fi:
      new_webs = fi.readlines()

   webs = [web['url'].split('://')[1].strip('/') for web in webs]
   for new_web in new_webs:
      new_web = new_web.strip('\n\r /')
      if re.search('://', new_web):
         new_web = new_web.split('://')[1]
      if len(new_web) < 3:
         continue
      if not new_web in webs:
         print(' <{0}>'.format(new_web))


def process(webs):
   driver = None
   for web in webs:
      screenshot_jpg = os.path.join('screenshots', web['screenshot'])
      screenshot_png = screenshot_jpg[:-4] + '.png'
      if not os.path.exists(screenshot_jpg):
         if not driver:
            driver = webdriver.Chrome(service=Service(ChromeDriverManager().install()))
         driver.get(web['url'])
         driver.set_window_size(1024, 800)
         time.sleep(5)
         driver.save_screenshot(screenshot_png)
         command = 'd:/Bin/Imagemagick/convert.exe {0} -resize 50% {1}'.format(screenshot_png, screenshot_jpg)
         os.system(command)
      if re.search('[0-9,]{3,10}', web['similarweb_rank']):
         web['similarweb_rank'] = int(web['similarweb_rank'].replace(',', ''))
      if ('visitas' in web and web['visitas'] and web['duracion']):
         duracion = web['duracion'].split(':')
         duracion = int(duracion[0])*60 + int(duracion[1])
         web['duracion'] = duracion

   if driver:
      driver.quit()
   return webs


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


def render_template(filename, webs):
   environment = jinja2.Environment(loader=jinja2.FileSystemLoader("."))
   template = environment.get_template(filename)
   rst_data = template.render(webs = webs)
   return rst_data


def load_yaml(filename):
   with open(filename, 'r', encoding='utf-8-sig') as fi:
      data = yaml.load(fi, Loader=yaml.Loader)
   return data


main()
