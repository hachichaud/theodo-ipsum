Feature: API

  Background:
    Given I am not on angular
    And I am on "/api"

  Scenario: Version
    Then I should see "version"
