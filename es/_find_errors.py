import os
import re
import codecs


def main():
    for root, dirs, files in os.walk('D:/Picuino/Tecno-recursos/es/'):
        for filename in files:
            if os.path.splitext(filename)[1] == '.rst':
                if 'ley' in filename:
                    continue
                process(os.path.join(root, filename))


def process(filename):
    finded = 0
    numline = 0
    with codecs.open(filename, 'r', encoding='utf-8-sig') as fi:
        for line in fi:
            numline += 1
            m = re.search(' ?[0-9]*\.[0-9]+ ?', line)
            if m:
                if excepcion(line):
                    continue
                finded += 1
                if finded == 1:
                    print('\n\n-----------------------------------------\n\n')
                    print(filename)
                print('   %03d> %s' % (numline, line.strip('\r\n')))
    if finded:
        os.system('"C:/Program Files/Notepad++/notepad++.exe" %s' % filename)
        ans = input('\n\nPulsa Enter ')


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
        
    ]
    for exception in exceptions:
        if exception in line:
            return True
    return False
main()
