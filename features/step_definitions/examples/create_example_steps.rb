# Given("I am on the New Example Page") do
#     visit new_example_path
# end

# When("I fill in the form with valid details") do
#     fill_in "example_name", with: "An example"
#     fill_in "example_description", with: "A description"
# end

# When("I submit it") do
#     click_button "submit_button"
# end

# Then("a new example should have been created") do
#     expect(Example.count).to be 1
# end

# Then("I should be redirected to the Example Show Page") do
#     expect(current_path).to eq example_path Example.last
# end

Given("I am on the New Example Page") do
    @page = NewExample.new
    @page.load
end

When("I fill in the form with valid details") do
    @page.populate_form name: "An example", description: "A description"
end

When("I submit it") do
    @page.submit_form
end

Then("a new example should have been created") do
    expect(Example.count).to be 1
end

Then("I should be redirected to the Example Show Page") do
    expect(ShowExample.new).to be_displayed(id: Example.last.id)
end

