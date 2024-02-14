kyu = 3
max_size = 3000000
url = f"https://www.codewars.com/kata/search/python?q=&r%5B%5D=-{kyu}&order_by=total_completed%20desc"


from selenium import webdriver 
from selenium.webdriver.common.by import By 
from selenium.webdriver.chrome.service import Service as ChromeService 
from webdriver_manager.chrome import ChromeDriverManager 
import time
import re
import codecs
 
options = webdriver.ChromeOptions() 
options.headless = True
driver = webdriver.Chrome(service=ChromeService(ChromeDriverManager().install()), options=options)
driver.get(url) 
driver.set_window_size(1024, 800)

# scroll to bottom of webpage
old_len = 0
while True: 
    driver.execute_script('window.scrollTo(0, document.body.scrollHeight);') 
    time.sleep(3)

    driver.execute_script('return document.body.scrollHeight')

    new_len = len(driver.page_source)
    if old_len == new_len or new_len > max_size:
        break
    old_len = new_len


with codecs.open(f'codewars_{kyu}.html', 'w', encoding='utf-8-sig') as fo:
    fo.write(driver.page_source)

