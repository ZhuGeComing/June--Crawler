import selenium.webdriver
import time
from wxpy import *

def order(url):
    num = 0

    while True:
        driver = selenium.webdriver.Firefox()
        driver.get(url)
        time.sleep(5)
        list = driver.find_elements_by_class_name('orderLogin')
        time.sleep(3)
        driver.quit()
        if not list:
            print('再等等')
            num = 0
        else:
            for i in list:
                print('快来吧')
                num = 1

            break
    return num

        # for i in list:
        #     if i.is_displayed():
        #         if not i.text == '预约':
        #             print('再等等')
        #             continue

                #     time.sleep(3)


        # print(list)
        # time.sleep(5)
        # if list == '预约':
        #     break



    # list_1 = list.find_elements_by_xpath('a')
    # for i in list_1:
    #     condition = i.get_attribute('title')
    #     print(condition)


if __name__ == '__main__':
    bot = Bot()

    me = bot.friends().search('我是地球人')[0]

    url = 'https://www.91160.com/doctors/index/unit_id-100000830/dep_id-100098840/docid-100242324.html'
    # url = 'https://www.91160.com/doctors/index/unit_id-200003204/dep_id-200055347/docid-200013079.html'
    num = order(url)

    while True:

        if num == 1:
            me.send('快来吧！！！')
            time.sleep(1)
            me.send('快来吧！！！')
            time.sleep(1)
            me.send('快来吧！！！')
            break


