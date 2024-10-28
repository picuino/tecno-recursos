import os
import re
import codecs


def main():
    for root, dirs, files in os.walk('..'):
        for filename in files:
            if os.path.splitext(filename)[1] == '.rst':
                find_errors(os.path.join(root, filename))
    input('Pulsa Enter')


def find_errors(filename):
    print(filename)
    errors = False
    data = read_file(filename)

    if error_bom(data):
        errors = True
    else:
        data = data[2:]
        
    if errors:
        editar(filename)



def error_bom(data):
    if ord(data[0]) != 65279:
        return True
    return False


def editar(filename):
    os.system('"C:/Program Files/Notepad++/notepad++.exe" %s' % filename)
    ans = input('\nPulsa Enter ')


def read_file(filename):
    with codecs.open(filename, 'r', encoding='utf-8') as fi:
        data = fi.read()
    return data


def excepcion(line):
    exceptions = [
        'EDUCACIÓN 3.0',
        'Creative Commons',
        'CC BY-NC-SA',
        'CC BY 2.5',
        'GPL v2.0',
        'CC BY-SA 4.0',
        'CC BY-SA 3.0',
        'CC0 1.0',
        'CC BY-SA 2.0',
        'CC-BY-SA 3.0',
    ]
    for exception in exceptions:
        if exception in line:
            return True
    return False


main()
