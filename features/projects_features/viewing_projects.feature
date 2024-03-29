Feature: Viewing projects
  In order to assign tickets to a project
  As a user
  I want to be able to see a list of available projects


  Background:
    Given there are the following users:
      | email              | password | admin |
      | admin@ticketee.com | password | true  |
      | user@ticketee.com  | password | false |
    And I am signed in as "user@ticketee.com"
    And there is a project called "TextMate 2"
    And there is a project called "Internet Explorer"
    And "user@ticketee.com" can view the "TextMate 2" project

  Scenario: Listing all projects
    And I am on the homepage
    Then I should not see "Internet Explorer"
    When I follow "TextMate 2"
    Then I should be on the project page for "TextMate 2"