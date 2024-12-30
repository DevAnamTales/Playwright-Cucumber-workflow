Feature: Health check
  As a user I want to see if haelth feature is working correctly
  Scenario: Health decreased by clicking the wait button
    Given that I have started the game by navigating to "http://localhost:3000"
    And I navigated to the position "inside the cafe"
    And the value of my "Health" is 50
    When I click on button "Wait"
    Then the value of my "Health" should be decreased

  Scenario: Health increases when the player buys espresso
    Given that I have started the game by navigating to "http://localhost:3000"
    And the value of my "Health" is 50
    And the value of my "Espressos" is 0
    When I navigated to the position "inside the cafe"
    And I click on button "Buy an espresso"
    Then the value of my "Health" is 60
    And the value of my "Espressos" is 1