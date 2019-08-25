@menu
Feature: As a user I want to be able to navigate between different screens

  Scenario: Side menu button press
    Given I am on Home screen
    When I press on Menu icon
    Then I should see side menu

  Scenario: Side menu swipe
    Given I am on Home screen
    When I swipe right
    Then I should see side menu