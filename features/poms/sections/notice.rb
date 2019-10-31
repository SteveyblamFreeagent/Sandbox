class Notice < SitePrism::Section
    def is_deletion?
        text == "Example was successfully destroyed."
    end
end