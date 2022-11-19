import os
import re
import codecs

def main():
    for fname in os.listdir('.'):
        if not fname[-4:].lower() in ['.htm']:
            continue
        data = read(fname)
        num = re.findall('[0-9]+', fname)[0]
        title = '  <title>Práctica %s - Tutorial GIMP</title>' % num
        print(title)
        data = re.sub('  <!-- Matomo -->', '%s\n\n  <!-- Matomo -->' % title, data)
        write(fname, data)


def read(fname):
    with codecs.open(fname, 'r', encoding='latin1') as fi:
        data = fi.read()
    return data


def write(fname, data):
    with codecs.open(fname, 'w', encoding='utf-8-sig') as fo:
        fo.write(data)
          
main()
