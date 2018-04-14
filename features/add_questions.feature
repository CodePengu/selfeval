Feature:Add a new question
  
  As an admin
  So that I can add a  question not on the database
  I want to add a new question
  
  Scenario: adding a new question
  When I am on the homepage
  And I follow "Add"
  Then I should be redirected to New Question Page
  
  Scenario: adding content of new question
  When I am on the New Question Page
  And I press "Create Question"
  Then I should be redirected to the Question Successfully Created Page
  
  Scenario: Going back from the new question page
  When I am on the New Question Page
  And I follow "Back"
  Then I should be redirected to the Question list Page
  
  Scenario: adding a new question
  When I am on the Question List Page
  And I follow "New Question"
  Then I should be redirected to New Question Page