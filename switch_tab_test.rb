require 'webdrivers/chromedriver'
require "rspec"

describe "Switch tab" do
    it "switches tab" do
        driver = Selenium::WebDriver.for :chrome

        driver.navigate.to 'http://formy-project.herokuapp.com/switch-window'
        
        new_tab_button = driver.find_element(id: 'new-tab-button')
        new_tab_button.click
        
        driver.switch_to.window(driver.window_handles[1])
        
        driver.switch_to.window(driver.window_handles[0])
        
        
        alert_button = driver.find_element(id: "alert-button")
        alert_button.click
        
        driver.switch_to.alert.accept
    end
end    


