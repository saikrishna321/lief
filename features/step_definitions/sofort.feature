Feature: sofort

  @sofort
  Scenario: making a sofort payment without user logged in

    Given user must be able to pay
    And i select sofort
    And User must fill in details
    And i enter payment details