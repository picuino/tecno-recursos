import jinja2
import re

def jinja_template(template_file):
      """Load jinja environment and template file.
         return a jinja template object"""
      templateLoader = jinja2.FileSystemLoader(searchpath='.')
      templateEnv = jinja2.Environment(loader=templateLoader)
      template = templateEnv.get_template(template_file)
      return template

def rgb(r, g, b):
    return "#%02x%02x%02x" % (r, g, b)

def multiplicador(valor):
    if valor < 10:
        return 10
    if valor < 100:
        return 0
    if valor < 1000:
        return 1
    if valor < 10000:
        return 2
    if valor < 100000:
        return 3
    if valor < 1000000:
        return 4
    if valor < 10000000:
        return 5
    if valor < 100000000:
        return 6
    return 7


def filename(valor):
    basename = 'electric-resistencia-'
    if valor < 10:
        return basename + re.sub('\.', '_', str(valor)) + '.svg'
    return basename + str(valor) + '.svg'

    if valor < 100000:
        return basename + str(valor/1000)[:2] + 'k.svg'
    if valor < 1000000:
        return basename + str(valor/1000)[:3] + 'k.svg'
    return basename + re.sub('\.', '_', str(valor/1000000.0 + 0.05)[:3]) + 'M.svg'


def primera_franja(valor):
    return int(str(valor)[0])


def segunda_franja(valor):
    return int(str(valor*10)[1])

def main():
    colores = [
        ['negro',   rgb(32, 32, 32)],
        ['marrón',  rgb(132, 82, 0)],
        ['rojo',    rgb(230, 25, 25)],
        ['naranja', rgb(230, 103, 25)],
        ['amarillo', rgb(230, 230, 26)],
        ['verde',   rgb(24, 168, 24)],      
        ['azul',    rgb(24, 192, 192)],
        ['violeta', rgb(175, 50, 175)],
        ['gris',    rgb(102, 102, 102)],
        ['blanco',  rgb(204, 204, 204)],
        ['oro',     rgb(177, 144, 48)],
    ]
    print(colores)

    valores = [ 1.0, 1.2, 1.5, 1.8, 2.2, 2.7, 3.3, 3.9, 4.7, 5.6, 6.8, 8.2 ]
    valores = valores + \
       [int(val*10+0.5) for val in valores] + \
       [int(val*100+0.5) for val in valores] + \
       [int(val*1000+0.5) for val in valores] + \
       [int(val*10000+0.5) for val in valores] + \
       [int(val*100000+0.5) for val in valores] + \
       [int(val*1000000+0.5) for val in valores]


    template = jinja_template('electric-resistencia.svg')
    for valor in valores:
        color_primera = colores[primera_franja(valor)][1]
        color_segunda = colores[segunda_franja(valor)][1]
        color_multiplicador = colores[multiplicador(valor)][1]
        data = template.render(color_primera=color_primera, color_segunda=color_segunda, color_multiplicador=color_multiplicador)
        print(filename(valor))
        with open(filename(valor), 'w') as outfile:
            outfile.write(data)

    
main()
