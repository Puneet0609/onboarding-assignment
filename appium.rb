
require 'rubygems'
require 'appium_lib'

username = 'BStack_username'
access_key = 'BStack_keys'


desired_caps = {
    'build': 'Ruby Appium Sample',
    "platformName" => "android",
	  "platformVersion" => "12.0",
	  "deviceName" => "Samsung Galaxy S22",
    'browserstack.debug': 'true',
    'app': 'bs://3dc7f4603767fb294cfbcafc98a576b2c7b4dd05'
}

appium_driver = Appium::Driver.new({
    'caps' => desired_caps,
    'appium_lib' => {
        :server_url => "https://#{username}:#{access_key}@hub-cloud.browserstack.com/wd/hub"
    }}, true)
driver = appium_driver.start_driver

wait = Selenium::WebDriver::Wait.new(:timeout => 30)

wait.until { driver.find_element(:id, "textfield").displayed? }
element = driver.find_element(:id, "textfield")
element.send_keys("BrowserStack.com")
button = driver.find_element(:id,"button")
button.click()

sleep 5

results = driver.find_elements(:class, "android.widget.TextView")
if results.count > 0
    puts "Found results - Test Passed"
else
    puts "No results found - Test Failed"
end

driver.quit