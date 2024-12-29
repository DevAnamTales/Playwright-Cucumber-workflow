Feature: Win the game
  As a user I want to win the game by obtaining 5 cups of espresso (based on my empirical knowledge about how to win the game).

  Scenario: Make moves so I can win the game
    Given that I have started the game by navigating to "http://localhost:3000"
    When I navigated to the position "in a crowded bar"
    And I wait until the event "a can of beer for free" occurs
    And I navigated to the position "at the concert"
    And I wait until the event "jam with us?" occurs
    And I click on button "Jam with the band"
    And I navigated to the position "at the concert"
    And I navigated to the position "inside the cafe"
    And I wait until the event "The barista is in a dark corner" occurs
    And I click on button "Give beer to barista"
    And I buy 3 espressos
    Then the value of my "Espressos" should be 5
    And I should see the text "Yes! You feel alive and pumping"