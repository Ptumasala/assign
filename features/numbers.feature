@numbers
Feature: As a user I want to convert numbers from and to different formats

    @wip
    Scenario Outline: Decimal to Roman numerals conversion
        Given I am in the "Numbers" screen
        And I have "<base_type>" type as base and "<conversion_type>" type as converter
        When I enter "<input_value>" on the keyboard
        Then I see "<conversion_value>" in the conversion section
        Examples:
        | base_type    | conversion_type | input_value  | conversion_value |
        | Decimal      | Roman numerals  | 10           | X                |
        | Decimal      | Roman numerals  | 100          | C                |
        | Hexadecimal  | Base-12         | 10           | 14               |
        | Base-12      | Base-13         | 45           | 26               |
        