Feature: Manage Public Keys

  In order to use the tmux.me service
  As a User
  I want to be able to manage my public keys

  Scenario: A user views all of his public keys
    Given I am a user
    And I am logged in
    And I have a public key
    When I go to the public keys page
    Then I should see my public keys

  Scenario: A user adds a public key to his/her collection
    Given I am a user
    And I am logged in
    When I fill out the add public key form
    Then I should see public key I just added

  Scenario: A user removes a public key from his/her collection
    Given I am a user
    And I am logged in
    And I have a public key
    When I delete that key
    Then I should no longer see my public key

  Scenario: A user attempts to bypass ssh command restrictions
    Given I am a user
    And I am logged in
    When I attempt to add an exploit public key
    Then I should see the invalid key message

  @omniauth_test
  Scenario: A user imports their keys from github
    Given I am a user
    And I am logged in
    And I have a github token registered
    When I attempt to import keys from github
    Then I should see the github key
