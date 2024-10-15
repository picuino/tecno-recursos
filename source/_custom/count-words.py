"""
   Find files not properly encoded with UTF-8 BOM signature
"""
import os
import codecs
import re

paths = [
   '../',
   '../arduprog',
   '../uno-doc',
   ]

exclude_files = [
   'python-codewars.rst',
   'recursos-pelandintecno.rst',
   'recursos-areatecnologia.rst',

   'ley-temario-tecnologia.rst',
   'ley-tecnologia-ingenieria.rst',
   'ley-tecnologia-digitalizacion.rst',
   'ley-tecnologia.rst',
   'ley-secundaria.rst',
   'ley-materias.rst',
   'ley-digitalizacion.rst',
   'ley-ciencias-computacion.rst',
   'ley-bachillerato.rst',
   'ley-autonomica-madrid.rst',
   'ley-autonomica-aragon.rst',
   'ley-autonomica.rst',
   
   'informatica-ciberseguridad-social.rst',
   'informatica-ciberseguridad-malware.rst',
   'informatica-ciberseguridad-criptografia.rst',
   'informatica-ciberseguridad-tecnicos.rst',
   'informatica-ciberseguridad-defensas.rst',
   'informatica-ciberseguridad-amenazas.rst',
   ]


counters = {
   'num_files': 0,
   'num_lines': 0,
   'num_words': 0,
   }

words_dict = {}

def main():
   for path in paths:
      process(path, exclude_files, counters, words_dict)
   print(counters)
   words_list = words_to_list(words_dict)
   write_csv('count-words.csv', words_list)
   input('\nPress Enter')


def words_to_list(words_dict):
   words_list = list(words_dict.items())
   words_list = [(w[0], w[1], f'{99999-w[1]:05d}{w[0]}') for w in words_list]
   words_list.sort(key=lambda item: item[2])
   return words_list


def process(path, exclude_files, counters, word_list):
   path_files = [os.path.join(path, f) for f in os.listdir(path) if f not in exclude_files]
   for fname in path_files:
      if fname[-4:].lower() in ['.rst']:
         if os.path.isfile(fname):
            print(fname)
            data = read_file(fname)
            count_words(data, counters, word_list)


def count_words(data, counters, words_dict):
   counters['num_files'] += 1
   for i in range(len(data)):
      line = data[i].strip('\r\n ')
      if len(line) < 3:
         continue
      line = re.sub(r'[^a-zA-ZñÑáéíóúÁÉÍÓÚüÜë]+', ' ', line)
      words = re.split('\s+', line)
      num_words = 0      
      for word in words:
         if add_item(word, words_dict):
            num_words += 1
      if num_words > 0:
         counters['num_words'] += num_words
         counters['num_lines'] += 1


def add_item(word, words_dict):
   if len(word) <= 3 or len(word) >= 24:
      return False

   try:
       if str(int(word)) == word:
           return False
   except:
       pass

   word = word.lower()
   if word in words_dict:
      words_dict[word] += 1
   else:
      words_dict[word] = 1

   return True


def write_csv(fname, words_list):
   with codecs.open(fname, 'w', encoding='latin1') as fo:
       for item in words_list:
           fo.write(item[0] + ';' + str(item[1]) + '\n')


def read_file(fname):
   with codecs.open(fname, 'r', encoding='utf-8') as fi:
      data = [line for line in fi]
   return data


main()
