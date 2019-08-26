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
