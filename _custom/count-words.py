"""
   Find files not properly encoded with UTF-8 BOM signature
"""
import os
import codecs
import re

paths = [
   '../es',
   '../en',
   ]

counter = {
   'num_files': 0,
   'num_lines': 0,
   'num_words': 0,
   }

word_list = {}

def main():
   for path in paths:
      process(path, counter, word_list)
   print(counter)
   print_words(word_list)
   input('\nPress Enter')


def print_words(word_list):
   word_list = list(word_list.items())
   word_list.sort(key=lambda item: item[1], reverse=True)
   i = 0
   for item in word_list:
       if i >= 100:
          break
       print('%-25s' % str(item), end=' ')
       i += 1
       if i%4 == 0:
          print()
   print()
         

def process(path, counter, word_list):
   longfiles = [os.path.join(path, f) for f in os.listdir(path)]
   for fname in longfiles:
      if fname[-4:].lower() in ['.rst']:
         if os.path.isfile(fname):
            count_words(fname, counter, word_list)
   for d in longfiles:
      if os.path.isdir(d):
         process(d, counter, word_list)


def count_words(fname, counter, word_list):
   data = read(fname)
   counter['num_files'] += 1
   for i in range(len(data)):
      line = data[i].strip('\r\n ')
      if len(line) > 3:
         counter['num_lines'] += 1
         line = re.sub(r'[^a-zA-Z0-9_ñÑáéíóúÁÉÍÓÚüÜ]+', ' ', line)
         words = re.split('\s+', line)
         counter['num_words'] += len(words)
         for word in words:
            add_item(word, word_list)


def add_item(word, word_list):
   if len(word)>3:
      word = word.lower()
      if word in word_list:
         word_list[word] += 1
      else:
         word_list[word] = 1
   

def read(fname):
   with codecs.open(fname, 'r', encoding='utf-8') as fi:
      data = [line for line in fi]
   return data


main()
