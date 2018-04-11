Feature: summary of the test questions
  
  As a student
  So that I can determine my total score and answers of the questions
  I want to view total score and answers of the questions
  
  Background: questions in database
    
    Given the following questions exist:
    | content                | option1 | option2     | option3   | option4  | answer  |
    | What color is the sky? | red     | green       | blue      | yellow   | option3 |
    | When is the exam?      | Monday  | Tuesday     | Wednesday | Thursday | option4 |
    | Who is the professor?  | Walker  | Chen        | Obama     | Trump    | option1 |

Scenario: summary of the test questions
    Given I am on the index page for test_questions
    When I choose "option1" for "answers[1]"
    And I choose "option3" for "answers[2]"
    And I choose "option1" for "answers[3]"
    When I press "Submit All"
    Then I should be on the index page for test_questions
    And I follow "Summary"
    Then I should be redirected to the summary page
    
Scenario:Seeing the score
  When I am on the summary page
  Then I should see "You scored"
  And I should see "What color is the sky?"
  And I should see "blue"
  And I should see "When is the exam?"
  And I should see "Thursday"
  And I should see "Who is the professor?"
  And I should see "Walker"
  
Scenario:Going back to the homepage
  When I am on the summary page
  And I follow "Done"
  Then I should be redirected to the sign up page
  
  