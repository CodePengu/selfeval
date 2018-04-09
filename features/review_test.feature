Feature: review test
  
  As a student
  So that I can see my progress on the test
  I want to see which questions are attempted and which are correct

  Background: questions in database
    
    Given the following questions exist:
    | content                | option1 | option2     | option3   | option4  | answer  |
    | What color is the sky? | red     | green       | blue      | yellow   | option3 |
    | When is the exam?      | Monday  | Tuesday     | Wednesday | Thursday | option4 |
    | Who is the professor?  | Walker  | Chen        | Obama     | Trump    | option1 |

  Scenario: see which questions have been attempted
    Given I am on the index page for test_questions
    Then the color of "1" in "#review" should be ""
    And the color of "2" in "#review" should be ""
    And the color of "3" in "#review" should be ""
    When I select "blue" from "answers[1]"
    And I select "Monday" from "answers[2]"
    When I press "Submit All"
    Then the color of "1" in "#review" should be "#true"
    And the color of "2" in "#review" should be "#false"
    And the color of "3" in "#review" should be ""
