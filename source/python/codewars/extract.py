import re
import codecs


for kyu in range(3, 9):
    with codecs.open(f'codewars_{kyu}.html', 'r', encoding='utf-8-sig') as fi:
        data = fi.read()

    strings = re.findall('data-title="[^"]+|href="/kata/[0-9a-f]+/train/python', data)

    for i in range(len(strings)):
        strings[i] = re.sub('data-title="', '', strings[i]).strip()
        strings[i] = re.sub('`', "'", strings[i])
        strings[i] = re.sub('href="/kata/', 'https://www.codewars.com/kata/', strings[i])

    katas = []
    for i in range(0, len(strings), 2):
       katas.append([ strings[i], strings[i+1] ])


    with codecs.open(f'katas_{kyu}.txt', 'w', encoding='utf-8-sig') as fo:
        for kata in katas:
            link = f'#. `{kata[0]}\n   <{kata[1]}>`__\n'
            fo.write(link)
