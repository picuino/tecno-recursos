﻿# -*- coding: utf-8 -*-
"""
   Read all html files of a directory and subdirectories, and
   write out a sitemap.xml file of all.
   
   ----------------------------------------------------------------
   
   :copyright: (c) 2018 by Carlos Pardo <carlos (at) picuino.com>
   :license: GPL v3  <https://www.gnu.org/licenses/gpl-3.0.html>
   
   This program is free software; you can redistribute it and/or
   modify it under the terms of the GNU General Public License
   version 3 as published by the Free Software Foundation.

"""

import os
import re
import time
import codecs
import sys
from jinja2 import Environment, FileSystemLoader, Template

data = {
   'site': "https://www.picuino.com",
}

exclude = [ 'index.html' ]

sitemap_template = """<?xml version="1.0" encoding="UTF-8"?>

<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
{% for file in data.files %}
<url>
  <loc>{{data.site}}/{{file.name}}</loc>
  <lastmod>{{file.timestamp}}</lastmod>
  <changefreq>weekly</changefreq>
  <priority>0.80</priority>
</url>
{%- endfor %}

</urlset>
"""

def main():
   # Test arguments and info
   if len(sys.argv) < 2:
      print('Insuficient arguments.')
      print('Usage: python  %s  [pathname]' % os.path.basename(sys.argv[0]) )
      return

   # Read arguments
   pathname = sys.argv[1]
   if not os.path.isdir(pathname):
      print("Path doesn't exists: %s" % pathname)
      return
   output_file = join(pathname, 'sitemap.xml')
	  
   # Read all files
   print('   Sitemap of: %s' % (pathname))
   data['files'] = html_files(pathname, '', exclude)

   # Render files and write output
   code = Template(sitemap_template).render(data=data)
   write(output_file, code)


def write(output, code):
   old_code = ''
   if os.path.exists(output):
      with codecs.open(output, 'r', encoding='utf-8') as fi:
         old_code = fi.read()
   if code != old_code:
      with codecs.open(output, 'w', encoding='utf-8') as fo:
         print('   Modified')
         fo.write(code)


def html_files(base, path='', exclude=[]):
   files = []
   dirs = []
   longpath = join(base, path)
   for file in os.listdir(longpath):
      longname = join(longpath, file)
      
      if os.path.isfile(longname):
         if '_static' in longname:
            continue
         basename, ext = os.path.splitext(file)
         if ext.lower() in ['.html', '.htm']:
            name = join(path, file)
            if name not in exclude:
               timestamp = time.strftime("%Y-%m-%d", time.gmtime(os.path.getmtime(longname)))
               files.append({'name': name, 'timestamp':timestamp})
      else:
         dirs.append(join(path, file))
   for dir in dirs:
      files = files + html_files(base, path=dir, exclude=exclude)
   return files


def join(base, name):
   name = name.strip('/\\')
   if base:
      return base + '/' + name
   return name

   
main()
