@history
Feature: As a user I want to be sure that the previous conversions are being saved
    Scenario: Verifying that the conversions are being saved
        Given I am in the "Numbers" screen by swiping "down"
        And I have "Decimal" type as base and "Roman numerals" type as converter
        When I enter "10" on the keyboard
        Then I see "X" in the conversion section
        And The numbers are saved
        And I am in the "History" screen by swiping "up"
        And I see that conversions are being saved correctly
