"""
   Remove trailing spaces
"""
import os
import codecs
import re


def main():
    process('..')
    input('Press Enter')


def process(path):
   longfiles = [os.path.join(path, f) for f in os.listdir(path)]
   for fname in longfiles:
      if os.path.isfile(fname):
         if os.path.splitext(fname)[1] in ['.rst', '.txt']:
            delete_trailing_spaces(fname)
   for d in longfiles:
      if os.path.isdir(d):
         process(d) 


def delete_trailing_spaces(fname):
    print(fname)
    try:
       data_strip = read_strip(fname)
       data_plain = read_plain(fname)
    except:
        print('  Read error')
        return
    if compare_equal(data_strip, data_plain) == False:
        remove = input('  Remove trailing spaces (Y/n)?')
        if remove not in ['n', 'N']:
            write(fname, data_strip)
    

def compare_equal(data_strip, data_plain):
    for i in range(len(data_strip)):
        if data_strip[i] != data_plain[i].strip('\n\r'):
            return False
    return True


def write(fname, data):
    with codecs.open(fname, 'w', encoding='utf-8-sig') as fo:
        for line in data:
            fo.write(line + '\n')


def read_strip(fname):
    data = []
    with codecs.open(fname, 'r', encoding='utf-8-sig') as fi:
        for line in fi:
            data.append(line.rstrip('\n\r \t'))
    return data


def read_plain(fname):
    data = []
    with codecs.open(fname, 'r', encoding='utf-8-sig') as fi:
        for line in fi:
            data.append(line)
    return data





main()
