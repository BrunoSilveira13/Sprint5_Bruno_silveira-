module Pages
    class Authentication < SitePrism::Page

        set_url 'index.php?controller=authentication&back=my-account'
        element :input_email, '#email_create'
        element :comfirm_email, '#SubmitCreate'
        element :comfirm, '#submitAccount'
        element :number, '#phone_mobile'
        element :lastname, '#customer_lastname'
        element :firstname, '#customer_firstname'
        element :passwd, '#passwd'
        element :address, '#address1'
        element :city, '#city'
        elements :state, '#id_state option'
        element :postcode, '#postcode'

        def registration()
            input_email.set Factory::Dynamic.user_email[:email]
            comfirm_email.click
            comfirm.click
            number.set('099999999')
            comfirm.click
            state[1].click
            comfirm.click
            lastname.set('silva')
            comfirm.click
            firstname.set('lucas')
            comfirm.click
            address.set('rua teste 90')
            comfirm.click
            city.set('Passo Fundo')
            comfirm.click
            postcode.set('00000')
            comfirm.click
            passwd.set('teste123')
            comfirm.click
        end
    end
end