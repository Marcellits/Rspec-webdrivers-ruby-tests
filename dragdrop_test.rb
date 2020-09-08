require 'webdrivers/chromedriver'
require "rspec"

describe "Draging and dropping an image" do
    it "drag and drop" do
        driver = Selenium::WebDriver.for :chrome
        driver.navigate.to 'http://formy-project.herokuapp.com/dragdrop'
        image = driver.find_element(id: 'image')
        box = driver.find_element(id: 'box')
        driver.action.drag_and_drop(image, box).perform
    end
end    

