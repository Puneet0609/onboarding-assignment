$LOAD_PATH << File.dirname(__FILE__)
require 'selenium-webdriver'
require 'cucumber'
require 'rubygems'
require 'constants/constant'
require 'yaml'



url_file = YAML::load_file(File.join(__dir__, "../../config.yml"))

BeforeAll do
  caps = Selenium::WebDriver::Remote::Capabilities.new
  caps['browser'] = 'Chrome'
  caps['os_version'] = '10'
  caps['resolution'] = '1920x1080'
  caps['os'] = 'Windows'
  caps['browser_version'] = '100.0'
  caps['javascriptEnabled'] = 'true'
  caps['name'] = 'BStack-[Ruby] Sample Test'
  caps['build'] = 'BStack Build Number 1'

  $driver = Selenium::WebDriver.for(:remote,
                                    :url => "https://"+ url_file["User_name"]+":"+url_file["Access_Key"]+::BSTACK_URL,
                                    :capabilities => caps)

  $driver.navigate.to ::SITEURL
  $driver.execute_script('browserstack_executor: {"action": "setSessionStatus", "arguments": {"status":"passed", "reason": "Product has been successfully added to the cart!"}}')
end



AfterAll do
  $driver.quit
end