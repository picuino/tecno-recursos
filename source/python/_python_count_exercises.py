import os
import re
import codecs


def main():
    pages = 0
    exercises = 0
    for filename in os.listdir('../'):
        if re.match('python[a-z-_]+\.rst', filename):
            count = count_exercises('../' + filename)
            exercises += count
            pages += 1
            print(f'{count: 3d} ejercicios en {filename}')

    print(f'\n{exercises:03d} ejercicios en total')
    print(f'{pages:03d} páginas en total')
    input('\nPulsa Enter')


def count_exercises(filename):
    data = read_file(filename)
    return data.count('#. ')


def read_file(filename):
    with codecs.open(filename, 'r', encoding='utf-8') as fi:
        data = fi.read()
    return data


main()
