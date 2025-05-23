"""
   Generate a list of external images used in Picuino web
"""
import os
import re
import codecs
import subprocess

header_file = 'legal-attribution.txt'
output_file = '../legal-attribution.rst'
output_discard = 'legal-internal-figures.txt'

filter_external = 'Wikimedia Commons|Pixabay|Pexels'
extensions = ['.rst']
excludes = ['legal-attribution.rst']


def main():
    figures = []
    for path, dirs, fnames in os.walk('..'):
        for fname in fnames:
            figures = figures + process(path, fname)

    figures_external, figures_internal = filter_figures(figures)
    generate_thumbs(figures_external)

    header = '\n'.join(read_file(header_file)) + '\n'
    export(output_file, figures_external, header=header)
    export(output_discard, figures_internal)

    input('Press Enter')


def generate_thumbs(figures):
    for figure in figures:
        image = figure[1].split('figure::')[1].strip()
        root, base = os.path.split(image)
        base, ext = os.path.splitext(base)
        if ext == '.gif':
            image = image + '[0]'
            thumb = 'legal/external-images/' + base + '.jpg'
        else:
            thumb = 'legal/external-images/' + base + '-tb' + ext            
        figure[1] = f'.. figure:: {thumb}'        
        if not os.path.exists('../' + thumb):
            argument = f'../{image} -resize 320x320^ ../{thumb}'
            os.system('/Bin/ImageMagick/convert.exe ' + argument)

            
def export(fname, figures, header=''):
    figures = ['\n'.join(lines) for lines in figures]    
    with codecs.open(fname, 'w', encoding='utf-8-sig') as fo:
        fo.write(header)
        fo.write('\n\n----\n\n'.join(figures))


def filter_figures(figures):
    figures_external = []
    figures_internal = []
    for figure in figures:
        if re.search(filter_external, figure[-1]):
            figures_external.append(figure)
        else:
            figures_internal.append(figure)

    return figures_external, figures_internal



def process(path, fname):
    base, ext = os.path.splitext(fname)
    fname_long = os.path.join(path, fname)
    if ext.lower() not in extensions:
        return []
    if fname in excludes:
        return []
    print(fname_long)

    content = read_file(fname_long)
    copy_mode = False
    figures = []
    for line in content:
        indent = len(line) - len(line.lstrip())
        
        if copy_mode and line and indent <= figure_indent:
            copy_mode = False
            while figure[-1] == '':
                figure = figure[:-1]
            figures.append(figure)

        if re.search('\.\. figure::', line):
            copy_mode = True
            figure_indent = indent
            figure = [f'..\n   source: {fname_long[3:]}\n']
    
        if copy_mode:
            if re.search(':width:', line):
                continue
            if re.search(':align:', line):
                continue
            figure.append(line[figure_indent:])

    return figures



def read_file(fname):
    lines = []
    with codecs.open(fname, 'r', encoding='utf-8-sig') as fi:
        for line in fi:
            lines.append(line.rstrip())
    return lines


main()
