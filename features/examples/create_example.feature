Feature: Create Example

  Scenario: User creates example
    Given I am on the New Example Page
    When I fill in the form with valid details
    And submit it
    Then a new example should have been created
    And I should be redirected to the Example Show Page