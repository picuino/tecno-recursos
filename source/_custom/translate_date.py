import os
import re


def main():
    for root, dirs, files in os.walk('..'):
        for filename in files:
            if os.path.splitext(filename)[1] == '.rst':
                translate_date(os.path.join(root, filename))
    input('Pulsa Enter')


def translate_date(filename):
    print(filename)
    data = read_file(filename)
    
    date = re.findall(':Modified: [0-9][0-9]/[0-9][0-9]/20[1-2][0-9]', data)
    if date:
        newdate = re.findall('[0-9]+', date[0])
        newdate = f':Modified: {newdate[2]}-{newdate[1]}-{newdate[0]}'
        data = re.sub(':Modified: [0-9][0-9]/[0-9][0-9]/20[1-2][0-9]', newdate, data, count=1)
        write_file(filename, data)


def read_file(filename):
    with open(filename, 'r', encoding='utf-8') as fi:
        data = fi.read()
    return data


def write_file(filename, data):
    with open(filename, 'w', encoding='utf-8') as fo:
        fo.write(data)


main()
