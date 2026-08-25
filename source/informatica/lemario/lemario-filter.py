import json
import os
import unicodedata

def conacentos(palabra):
    normalizada = unicodedata.normalize('NFD', palabra)
    for caracter in normalizada:
        if unicodedata.category(caracter) == 'Mn':
            return True
    return False   

def read(filename):
    with open(filename, 'r', encoding='utf-8') as fi:
        datos = fi.read().split('\n')
    return datos

def write(filename, datos):
    with open(filename, 'w', encoding='utf-8') as fo:
        fo.write('\n'.join(datos))


datos = read('lemario.txt')
newdatos = []
for palabra in datos:
    if conacentos(palabra):
        continue
    if len(palabra) > 6:
        continue
    newdatos.append(palabra)
write('lemario-reducido.txt', newdatos)
