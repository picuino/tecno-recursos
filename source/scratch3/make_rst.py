# -*- coding: utf-8 -*-
"""
   Programa para generar archivos Restructured Text (.rst)
   para Sphinx, a partir de macros de jinja2 en formato Texto (.txt)
   
   Adaptación para generar páginas del tutorial Scratch. 
   
   ----------------------------------------------------------------
   
   :copyright: (c) 2018 by Carlos Pardo <carlos (at) picuino.com>
   :license: GPL v3  <https://www.gnu.org/licenses/gpl-3.0.html>
   
   This program is free software; you can redistribute it and/or
   modify it under the terms of the GNU General Public License
   version 3 as published by the Free Software Foundation.

"""

import os
import re
import sys
import codecs
from jinja2 import Environment, FileSystemLoader, Template
from PIL import Image

   
def main():
   # Test arguments and info
   if len(sys.argv)<2:
      print('Insuficient arguments.')
      print('Usage: python  %s  [source-template]  [output]' % os.path.basename(sys.argv[0]) )
      return
      
   # Read arguments
   source, output = sys.argv[1:3]
   if output == source:
      print("Error: source and output are the same file")
      return
   print('   Render: %-30s  -->  %s' % (source, output))

   # Set Jinja envionment
   env = Environment( loader=FileSystemLoader(searchpath='.') )
   
   # Read info from images
   env.globals['g_images'] = images_info('_images')

   # Render template source and write to file
   rst = env.get_template(source).render()
   with codecs.open(output, 'w', encoding='utf-8') as fo:
      fo.write(rst)
   

def images_info(path):
   images = {}
   for fname in os.listdir(path):
      if fname[-4:].lower() in ['.png', '.gif', '.jpg']:
         im = Image.open(os.path.join(path, fname))
         width, height = im.size
         images[fname] = {'width': width, 'height': height }
   return images

main()
