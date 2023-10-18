from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By
from time import sleep
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC



#Github credentials
username = "krutartha"
password = "Nagesh!77"

#repo name
repo_name = "testApp"

driver = webdriver.Chrome()
driver.get("http://www.github.com/login")

#input username and password
login_field = driver.find_element(By.XPATH, "//*[@id='login_field']")
login_field.send_keys(username)

password_field = driver.find_element(By.XPATH, "//*[@id='password']")
password_field.send_keys(password)

#click signin
driver.find_element(By.XPATH, "//*[@id='login']/div[4]/form/div/input[13]").click()

#create a new repository
driver.get("http://www.github.com/new")
repo_name_field = driver.find_element(By.XPATH, '//*[@id=":r2:"]')
repo_name_field.send_keys(repo_name)
driver.execute_script("window.scrollTo(0, document.body.scrollHeight);")
driver.find_element(By.CLASS_NAME, 'iqZIXT').click()
sleep(30)
