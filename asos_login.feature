Feature: Asos Logging In

  Scenario: Inputting a incorrect email and password into fields on login page
  Given I access the asos login page
    And I input incorrect email address
    And I input incorrect password
  When I press login
  Then I receive an error saying incorrect information
