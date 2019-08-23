@javascript @api
Feature: Demo feature
  In order to test Drupal
  As an anonymous user
  I need to be able to see the homepage

  Scenario: Visit the homepage
    Given I visit "/"
    Then I should see "The website encountered an unexpected error. Please try again later."
