require 'selenium-webdriver'
require 'cucumber'




When(/^they search for "([^"]*)"$/) do |arg|
  $driver.find_element(xpath: '/html/body/div[2]/div/div/button').click
  search_field = $driver.find_element(xpath: '//*[@id="container"]/div/div[1]/div[1]/div[2]/div[2]/form/div/div/input')
  search_field.send_keys("macbook pro")
  search_field.send_keys :return
end


Then(/^amazon should return results for "([^"]*)"$/) do |arg|
  sleep(3)
  output= $driver.find_element(xpath: '/html/body/div[1]/div/div[3]/div[1]/div[2]/div[2]')
  sleep(3)
  puts output.text
  #@driver.quit
end

When(/^they search for (.*)$/) do |products|
  $driver.find_element(xpath: '/html/body/div[2]/div/div/button').click
  search_field = $driver.find_element(xpath: '//*[@id="container"]/div/div[1]/div[1]/div[2]/div[2]/form/div/div/input')
  search_field.send_keys("macbook pro")
  search_field.send_keys :return
end



Then(/^flipkart should return results for (.*) and output the price$/) do |products|
  sleep(3)
  output= $driver.find_element(xpath: '//*[@id="container"]/div/div[3]/div[1]/div[2]/div[2]/div/div/div/a/div[2]/div[2]/div[1]')
  sleep(3)
  puts output.text
  #@driver.quit

end

Given(/^a user goes to flipkart$/) do
  # @driver = Selenium::WebDriver.for(:chrome)
  # @driver.navigate.to "https://www.flipkart.com/"

end