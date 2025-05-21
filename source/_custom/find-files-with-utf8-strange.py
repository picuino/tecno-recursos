"""
   Find extrange UTF chars in files
"""
import os
import codecs
import re

extensions = ['.txt', '.rst']
regular_utf = [c for c in '\ufeff\n\rÁÉÍÓÚáéíóúñÑÜäëïöü¿¡ºª«»ćš·ΩØ€βµ©®źß™…π└┘△Ç']
regular_utf = regular_utf + [c for c in '¯➞‘”≤−“→î□🌡🌎■è︿︶🧬õĂÿøąĄߧûôăþāòùý÷Ā😀’═╔║Я╦╠╚╬☀╩╗╝╣']
regular_utf = regular_utf + [chr(i) for i in range(32, 127)]

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
   dataset = set(data)
   for c in regular_utf:
      dataset.discard(c)
   if dataset:
      print('   ' + str(dataset))
      input("   Press Enter")


def read_file(filename):
   with codecs.open(filename, 'r', encoding='utf-8') as fi:
      data = fi.read()
   return data


main()
