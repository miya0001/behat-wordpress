Feature: WordPress Admin

  @javascript
  Scenario: Login into the WordPress as admin with PC
    Given The screen size is 1440x900
    And I login as "admin" with password "admin"

    When I am on "/wp-admin/"
    And I wait for 3 second
    Then I should see "Dashboard"
    And I should see "Collapse menu"

    When I click the "#collapse-menu" element
    Then I should not see "Collapse menu"

    When I click the "#collapse-menu" element
    Then I should see "Collapse menu"

    When I am on "/wp-admin/plugins.php"
    Then I should see "Plugins"
    And I should see "Debug Bar"

    When I am on "/wp-admin/customize.php"
    Then I should see "Site Identity"

  @javascript
  Scenario: Login into the WordPress as admin with mobile
    Given The screen size is 320x480
    And I am on "/wp-admin/"
    And I login as "admin" with password "admin"

    Then I should see "Dashboard"
    And I should not see "Collapse menu"
