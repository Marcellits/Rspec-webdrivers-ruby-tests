require 'webdrivers/chromedriver'
require "rspec"

describe "Picking a date" do
    it "pick a date" do
        driver = Selenium::WebDriver.for :chrome

        driver.navigate.to 'https://formy-project.herokuapp.com/datepicker'
        
        datefield = driver.find_element(id: 'datepicker')
        datefield.send_keys('09/30/2020')
        
        datefield.send_keys :return
    end
end    

