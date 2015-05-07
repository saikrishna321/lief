Feature: cash
  @zipcode

  Scenario: cash order without login

    Given i'm doing a zip code search
    And i press the "OK" button
    And i select the first restaurant in the list
    And i select "menu"
    And i select the first meal
    And i scroll till i see "add to cart" button
    And i select on "Add to cart"
    And i increment the cart twice
    And i select on "select payment method"
    And i select cash
    And i select on form
    And i fill in the form
    Then i make an order by clicking the order now button
