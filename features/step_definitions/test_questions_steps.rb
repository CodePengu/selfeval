Given(/^the following questions exist:$/) do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  table.hashes.each do |hash|
    Question.create(hash)
  end
end

Then("the color of {string} in {string} should be {string}") do |string, string2, string3|
  page.should have_css("table#{string2} th#{string3}", text: string)
end

When("I choose {string} for {string}") do |string, string2|
  choose(string2, option: string)
end

When("I checkbox {string} for {string}") do |string, string2|
  check(string2, option: string)
end

Then("I should be redirected to the test page") do
  visit "/test"
end