Feature: review test
  
  As a student
  So that I can see my progress on the test
  I want to see which questions are attempted and which are marked

  Background: questions in database
    
    Given the following questions exist:
    | content                | option1 | option2     | option3   | option4  | answer  | topic      |  qtype    |
    | What color is the sky? | red     | green       | blue      | yellow   | option3 | general    |  MCQ      | 
    | When is the exam?      | Monday  | Tuesday     | Wednesday | Thursday | option4 | 606_course |  MCQ      |
    | Who is the professor?  | Walker  | Chen        | Obama     | Trump    | option1 | 606_course |  MCQ      |

  Scenario: see which questions have been attempted
    Given I am on the index page for test_questions
    Then I should see "general"
    And I should see "606_course"
    And I should see "All Topics"
    When I choose "606_course"
    And I press "OK"
    Then the color of "1" in "#review" should be ""
    And the color of "2" in "#review" should be ""
    And I should see "Review All"
    And I should not see "Submit All"
    And I should not see "Summary"
    When I checkbox "marked" for "mark[2]" 
    And I choose "option3" for "answers[2]"
    And I choose "option1" for "answers[3]"
    When I press "Review All"
    Then I should see "When is the exam?"
    And the color of "1" in "#review" should be "#true"
    And the color of "2" in "#review" should be "#false"
    And I should see "Review All"
    And I should see "Submit All"
    And I should not see "Summary"
    When I press "Submit All"
    Then I should not see "Review All"
    And I should not see "Submit All"
    And I should see "Summary"
    When I follow "Summary"
    Then go to the summary page for test_questions
