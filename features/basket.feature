Feature: Amazon basket
  As a customer
  I want to add products to basket
  So I can check the total sum of my basket

  Scenario: Add the cheapest product to basket
    Given I visit Amazon homepage
    And I search for the "iPhone 6"
    When I add the cheapest "iPhone 6" smartphone to the basket
    Then the basket should contain  smartphone
