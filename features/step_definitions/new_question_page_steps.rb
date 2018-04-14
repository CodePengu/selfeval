Then("I should be redirected to New Question Page") do
  visit "/questions/new"
end

Then("I should be redirected to the Question Successfully Created Page") do
  visit "/questions"
end

Then("I should be redirected to the Question list Page") do
  visit questions_path 
end
 