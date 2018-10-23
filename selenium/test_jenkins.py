from selenium import webdriver
from selenium.webdriver.common.by import By
import unittest
import time
class leanspace(unittest.TestCase):
    @classmethod
    def setUpClass(inst):
        inst.driver=webdriver.Chrome()
        inst.driver.get("http://192.168.99.100:3001")
        inst.driver.set_page_load_timeout(10)
        inst.driver.maximize_window()
        inst.driver.implicitly_wait(2)

    def test_a_login(self):
        self.driver.find_element_by_id("btn").click()

    @classmethod
    def tearDownClass(inst):
        time.sleep(3)
        inst.driver.quit()

if __name__ == '__main__':
    unittest.main()
