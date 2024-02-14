"""
   Find files not properly encoded with UTF-8 BOM signature
"""
import os
import codecs
import re

extensions = ['.txt', '.rst']
excludes =[
   'robots.txt',
   'Apache License.txt',
   'SIL Open Font License.txt',
   '..\\docs',
   '..\\_build',
   '..\\_internal',
   '..\\venv',
   ]


def main():
   process('..')
   input('Press Enter')


def process(path):
   if path in excludes:
      return
   longfiles = [os.path.join(path, f) for f in os.listdir(path)]
   for fname in longfiles:
      if os.path.isfile(fname):
         test_image_alt(fname)
   for d in longfiles:
      if os.path.isdir(d):
         process(d)


def test_image_alt(fname):
   if not os.path.splitext(fname)[1].lower() in extensions:
      return
   if os.path.basename(fname) in excludes:
      return

   data = read(fname)
   num_line = 0
   image = False
   for i in range(len(data)):
      line = data[i]
      num_line += 1
      if re.search(r'\.\. image:: |\.\. figure:: ', line):
         image = True
         num_line = 0 
      if image and num_line > 3:
         image = False
         print('Filename= %-50s image_line= %d' % (fname, i - num_line))
      if image and re.search(':alt:', line):
         #print('Filename= %-50s image_line= %d' % (fname, i - num_line))         
         image = False


def read(fname):
   with codecs.open(fname, 'r', encoding='utf-8') as fi:
      data = [line for line in fi]
   return data

main()
