Feature: review test
  
  As a student
  So that I can see my progress on the test
  I want to see which questions are attempted and which are marked

  Background: questions in database
    
    Given the following questions exist:
    | content                | option1 | option2     | option3   | option4  | answer  | qtype |   topic    | 
    | What color is the sky? | red     | green       | blue      | yellow   | option3 | MCQ   | general    |
    | When is the exam?      | Monday  | Tuesday     | Wednesday | Thursday | option4 | MCQ   | 606_course |
    | Who is the professor?  | Walker  | Chen        | Obama     | Trump    | option1 | MCQ   | 606_course |

  Scenario: see which questions have been attempted
    Given I am on the index page for test_questions
    Then I should see "general"
    And I should see "606_course"
    And I should see "Default"
    And I should see "Take Test"
    And I should not see "What color is the sky?"
    When I checkbox "selected" for "general" 
    And I press "Take Test"
    Then I should see "What color is the sky?"
    And I should see "red"
    And I should see "green"
    And I should see "blue"
    And I should see "yellow"
    And I should not see "When is the exam?"
    And I should not see "Monday"
    And I should not see "Tuesday"
    And I should not see "Wednesday"
    And I should not see "Thursday"
    And I should not see "Who is the professor?"
    And I should not see "Walker"
    And I should not see "Chen"
    And I should not see "Obama"
    And I should not see "Trump"