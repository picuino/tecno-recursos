import yaml
import jinja2
import codecs

def main():
    filename_questions = 'evaluacion-asignatura-preguntas-v11'

    database = read_yaml(filename_questions + '.yaml')
    encuesta = template('evaluacion-asignatura-template.xml', database)
    write_xml(filename_questions + '.xml', encuesta)    

    input('Pulsa Enter')


def template(template_file, database):
    environment = jinja2.Environment(loader=jinja2.FileSystemLoader('.'))
    template = environment.get_template(template_file)
    rendered = template.render(database=database)
    return rendered
    

def write_xml(filename, data):
    with codecs.open(filename, 'w', encoding='utf-8') as fo:
        fo.write(data)


def read_yaml(filename):
    with codecs.open(filename, 'r', encoding='utf-8') as fi:
        yamldata = fi.read()
    yaml_files = list(yaml.load_all(yamldata, Loader=yaml.SafeLoader))

    return yaml_files[0]


main()
