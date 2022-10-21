import os
import re
import codecs


def main():
    data = read('../recursos-blogs.rst')
    webs = re.split('#. ', data)
    webs.sort(key = get_rank)
    write('recursos-blogs.txt', '#. '.join(webs))


def get_rank(web):
    rank = web.split('\n')[4:5]
    try:
        rank = int(re.sub('[, \n]', '', rank[0]))
        return rank
    except:
        return 99000000

def include_similarweb(webs):
    for i in range(1, len(webs)):
        url = url_get(webs[i])
        if re.search('   `Similarweb rank#', webs[i]):
            webs[i] = re.sub('   `Similarweb rank#',
                   '   `Similarweb rank\n   <https://www.similarweb.com/es/website/%s/#overview>`__ :\n   \n' % url, webs[i])
        return webs


def write(filename, data):
    with codecs.open(filename, 'w', encoding='utf-8') as fo:
        fo.write(data)


def url_get(line):
    pattern = 'https?://[^>]*'
    if re.search(pattern, line):
        url = re.findall(pattern, line)[0]
        url = re.split('://', url)[1].strip('/')
        return url
    return None

def read(filename):
    with codecs.open(filename, 'r', encoding='utf-8') as fi:
        data = fi.read()
    return data


main()
