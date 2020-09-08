require 'webdrivers/chromedriver'
require "rspec"

describe "autocomplete test" do
    it "autocomplete text should be displayed" do
        driver = Selenium::WebDriver.for :chrome
        driver.navigate.to 'http://formy-project.herokuapp.com/autocomplete'
        
        autocomplete = driver.find_element(id: 'autocomplete')
        autocomplete.send_keys('1555 Park Blvd, Palo Alto, CA, USA')
        
        #implicit
        driver.manage.timeouts.implicit_wait = 5
        
        #Explicit
        wait = Selenium::WebDriver::Wait.new(timeout: 5 )
        wait.until { driver.find_element(class: 'pac-item').displayed? }
        
        autocomplete_result = driver.find_element(class: 'pac-item')
        autocomplete_result.click
    end
end    