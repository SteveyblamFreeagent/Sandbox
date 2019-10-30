class NewExample < SitePrism::Page
    set_url '/examples/new'

    # page elements
    element :name_field, '#example_name'
    element :description_field, '#example_description'
    element :submit_button, '#submit_button'

    def populate_form attributes
        name_field.set attributes[:name]
        description_field.set attributes[:description]
    end

    def submit_form
        submit_button.click
    end
end