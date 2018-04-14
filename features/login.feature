Feature: Login to the website
 
  This is a main page for users (Admin or students) to login into their account
  
  Rules:
  -users must be able to see username and password
  -users must be able to type their username and password
  -users must be able to click a button to upload credentials
 
Background: Users in a database
 
  Given the following users exist:
  | name        | email         | created_at        | updated_at  | password_digest|
  | Xien        | xthomas       | shieldedRavine    | Admin       |     123           |
  | Edmaad      | edScrumMaster | shovelWaterSpirit | Users       |     567           |
  | Alien       | iAmReal       | sugarStarWars     | Users       |                |
  | George      | armyOfOne     | georgeOfTheJungle | Users       |                |

Scenario: verify output when email id is entered
  Given I am on the home page
  Then I follow "Log in"
  And  I fill in "Email" with "xien.thomas@email.com"
  And  I fill in "Password" with "password"
  And  I press "Log in"
 
Scenario: verify signup from login page
  Given I am on the home page
  Then I follow "Log in"
  Then  I follow "Sign up now!"
  And  I fill in "Name" with "xien"
  And  I fill in "Password" with "password"
  And  I fill in "Email" with "xien.thomas@email.com"
  And  I fill in "Confirmation" with "password"
  And I press "Create my account"
  
Scenario: verify output when email id is entered wrong (sad path)
  Given I am on the home page
  Then I follow "Log in"
  Then  I follow "Sign up now!"
  And  I fill in "Name" with "xien"
  And  I fill in "Password" with "password"
  And  I fill in "Email" with "xienthomas"
  And  I fill in "Confirmation" with "password"
  Then I should be on Sign up
  
#   And  I press "Log in"
#   Given I am on the login page
#   And  I fill in "Username" with "xthomas"
#   And  I fill in "Password" with "shieldedRavine"
#   And  I press "login"
#   Then I should be on the home page of "Admin" 
  
# Scenario: add User to existing Database
#   Given I am on the login page
#   And  I fill in "Username" with "edScrumMaster"
#   And  I fill in "Password" with "shovelWaterSpirit"
#   And  I press "login"
#   Then I should be on the home page of "Users"
  
#   Then the director of "Alien" should be "Ridley Scott"
 
# Scenario: find movie with same director
#   Given I am on the details page for "Star Wars"
#   When  I follow "Find Movies With Same Director"
#   Then  I should be on the Similar Movies page for "Star Wars"
#   And   I should see "THX-1138"
#   But   I should not see "Blade Runner"
 
# Scenario: can't find similar movies if we don't know director (sad path)
#   Given I am on the details page for "Alien"
#   Then  I should not see "Ridley Scott"
#   When  I follow "Find Movies With Same Director"
#   Then  I should be on the home page
#   And   I should see "'Alien' has no director info"