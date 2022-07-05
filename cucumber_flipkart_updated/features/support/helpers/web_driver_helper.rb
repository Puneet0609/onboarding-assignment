require 'selenium-webdriver'
require 'cucumber'

module Functions

  def Functions.findelement(selector,locator)
    $driver.find_element(selector, locator)
  end

  def Functions.sendkeys(element,value)
    element.send_keys("\ue009" + "a")
    element.send_keys("\ue003")
    element.send_keys(value)
    element.send_keys :return
  end

  def Functions.click(selector,locator)
    $driver.click(selector,locator)
  end

end