Feature: zipcode
  @zipcode

  Scenario: Zipcode Search

    Given i'm doing a zip code search

    And i press the "OK" button

    And i select the first restaurant in the list

    And i select "Topseller"

    And i select the first meal

    And i click on "go to cart"

    And i increment the cart twice

    And i click on "select payment method"

    And i select cash

    And i click on form

    And i fill in the form

    And i make an order by clicking the order now button

    Then user should have made a successful order