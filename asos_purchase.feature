Feature:

  Scenario: Adding items to a cart
  Given I pick a gender of clothes
    And I pick a shirt as the style
    And I pick a shirt to add to the cart
  When I add it to the cart
  Then I should be able to see it in the cart
