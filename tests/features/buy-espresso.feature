Feature: Buying an espresso

  Scenario: I can enter in the cafe and can see the current value of my espresso
    Given that I have started the game by navigating to "http://localhost:3000"
    And I navigated to the position "inside the cafe"
    And the value of my "Health" is 50
    And the value of my "Money" is 10
    And the value of my "Espressos" is 0

  Scenario: Buying an espresso decreases Money and increases Health and Espressos
    Given that I have started the game by navigating to "http://localhost:3000"
    And I navigated to the position "inside the cafe"
    When I click on button "Buy an espresso"
    Then the value of my "Money" is 5
    And the value of my "Health" is 60
    And the value of my "Espressos" is 1
