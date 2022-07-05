
Feature: Flipkart Search functionality

  Scenario Outline: Users can search for specific item on Flipkart

    Given a user goes to flipkart

    When they search for <products>

    Then flipkart should return results for <products> and output the price of products.

    @phones
    Examples:
      | products |
      | apple iphone 13|
      | oneplus 8      |

    @laptop
    Examples:
    | products |
    | macbook pro|





