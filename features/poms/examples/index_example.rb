require_relative "../sections/notice"

class IndexExample < SitePrism::Page
    set_url '/examples'

    elements :destroy_buttons, 'a.destroy_button'
    section :notice, ::Notice, '#notice'

    def click_destroy index
        destroy_buttons[index].click
    end
end