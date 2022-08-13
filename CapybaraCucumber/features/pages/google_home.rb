require 'capybara/dsl'

class GoogleHome < BasePage
    
    def serch_for(querry)
        find("input[name='q']").set querry
        click_button 'Pesquisa Google'
    end
end