require 'selenium-webdriver'
require 'cucumber'
require_relative '../pages/homepage'
require_relative '../pages/product_page'

homepage=HomePage.new()
prodpage=ProductPage.new()

Given(/^a user goes to flipkart$/) do

end




When(/^they search for (.*)$/) do |products|
  begin
    homepage.close_login_popup()
  rescue
    puts "no button"
  end
  homepage.clear_search_box()
  homepage.enter_search_keyword(products)
end



Then(/^flipkart should return results for (.*) and output the price of products\.$/) do |products|
  sleep(3)
  prodpage.get_price_of_prod()
  sleep(3)
end