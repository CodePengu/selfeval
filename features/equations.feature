Feature: include formatted equations
  
  As a student
  So that I can better understand math equations
  I want equations to appear similar to how they would be written
  
  Background: questions in database
    
    Given the following questions exist:
    | content                      | option1 | option2     | option3         | option4  | answer  |
    | What color is the sky?       | red     | green       | blue            | yellow   | option3 |
    | What is \(\frac{1+2^2}{5}\)? | 5       | 1           | \(\frac{1}{3}\) | 0        | option2 |
    | Who is the professor?        | Walker  | Chen        | Obama           | Trump    | option1 |

  Scenario: view equations in a question
    When I go to the index page for test_questions
    Then show me the page
    # Then I should see "\frac{1+2^2}{5}" as an equation
    # And I should see "\frac{1}{3}" as an equation
    # When I choose "option1" for "answers[1]"
    # And I choose "option2" for "answers[2]"
    # When I press "Submit All"
    # Then I should see "/frac{1+2^2}{5}" as an equation
    # And I should see "/frac{1}{3}" as an equation