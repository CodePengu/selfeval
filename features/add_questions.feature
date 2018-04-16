Feature:Add a new question
  
  As an admin
  So that I can add a question not on the database
  I want to add a new question
  
   Given the following users exist:
  | name        | email         | created_at        | role  | encrypted_password|
  | Xien        | xthomas       | shieldedRavine    | admin       |     123           |
  | Edmaad      | edScrumMaster | shovelWaterSpirit | user       |     567           |
  | Alien       | iAmReal       | sugarStarWars     | user     |                |
  | George      | armyOfOne     | georgeOfTheJungle | user       |                |
  
  Scenario: adding a new question
  Given I am on the home page
  Then I follow "Sign in"
  And  I fill in "Email" with "xien.thomas@email.com"
  And  I fill in "Password" with "password"
  And  I press "Sign in"
  When I am on the homepage
  # And I follow "Add"
  # Then I should be redirected to New Question Page
  
  Scenario: adding content of new question
  When I am on the New Question Page
  And I fill "content" with "Question"
  And I fill "qtype" with "T/F"
  And I fill "answer" with "option1"
  And I fill "explanation" with "exp"
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