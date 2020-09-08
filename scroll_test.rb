require 'webdrivers/chromedriver'
require "rspec"


describe "scrolling page" do
    it "scrolling page and input Full name and date" do
        driver = Selenium::WebDriver.for :chrome
        driver.navigate.to 'http://formy-project.herokuapp.com/scroll'

        name = driver.find_element(id: 'name')
        driver.action.move_to(name).send_keys('Marcella aqui tb')
        date = driver.find_element(id: 'date')
        date.send_keys('01/01/2021')
    end
end    


