require_relative '../support/helpers/web_driver_helper'

class ProductPage
  PRODUCT = [:css, '#container > div > div._36fx1h._6t1WkM._3HqJxg > div._1YokD2._2GoDe3 > div:nth-child(2) > div:nth-child(2) > div > div > div > a > div._3pLy-c.row > div.col.col-5-12.nlI3QM > div._3tbKJL > div._25b18c > div._30jeq3._1_WHN1']

  def get_price_of_prod()
    output=Functions.findelement(PRODUCT.first,PRODUCT.last)
    puts output.text
  end

end