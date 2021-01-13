import pandas as pd
import time, os, re
from glob import glob

from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.support.select import Select

# %%
options = Options()

options.add_experimental_option("prefs", {
      "download.default_directory": r"/tmp",
      "download.prompt_for_download": False,
      "download.directory_upgrade": True,
      "safebrowsing.enabled": True
    })

options.add_argument('headless')
options.add_argument('--disable-infobars')
options.add_argument('--disable-dev-shm-usage')
options.add_argument('--no-sandbox')
# options.add_argument('--remote-debugging-port=9222')

driver = webdriver.Chrome('/home/alal/Desktop/Programs/chromedriver', options=options)

# %%
