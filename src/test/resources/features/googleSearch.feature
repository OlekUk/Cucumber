@smoke
Feature: Google search functionality
  User Story: As a user, when I am on the google page
  I should be able to search whatever I want and see relevant information

  Background:
    Given user in on the google page

  @smoke @apple @googlesearch @db
  Scenario: Google search testing apple
    #Given user in on the google page
    When user types apple in the google search box and click enter
    Then user sees apple in the page title


  @orange @googlesearch
  Scenario: Google search testing orange
    #Given user in on the google page
    When user types orange in the google search box and click enter
    Then user sees orange in the page title

  @param
  Scenario: Google search testing param
    #Given user in on the google page
    When user types "java" in the google search box and click enter
    Then user sees "java" in the page title

    @datatable
  Scenario: Google Search testing data table
    Then user should be able to search for following
      | Java         |
      | Selenium     |
      | Cucumber     |
      | SDET         |
      | Wooden Spoon |






