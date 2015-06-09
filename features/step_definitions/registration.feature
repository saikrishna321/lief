Feature: registration

  @register
  Scenario: user must be able to create a successful registration
    Given I am on application start page
    When I touch "Sign up now!" button
    And I enter First name
    And I enter Last name
    And I enter user name
    And I enter email
    And I enter phone
    And I enter password
    And I enter repeat password
    And I touch Conditions
    And I scroll until I see the "Sign up now"
    And I touch privacy
    And i touch sign up now
    Then user must be successfully registered