Feature: modify an existing question
  
  As an admin
  So that I can update a question in the database
  I want to add a new question
  
  Background: questions in database
 
  Given the following questions exist:
  | qtype | content       | option1 | option2 | option3 | option4 | answer  |  explanation | topic  |
  | MCQ  | Question 1    | opt1    | opt2    | opt3    | opt4    | option1 |  exp1        | general |
  | MCQ  | Question 2    | opt1    | opt2    | opt3    | opt4    | option2 |  exp2        | general |
  | MCQ  | Question 3    | opt1    | opt2    | opt3    | opt4    | option4 |  exp3        | general |
  
  Scenario: path of editing an existing question
  When I am on the homepage
  And I follow "Edit" of "1"
  Then I should be redirected to Edit Question Page of "1"
  
  Scenario: destroying an existing question
  When I am on the homepage
  And I follow "Destroy" of "1"
  Then I should be redirected to the homepage
  And "Question 1" should not be in the Question List