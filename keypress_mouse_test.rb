require 'webdrivers/chromedriver'
require "rspec"

describe "Keypress" do
    it "Keypress" do
        driver = Selenium::WebDriver.for :chrome
        driver.navigate.to 'http://formy-project.herokuapp.com/keypress'

        name =driver.find_element(id: 'name')
        name.send_keys('Marcella')

        button = driver.find_element(id: 'button')
        button.click
    end
end    

