Feature: zipcode

  @zipcode
  Scenario:Zipcode Search and a ordinary cash payment
    Given i'm doing a zip code search
    And i press the "OK" button
    And i select the qa calabash restaurant from the list
    And i select first menu from the list
    And i select mini burger menu
    And i scroll till i see "add to cart" button
    And i click on add to cart
    And i click on "go to cart"
    And i click on "select payment method"
    And i select cash
    And i click on form
    And i fill in the form
    And i make an order by clicking the order now button
    Then user should have made a successful order