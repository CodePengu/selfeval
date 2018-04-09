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
    And I should see "red"
    And I should see "green"
    And I should see "blue"
    And I should see "yellow"
    And I should see "When is the exam?"
    And I should see "Monday"
    And I should see "Tuesday"
    And I should see "Wednesday"
    And I should see "Thursday"
    And I should see "Who is the professor?"
    And I should see "Walker"
    And I should see "Chen"
    And I should see "Obama"
    And I should see "Trump"
    
    
  Scenario: submit answers to the questions on application's test_questions page
    Given I am on the index page for test_questions
    When I press "Submit All"
    Then I should be on the index page for test_questions
    And I should see "What color is the sky?"
    And I should see "red"
    And I should see "green"
    And I should see "blue"
    And I should see "yellow"
    And I should see "The correct Answer is" 
    And I should see "the user selected answer is" 
    And I should see "So it was"
    And I should see "When is the exam?"
    And I should see "Monday"
    And I should see "Tuesday"
    And I should see "Wednesday"
    And I should see "Thursday"
    And I should see "The correct Answer is" 
    And I should see "the user selected answer is" 
    And I should see "So it was"
    And I should see "Who is the professor?"
    And I should see "Walker"
    And I should see "Chen"
    And I should see "Obama"
    And I should see "Trump"
    And I should see "The correct Answer is" 
    And I should see "the user selected answer is" 
    And I should see "So it was"

