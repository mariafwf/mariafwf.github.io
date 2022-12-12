from selenium import webdriver
from selenium.webdriver.common.by import By

driver = webdriver.Chrome()
driver.get("https://mariafwf.github.io/")

current = webdriver.Chrome()

entries = driver.find_elements(By.TAG_NAME, 'a')

for entry in entries:
    url = entry.get_attribute('href')
    current.get(url)
    if '404' in current.title:
        print(url + '404 Page Not Found')
        exit(1)
    else:
        print(current.title)
