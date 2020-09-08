require 'webdrivers/chromedriver'
require "rspec"

describe "Sample Test" do
    it "does a test using google search" do
        driver= Selenium::WebDriver.for :chrome

        driver.navigate.to "http://google.com"
        
        element = driver.find_element(name: "q")
        
        element.click
        
        element.send_keys "Hello WebDriver!"
        
        element.submit
        
        driver.quit
    end
end    


