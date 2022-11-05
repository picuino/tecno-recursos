import os
import re
import codecs
import yaml
import jinja2
from urllib.parse import urljoin
import requests
from bs4 import BeautifulSoup


url_base = 'https://www.areatecnologia.com'
yaml_filename = 'recursos-areatecnologia.yaml'
template_filename = 'recursos-areatecnologia.txt'
rst_filename = '../' + template_filename[:-4] + '.rst'

write_files = False

def main():
   database = yaml.load(read(yaml_filename), Loader=yaml.Loader)
   for link in database:
      print('\n' + '*' * 50)
      print(link['title'] + '\n')
      subdir = read_main_links(link['url'])
      yaml_txt = yaml.dump(subdir, default_flow_style=False, allow_unicode=True)
      print(yaml_txt)

   return
   
   if write_files:
      read_main_links(database)
      yaml_txt = yaml.dump(database, default_flow_style=False, allow_unicode=True)
      write(yaml_filename, yaml_txt)

   database.sort(key=lambda w: w['date'], reverse=True)
   new_database = clasifica(database)

   rst_data = render_template(template_filename, new_database)
   if write_files:
      write(rst_filename, rst_data)


def append(database, titulo, web):
   for field in database:
      if field[0] == titulo:
         field[1].append(web)
         return
   database.append([titulo, [web]])   
   

def read_main_links(url):
   html = download(url)
   database = []
   for link in get_titles(html):
      database.append(link)
   return database


def render_template(filename, database):
   environment = jinja2.Environment(loader=jinja2.FileSystemLoader("."))
   template = environment.get_template(filename)
   rst_data = template.render(database = database)
   return rst_data


def read(filename):
   with codecs.open(filename, 'r', encoding='utf-8-sig') as fi:
      data = fi.read()
   return data


def write(filename, data):
   with codecs.open(filename, 'w', encoding='utf-8') as fo:
      fo.write(data)

   
def get_titles(html):
   soup = BeautifulSoup(html, 'html.parser')
   for div in soup.find_all('div'):
      try:
         if 'module' in div.get('class'):
            for link in div.find_all('a'):
               url = link['href']
               if not 'http' in url[:4]:
                  url = url_base + '/' + url
               title = link.text.strip('\n\r\t ').encode("iso-8859-1").decode('utf-8')
               link = {
                  'url': url,
                  'title': title,
                  }
            yield link
      except:
         pass


def download(url):
   return requests.get(url).text

main()
