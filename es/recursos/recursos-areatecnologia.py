import os
import re
import codecs
import yaml
import jinja2
from urllib.parse import urljoin
import requests
from bs4 import BeautifulSoup

write_files = True
reload_links = True

url_base = 'https://www.areatecnologia.com'
yaml_filename = 'recursos-areatecnologia.yaml'
template_filename = 'recursos-areatecnologia.txt'
rst_filename = '../' + template_filename[:-4] + '.rst'

def main():
   database = yaml.load(read(yaml_filename), Loader=yaml.Loader)
   
   for i in range(len(database)):
      link = database[i]
      print(link['title'])
      if 'getter' in link and link['getter'] == 0:
         continue
      subdirs = []
      if reload_links or filled('subdirs', link) == False:
         subdirs = read_main_links(link['url'])
      if subdirs:
         add_subdirs(database[i], subdirs)

   if write_files:
      yaml_txt = yaml.dump(database, default_flow_style=False, allow_unicode=True)
      write(yaml_filename, yaml_txt)
      rst_data = render_template(template_filename, database)
      write(rst_filename, rst_data)


def add_subdirs(database, subdirs):
   if not 'subdirs' in database:
      database['subdirs'] = subdirs
      return
   
   for new_link in subdirs:
      exists = False
      for link in database['subdirs']:
         if link['url'] == new_link['url']:
            exists = True
      if exists == False:
         database['subdirs'].append(new_link)

   
def filled(name, dictionary):
   if name in dictionary and dictionary[name]:
      return True
   return False


def read_main_links(url):
   print('  ', url)
   if ('aparatos-electronicos.html' in url) or ('nuevas-tecnologias.html' in url):
      get_titles = get_titles_2
   else:
      get_titles = get_titles_1

   html = download(url)
   database = []
   for link in get_titles(html):
      if 'areatecnologia.com' in link['url']:
         database.append(link)
   return database


def get_titles_1(html):
   soup = BeautifulSoup(html, 'html.parser')
   for div in soup.find_all('div'):
      try:
         if 'module' in div.get('class'):
            for link in div.find_all('a'):
               url = link['href'].encode("latin-1").decode("utf-8")
               if not 'http' in url[:4]:
                  url = url_base + '/' + url
               title = link.text.strip('\n\r\t ').encode("latin-1").decode('utf-8')
               link = {
                  'url': url,
                  'title': title,
                  }
            yield link
      except:
         pass


def get_titles_2(html):
   links_url = []
   yield_url = False
   soup = BeautifulSoup(html, 'html.parser')
   for link in soup.find_all('a'):
      url = link['href'].encode("latin-1").decode("utf-8")
      if not 'http' in url[:4]:
         url = url_base + '/' + url
      if url in links_url:
         continue
      links_url.append(url)
      if 'drones.html' in url.lower() or 'li-fi.html' in url.lower():
         yield_url = True
      title = link.text.strip('\n\r\t ').encode("latin-1").decode('utf-8')
      link = {
         'url': url,
         'title': title,
      }
      if yield_url:
         yield link
      if 'tipos-de-robots.html' in url.lower() or 'fotovoltaica.html' in url.lower():
         yield_url = False


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

   
def download(url):
   return requests.get(url).text

main()
