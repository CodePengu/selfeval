Feature:Show the content of existing  questions in the Question List Page
  
  As an admin
  So that I can see content of the existing Question completely 
  I want to show the existing question
 
 Background: questions in database
 
  Given the following questions exist:
  | content      | option1 | option2      | option3      | option4    | answer  |
  | Star Wars    | PG      | George Lucas |   1977-05-25 |  pust      | option1 |
  | Blade Runner | PG      | Ridley Scott |   1982-06-25 |  mine      | option2 |
  | Alien        | R       | Rajamouli    |   1979-05-25 |  stup      | option4 |
  | THX-1138     | R       | George Lucas |   1971-03-11 |  purr      | option2 |
  
  
  Scenario: showing the content of the existing question
  When I am on the Question List Page
  And I follow "Show" of "1"
  Then the content of "1" should be "Star Wars"
  
 Scenario: redirecting to edit the content of the existing question
  When I am on the content declaration page of "1"
  And I follow "Edit" of "1"
  Then I should be redirected to the edit page of "1"
  
#Scenario:updating question successful after editing
 # When I am on the edit page of "1"
 # And I follow "Update Question" of "1"
 # Then I should be redirected to the content declaration page of "1"
 # And the content of "1" should be the updated content
  