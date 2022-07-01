require 'selenium-webdriver'
require 'cucumber'
require 'rubygems'


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
                                   :url => "https://puneetmeghrajani_SK415w:PNq674aY81X4uqyB1CFY@hub-cloud.browserstack.com/wd/hub",
                                   capabilities: caps)
  #$driver = Selenium::WebDriver.for(:chrome)
  $driver.navigate.to "https://www.flipkart.com/"
  $driver.execute_script('browserstack_executor: {"action": "setSessionStatus", "arguments": {"status":"passed", "reason": "Product has been successfully added to the cart!"}}')
end


AfterAll do
  $driver.quit
end