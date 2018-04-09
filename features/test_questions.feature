Feature: submit answers to questions
  
  As a student
  So that I can determine if I should take CSCE 629
  I want to view questions and submit answers for them
  
  Background: questions in database
    
    Given the following questions exist:
    | content                | option1 | option2     | option3   | option4  | answer  |
    | What color is the sky? | red     | green       | blue      | yellow   | option3 |
    | When is the exam?      | Monday  | Tuesday     | Wednesday | Thursday | option4 |
    | Who is the professor?  | Walker  | Chen        | Obama     | Trump    | option1 |
  
  Scenario: view list of questions on application's test_questions page
    When I go to the index page for test_questions
    Then I should see "What color is the sky?"
    And I should see "When is the exam?"
    And I should see "Who is the professor?"
    
    
  Scenario: submit answers to the questions on application's test_questions page
    Given I am on the index page for test_questions
    When I select "red" from "answers[1]"
    And I select "Wednesday" from "answers[2]"
    And I select "Walker" from "answers[3]"
    When I press "Submit All"
    Then I should be on the index page for test_questions
    And I should see "What color is the sky? [false]"
    And I should see "When is the exam? [false]"
    And I should see "Who is the professor? [true]"

  Scenario: leave questions blank
    Given I am on the index page for test_questions
    When I select "blue" from "answers[1]"
    And I select "Monday" from "answers[2]"
    When I press "Submit All"
    Then I should see "What color is the sky? [true]"
    And I should see "When is the exam? [false]"
    And I should see "Who is the professor?"
    But I should not see "Who is the professor? [true]"
    And I should not see "Who is the professor? [false]"
