#coding:utf-8
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
import time
import datetime

ChromeDriveDir ="/usr/lib/chromium-browser/chromedriver"



driver = webdriver.Chrome(ChromeDriveDir)
q = "基改食品"
start_id = 607
f = open("output.csv","wa")
for page_index in xrange(10):
    driver.get("https://www.google.com.tw/search?q="+q+"&start="+str(page_index*10))
    elem = driver.find_elements_by_class_name("r")    
    for i in elem:
        try:
            title = i.text.replace('"',"'")
            link_elem = i.find_element_by_tag_name("a")
            link = link_elem.get_attribute('href')
            row = ("\""+str(start_id)+"\",\""+title+"\",\""+link+"\",\""+title+"\"\n").encode("utf8")
            print(row)
            f.write(row)
            start_id+=1
        except:
            pass

    time.sleep(2)

driver.close()



f.close()
'''
driver = webdriver.Chrome(ChromeDriveDir)
#    go to page
driver.get("http://human.is.ncu.edu.tw/HumanSys/login")
time.sleep(WaitLoadTime)
elem = driver.find_element_by_id("userid_input")
elem.send_keys('106524018')
elem = driver.find_element_by_name("j_password")
elem.send_keys('!Gavin17423')
elem.send_keys(Keys.RETURN)
time.sleep(WaitLoadTime)
driver.get("http://human.is.ncu.edu.tw/HumanSys/student/stdSignIn")
time.sleep(WaitLoadTime)

elem = driver.find_element_by_id("table1")


link_list = []
for row in elem.find_elements_by_tag_name("tr"):
    col_list = row.find_elements_by_tag_name("td")
    if(len(col_list)):
        for i in col_list:
            for i2 in i.find_elements_by_tag_name("a"):
                print(i2.text)
                if(i2.text.encode('utf-8')=="新增簽到"):
                    link = i2.get_attribute("href")
                    print(link)
                    link_list.append(link)

nextturnwaittime = workhoursdaliy*60*60
for i in link_list:

    driver.get(i)

    try:
        elem = driver.find_element_by_id("signin")
        elem.click()
    except Exception as e:
        #print(e)
        try:
            elem = driver.find_element_by_id("AttendWork")
            elem.send_keys('coding works')
            elem = driver.find_element_by_id("signout")
            elem.click()
            nextturnwaittime = 16*60*60  
        except Exception as e2:
            print(e)   
print("Next Turn:",nextturnwaittime/3600,"hrs")
driver.close()
time.sleep(nextturnwaittime)
'''

#id="signin"
#id="signout"
#id="AttendWork"
'''
#    enter email & password
elem = driver.find_element_by_name("email")
elem.clear()
elem.send_keys(FaceBookID)
elem = driver.find_element_by_name("pass")
elem.clear()
elem.send_keys(FaceBookPass)
elem.send_keys(Keys.RETURN)
time.sleep(WaitLoadTime)
'''

