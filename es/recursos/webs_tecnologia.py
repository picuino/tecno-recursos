import os
import codecs
import re

def main():
    new_webs = read_new_webs('webs_tecnologia.txt')
    actual_webs = read_actual_webs('../recursos-blogs.rst')
    compara_webs(new_webs, actual_webs)


def compara_webs(new_webs, actual_webs):
    print('Existentes:')
    candidates = []
    for web in new_webs:
        match = False
        for aweb in actual_webs:
            if web in aweb:
                match = True
                print('  ', web)
                break
        if not match:
            candidates.append(web)
    print('Nuevos candidatos:')
    for web in candidates:
        print('  ', web)
    

def read_actual_webs(filename):
    webs = []
    with codecs.open(filename, encoding='utf-8') as fi:
        for line in fi:
            pattern = '<https?://[A-Za-z/0-9\.\-\~\%]*>'
            if re.search(pattern, line):
                url = re.findall(pattern, line)[0]
                url = url.split('://')[1].strip('/>')
                webs.append(url)
    webs = list(dict.fromkeys(webs))
    return webs


def read_new_webs(filename):
    webs = []
    with codecs.open(filename, encoding='utf-8') as fi:
        for line in fi:
            line = line.strip()
            if len(line)>3:
                webs.append(line)
    webs = list(dict.fromkeys(webs))
    return webs


if __name__ == "__main__":
    main()
