import os
import re
import codecs
import time
from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from webdriver_manager.chrome import ChromeDriverManager


def main():
    data = read('../recursos-blogs.rst')
    webs = re.split('#. ', data)
    screenshots = get_screenshots(webs)

    for i in range(1, len(webs)):
        lines = webs[i].split('\r\n')
        newlines = [ ]
        lines = lines[:6] + newlines + lines[6:]
        webs[i] = '\r\n'.join(lines)

    rstdata = '#. '.join(webs)
    write('recursos-blogs.txt', rstdata)
    

def get_screenshots(webs):
    screenshots = [ None ]
    driver = webdriver.Chrome(service=Service(ChromeDriverManager().install()))
    for web in webs[1:]:
        url = url_get(web)
        print(url_to_file(url))
        
        screenshot_name = 'screenshots/recursos-' + url_to_file(url) + '.png'
        screenshots.append(screenshot_name)
        if not os.path.exists(screenshot_name):
           driver.get(url)
           driver.set_window_size(1024, 800)
           time.sleep(5)
           driver.save_screenshot(screenshot_name)
    driver.quit()
    return screenshots


def url_to_file(url):
   url = re.split('://', url)[1].strip('/')
   filename = re.sub('[\.\/\%]', '_', url)
   return filename
    

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
        return url
    return None

def read(filename):
    with codecs.open(filename, 'r', encoding='utf-8') as fi:
        data = fi.read()
    return data


main()
