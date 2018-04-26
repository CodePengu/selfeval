Feature: review test
  
  As a student
  So that I can see my progress on the test
  I want to see which questions are attempted and which are marked

  Background: questions in database
    
    Given the following questions exist:
    | content                | topic  | option1 | option2     | option3   | option4  | answer  |
    | What color is the sky? | topic1 | red     | green       | blue      | yellow   | option3 |
    | When is the exam?      | topic2 | Monday  | Tuesday     | Wednesday | Thursday | option4 |
    | Who is the professor?  | topic2 | Walker  | Chen        | Obama     | Trump    | option1 |

  Scenario: see which questions have been attempted
    Given I am on the index page for test_questions
    Then the color of "1" in "#review" should be ""
    And the color of "2" in "#review" should be ""
    And the color of "3" in "#review" should be ""
    And I should see "Review All"
    And I should not see "Submit All"
    And I should not see "Summary"
    When I checkbox "marked" for "mark[1]" 
    And I choose "option3" for "answers[1]"
    And I choose "option1" for "answers[2]"
    When I press "Review All"
    Then the color of "1" in "#review" should be "#true"
    And the color of "2" in "#review" should be "#false"
    And the color of "3" in "#review" should be ""
    And I should see "Review All"
    And I should see "Submit All"
    And I should not see "Summary"
    When I press "Submit All"
    Then I should not see "Review All"
    And I should not see "Submit All"
    And I should see "Summary"
    When I follow "Summary"
    Then go to the summary page for test_questions
