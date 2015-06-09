Feature: credit card

  @credit
  Scenario:A credit card payment without user logged in
    Given user must be able to pay
    And i select credit card
    And User must fill in details
    And i will enter payment details