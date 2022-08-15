module Sections
    class Header < SitePrism::Section
        element :btn_open_search, '#search_query_top'
        element :input_search, '#search_query_top'
        element :confirm_search, "button[name='submit_search']"
        element :sign_in, '.header_user_info a'
        element :input_email, '#email_create'
        element :comfirm_email, '#SubmitCreate'
        
    end       
end