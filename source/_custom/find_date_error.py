import os
import re
from datetime import datetime

def main():
    for root, dirs, files in os.walk('..'):
        for filename in files:
            if os.path.splitext(filename)[1] == '.rst':
                find_date_errors(os.path.join(root, filename))
    input('Pulsa Enter')


def find_date_errors(filename):
    date_file = read_date(filename)

    data = read_file(filename)
    try:
        date_declared = re.findall(':Date: [0-9/]{5,10}', data[:25])[0][7:]
        date_declared = datetime.strptime(date_declared, '%d/%m/%Y')
        diferencia = date_declared - date_file
        if diferencia.days > 1:
            print(filename)
            print('  ->', date_declared, date_file)
    except:
        print(filename)
        print('    Error')


def read_date(filename):
    fecha_creacion_seg = os.path.getctime(filename)
    return datetime.fromtimestamp(fecha_creacion_seg)


def read_file(filename):
    with open(filename, 'r', encoding='utf-8') as fi:
        data = fi.read()
    return data


main()
