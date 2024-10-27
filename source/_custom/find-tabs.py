"""
   Find tabulations
"""
import os
import codecs
import re


def main():
    process_files('..', ['.rst', '.txt'])
    input('Press Enter')


def process_files(path, file_types):
   longfiles = [os.path.join(path, f) for f in os.listdir(path)]
   for fname in longfiles:
      if os.path.isfile(fname):
         if os.path.splitext(fname)[1] in file_types:
            process(fname)
   for d in longfiles:
      if os.path.isdir(d):
         process_files(d, file_types) 


def process(fname):
    print(fname)
    data = read_file(fname)
    tabs = 0
    for i, line in enumerate(data, start=1):
        if '\t' in line:
            print(f'   {i:03d}>' + line.replace('\t', '☻'))
            tabs += 1
    if tabs:
        os.system('"C:/Program Files/Notepad++/notepad++.exe" ' + fname)


def read_file(fname):
    data = []
    with codecs.open(fname, 'r', encoding='utf-8-sig') as fi:
        for line in fi:
            data.append(line.strip('\r\n'))
    return data


main()
