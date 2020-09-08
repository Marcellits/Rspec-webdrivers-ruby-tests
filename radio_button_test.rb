require 'webdrivers/chromedriver'
require "rspec"

describe "Testing radio buttons" do
    it "tests radio buttons" do
        driver = Selenium::WebDriver.for :chrome

        driver.navigate.to 'https://formy-project.herokuapp.com/radiobutton'
        
        radio_button_1 = driver.find_element(id: 'radio-button-1')
        radio_button_1.click
        
        radio_button_2 = driver.find_element(css: 'input[value="option2"]')
        radio_button_2.click
        
        #in this case we use XPath to find element 
        #inspect > Elements (in html) > (right click) > copy > Copy XPath 
        radio_button_3 = driver.find_element(xpath: '/html/body/div/div[3]/input')
        radio_button_3.click
    end
end    

