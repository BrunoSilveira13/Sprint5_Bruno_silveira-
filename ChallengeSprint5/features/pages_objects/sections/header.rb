module Sections
    class Header < SitePrism::Section
        element :btn_open_search, '#search_query_top'
        element :input_search, '#search_query_top'
        element :confirme_search , "button[name='submit_search']"
    end       
end