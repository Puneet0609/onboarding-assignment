Feature: Flipkart Search functionality
  Scenario: Users can search for specific item on Flipkart
    Given a user goes to flipkart
    When they search for <products>
    Then flipkart should return results for <products> and output the price

    Example:
      |products|
      |macbook pro|
      |nike shoes|