

def read_file(filename):
    nombres = []
    with open(filename, 'r') as fi:
        for linea in fi:
            nombre, frecuencia = linea.split(';')
            if nombre in ['Nombre', 'Apellido']:
                continue
            if ' ' in nombre:
                continue
            if int(frecuencia) < 1000:
                continue
            nombres.append(nombre.strip())
    return nombres


def write_file(filename, data):
    with open(filename, 'w') as fo:
        fo.write('\n'.join(data))


nombres = read_file('nombres_hombres.csv')
write_file('nombres_hombres.txt', nombres)

nombres = read_file('nombres_mujeres.csv')
write_file('nombres_mujeres.txt', nombres)

nombres = read_file('apellidos.csv')
write_file('apellidos.txt', nombres)

