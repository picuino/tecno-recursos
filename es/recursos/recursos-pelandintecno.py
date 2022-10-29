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
   new_data = False
   
   year = '2022'
   month = '10'
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
         print(page['date'], page['title'])

   if new_data:
      yaml_txt = yaml.dump(database, default_flow_style=False, allow_unicode=True)
      write('recursos-pelandintecno.yaml', yaml_txt)

   rst_data = render_template('recursos-pelandintecno.txt', database)
   write('../recursos-pelandintecno.rst', rst_data)


def render_template(filename, database):
   environment = jinja2.Environment(loader=jinja2.FileSystemLoader("."))
   template = environment.get_template(filename)
   rst_data = template.render(webs = database)
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
   with codecs.open(filename, 'w', encoding='utf-8-sig') as fo:
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
