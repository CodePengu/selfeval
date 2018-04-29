Feature: submit answers to questions
  
  As a student
  So that I can determine if I should take CSCE 629
  I want to view questions and submit answers for them
  
  Background: questions in database
    
    Given the following questions exist:
     | content                | option1 | option2     | option3   | option4  | answer  | topic      |
     | What color is the sky? | red     | green       | blue      | yellow   | option3 | general    |
     | When is the exam?      | Monday  | Tuesday     | Wednesday | Thursday | option4 | 606_course |
     | Who is the professor?  | Walker  | Chen        | Obama     | Trump    | option1 | 606_course |
  
  Scenario: view list of questions on application's test_questions page
    When I go to the index page for test_questions
    Then I should see "general"
    And I should see "606_course"
    And I should see "OK"
    When I choose "606_course"
    And I press "OK"
    Then I should see "606_course"
    And I should not see "general"
    And I should not see "What color is the sky?"
    And I should not see "red"
    And I should not see "green"
    And I should not see "blue"
    And I should not see "yellow"
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
    When I go to the index page for test_questions
    Then I should see "general"
    And I should see "606_course"
    And I should see "OK"
    When I choose "606_course"
    And I press "OK"
    When I choose "option3" for "answers[2]"
    And I choose "option1" for "answers[3]"
    When I press "Review All"
    Then I press "Submit All"
    Then I should be on the index page for test_questions
    And I should see "When is the exam?"
    And I should see "The correct answer is Thursday and you selected Wednesday so it was wrong"
    And I should see "Who is the professor?"
    And I should see "The correct answer is Walker and you selected Walker so it was correct"

  Scenario: leave questions blank
    Given I am on the index page for test_questions
    When I go to the index page for test_questions
    Then I should see "general"
    And I should see "606_course"
    And I should see "OK"
    When I choose "606_course"
    And I press "OK"
    And I choose "option1" for "answers[2]"
    When I press "Review All"
    Then I press "Submit All"
    And I should see "When is the exam?"
    And I should see "The correct answer is Thursday and you selected Monday so it was wrong"
    And I should see "Who is the professor?"
    But I should see "The correct answer is Walker"
