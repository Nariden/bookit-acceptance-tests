@smoke
Feature: Create student permissions

  Scenario: Students should not be able to create
    Given the user has access token as a student
    When the user creates a new student
    Then the new student should not be created
    # Then the system should not create the new student

  Scenario: Teachers should be able to create
    Given the user has access token as a teacher
    When the user creates a new student
    Then the new student should be created