import os
import jinja2
import codecs

def jinja_template(template_file):
    templateLoader = jinja2.FileSystemLoader(searchpath='.')
    templateEnv = jinja2.Environment(loader=templateLoader)
    template = templateEnv.get_template(template_file)
    return template


def main():
    template = jinja_template('mecan-calibre-template.svg')
    for i in range(100, 201, 5):
        measure = i / 10.0
        data = template.render(measure=measure)
        fname = 'mecan-calibre-%04d.svg' % i
        write(fname, data)


def write(fname, data):
    print(fname)
    with codecs.open(fname, 'w', encoding='utf-8') as fo:
        fo.write(data)
    
    
main()
