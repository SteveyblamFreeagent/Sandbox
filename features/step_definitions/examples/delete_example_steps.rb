Given("An example exists") do
    @example = Example.create name: "An example", description: "A description"
end

Given("I am on the Example Index Page") do
    @page = IndexExample.new
    @page.load
end

When("I choose an example to destroy") do
    @page.click_destroy 0
end

Then("the example should be deleted") do
    expect(Example.exists? @example.id).to be false
end

Then("I should see a deletion message") do
    expect(@page.notice.is_deletion?).to be true
end