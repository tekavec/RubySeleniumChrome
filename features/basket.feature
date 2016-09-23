Feature: Amazon basket
  As a customer
  I want to add products to basket
  So I can check the total sum of my basket

  Scenario: Add the cheapest product to basket
    Given I visit Amazon homepage
    And I search for the "iPhone 6" smartphone
    And I select the cheapest product among results found
    When I add the selected product to the basket
    Then the basket should contain the product added
