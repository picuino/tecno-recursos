"""
   Find files not properly encoded with UTF-8 BOM signature
"""
import os
import codecs
import re

extensions = ['.txt', '.rst']


def main():
   for path, dirs, files in os.walk('..'):
      for file in files:
         process(path, file)
   input('Press Enter')


def process(path, file):
   if not file[-4:] in extensions:
      return
   long_file_name = os.path.join(path, file)
   print(long_file_name)
   data = read_file(long_file_name)
   if re.search("\u200D", data):
       print("   U+200D found")
       input("   Press Enter")


def read_file(filename):
   with codecs.open(filename, 'r', encoding='utf-8') as fi:
      data = fi.read()
   return data


main()
