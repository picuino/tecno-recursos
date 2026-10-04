"""
   Find last modifications in *.rst files
"""
import os
import re

extensions = ['.rst']
excludes =[
    '..\\_custom',
    ]

modified = []


def main():
    global modified
    process('..')
    modified = sorted(modified, reverse=True)
    for i in range(100):
        print(modified[i])
    input('Press Enter')


def process(path):
    if path in excludes:
        return
    longfiles = [os.path.join(path, f) for f in os.listdir(path) if f[-4:] in extensions]
    for fname in longfiles:
        if os.path.isfile(fname):
            read_modified(fname)
    for d in longfiles:
        if os.path.isdir(d):
            process(d)


def read_modified(fname):
    global modified
    data = read(fname)
    for i in range(min(4, len(data))):
        if re.search(':modified:', data[i]):
            date = read_date(data[i])
            if date:
                modified.append([date, fname])
            break


def read_date(string):
    date = re.findall('[0-9\\-/]{8,10}', string)[0]
    return date


def read(fname):
    with open(fname, 'r', encoding='utf-8') as fi:
        data = [line for line in fi]
    return data

main()
