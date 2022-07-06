Feature: Flipkart Search Functionality

  Scenario Outline: Users can search for product on Flipkart
    Given a User goes to Flipkart
    When they search for "<products>"
    Then Flipkart should return result for "<products>"

    @phones
    Examples: 
      | products  |
      | iphone 13 |
      | oneplus 8 |

    @laptops
    Examples: 
      | products    |
      | macbook pro |
