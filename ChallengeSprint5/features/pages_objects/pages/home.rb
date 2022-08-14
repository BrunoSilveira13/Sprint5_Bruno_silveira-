
require_relative '../sections/header'

module Pages
    class Home < SitePrism::Page

        set_url '/'

        section :header, Sections::Header, 'header'
        def search_for(product)
            header.btn_open_search.click
            header.input_search.set product
            header.confirme_search.click
        end    
    end
end