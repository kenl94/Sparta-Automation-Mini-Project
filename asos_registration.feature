Feature: Asos Registration

  Scenario: Inputting incorrect details to sign up should show errors
    Given I access the asos registration page
    And I fill in the form
      And I input incorrect email address details
      And I input incorrect password details
    When I press away
    Then I receive an error saying incorrect details

# Examples:
# | email | password | error |
# | @email | short | The password is too short. |
