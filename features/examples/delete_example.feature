Feature: Delete Example

  Scenario: User deletes example
    Given An example exists
    And I am on the Example Index Page
    When I choose an example to destroy
    Then the example should be deleted
    And I should see a deletion message