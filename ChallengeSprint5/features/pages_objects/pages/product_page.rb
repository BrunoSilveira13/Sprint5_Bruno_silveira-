module Pages
    class ProductPage < SitePrism::Page
        set_url '/'

        element :color, '#color_14'
        element :quantity_increase, '#quantity_wanted_p > a.btn.btn-default.button-plus.product_quantity_up > span > i'
        element :change_size, '#group_1 > option:nth-child(2)'
        element :add_to_cart, '#add_to_cart > button'
        element :close_modal_cart, "span.cross"
        element :image, '#bigpic'
        def cart()
        end    
        def changes_product()
            color.click
            quantity_increase.click
            change_size.click
        end
    end
end