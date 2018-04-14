Given(/^the following questions exist:$/) do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  table.hashes.each do |hash|
    Question.create(hash)
  end
end
