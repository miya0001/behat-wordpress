Feature: Mouseover

  @javascript
  Scenario: I hover over the specific element

    Given the screen size is 1440x900
    And I login as the "administrator" role
    And I am on "/"

    When I hover over the "#wp-admin-bar-my-account" element
    And I wait for 3 seconds
    Then I should see "Edit My Profile"
