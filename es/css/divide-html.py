"""
   Split html file in tree parts:
   
      *.css   with style code into <style> </style> section
      *.htm   with only html code and link to prior *.css file
      *.rst   with code in initial comment section <!-- -->
              before <html> tag
              
   ----------------------------------------------------------------
   
   :copyright: (c) 2018 by Carlos Pardo <carlos (at) picuino.com>
   :license: GPL v3  <https://www.gnu.org/licenses/gpl-3.0.html>
   
   This program is free software; you can redistribute it and/or
   modify it under the terms of the GNU General Public License
   version 3 as published by the Free Software Foundation.

"""
import os
import sys
import codecs
import re

def main():
   if len(sys.argv) < 3:
      print('USAGE: python %s  [file.html] [output-path]' % os.path.basename(sys.argv[0]))
      return
   divide_html(sys.argv[1], sys.argv[2])

   
def divide_html(fname, path):
   print('\nDivide %s to path %s' % (fname, path))
   
   # Read html
   with codecs.open(fname, 'r', encoding='utf-8-sig') as fi:
      data = fi.read()
   basename = os.path.join(path, os.path.splitext(os.path.basename(fname))[0])
   html = re.split('<html>', data,  maxsplit=1)
   
   # Divide rst code
   rstcode = re.split('<!--[ \t]*\r?\n', html[0], maxsplit=1)[1]
   rstcode = re.split('-->', rstcode, maxsplit=1)[0]
   rstname = basename + '.rst'

   # Divide CSS
   csscode = re.split('</*style>', html[1])[1]
   lines = re.split('\r?\n', csscode)[1:]
   csscode ='\n'.join([l[3:] for l in lines])
   cssname = basename + '.css'

   # Divide htm version with link to css
   htmlcode = re.split('</*style>', '<html>' + html[1]) 
   htmlcode = htmlcode[0] + \
              '<link rel="stylesheet" type="text/css"\n' + \
              '         href="%s" />' % cssname + \
              htmlcode[2];
   htmlname = basename + '.htm'

   # Write out
   with codecs.open(rstname, 'w', encoding='utf-8-sig') as fo:
      fo.write(rstcode)
   with codecs.open(cssname, 'w', encoding='utf-8-sig') as fo:
      fo.write(csscode)
   with codecs.open(htmlname, 'w', encoding='utf-8-sig') as fo:
      fo.write(htmlcode)

main()
