Given("I am on the New Example Page") do
    visit new_example_path
end

When("I fill in the form with valid details") do
    fill_in "example_name", with: "An example"
end

When("submit it") do
    click_button "submit_button"
end

Then("a new example should have been created") do
    expect(Example.count).to be 1
end

Then("I should be redirected to the Example Show Page") do
    expect(current_path).to eq example_path Example.last
end
