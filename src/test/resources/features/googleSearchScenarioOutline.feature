Feature: Google search functionality with Scenario Outline
  User Story: As a user, when I am on the google page
  I should be able to search whatever I want and see relevant information

  @scenarioOutline
  Scenario Outline: Google search testing with Scenario Outline
    Given user in on the google page
    When user searches "<country>" capital
    Then user should see "<capital>" in the result
    Examples:
      | country      | capital          |
      | USA          | Washington, D.C. |
      | Turkey       | Ankara           |
      | Ukraine      | Kyiv             |
      | Turkmenistan | Ashgabat         |
