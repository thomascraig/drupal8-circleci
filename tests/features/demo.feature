@javascript @api
Feature: Demo feature
  In order to test Drupal
  As an anonymous user
  I need to be able to see the homepage

  Scenario: Visit the homepage
    Given I visit "/"
    Then I should see "Skip to main content"

  Scenario: visit user login page
    Given I visit "/user/login"
    Then I should see "Log in"

  Scenario: An administrative user should be able create page content
    Given I am logged in as a user with the "administrator" role
    When I go to "node/add/page"
    Then I should not see "Access denied"

  Scenario: An administrator should be able to edit page content
    Given "page" nodes:
      | title      | body          | status  |
      | Test page  | test content  | 1       |
    When I go to "admin/content"
    And I click "edit" in the "Test page" row
    Then I should not see "Access denied"
