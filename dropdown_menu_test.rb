require 'webdrivers/chromedriver'
require "rspec"

describe "Droping down a menu" do
    it "dropping down" do
        driver = Selenium::WebDriver.for :chrome

        driver.navigate.to 'https://formy-project.herokuapp.com/dropdown'
        
        dropdown_menu = driver.find_element(id: 'dropdownMenuButton')
        dropdown_menu.click
        
        autocomplete_item = driver.find_element(id: 'autocomplete')
        autocomplete_item.click
    end
end    

