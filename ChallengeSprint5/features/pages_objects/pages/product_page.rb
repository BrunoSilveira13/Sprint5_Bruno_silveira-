module Pages
    class ProductPage < SitePrism::Page
        set_url '/'

        element :color, '#color_14'
        element :quantity_increase, '#quantity_wanted_p > a.btn.btn-default.button-plus.product_quantity_up > span > i'
        element :change_size, '#group_1 > option:nth-child(2)'
        element :image, '#bigpic'
        element :add_to_cart, '#add_to_cart > button'
        element :go_to_checkout, '#layer_cart > div.clearfix > div.layer_cart_cart.col-xs-12.col-md-6 > div.button-container > a'
        element :quantity_increase_cart, '#cart_quantity_up_5_19_0_0'
        element :go_to_sing_in, '#center_column > p.cart_navigation.clearfix > a.button.btn.btn-default.standard-checkout.button-medium'
        element :input_email, '#email'
        element :input_passwd, '#passwd'
        element :cofirm_login, '#SubmitLogin'
        element :comfirm_address, '#center_column > form > p > button'
        element :agree, '#uniform-cgv'
        element :go_to_payment, '#form > p > button'
        element :pay_by_bank_wire, '#HOOK_PAYMENT > div:nth-child(1) > div > p > a ' 
        element :comfirm_my_order, '#cart_navigation > button'

        def add_cart()
            add_to_cart.click
            go_to_checkout.click
            quantity_increase_cart.click
            go_to_sing_in.click
            input_email.set('compassteste2@gmail.com')
            input_passwd.set('teste123')
            cofirm_login.click
            comfirm_address.click
            binding.pry
            agree.click
            go_to_payment.click
            pay_by_bank_wire.click
            comfirm_my_order.click

            binding.pry
        end    
        def changes_product()
            color.click
            quantity_increase.click
            change_size.click
        end
    end
end