require_relative '../sections/products'
module Pages
    class SearchResults < SitePrism::Page

        set_url '/'

        sections :products,Sections::Products ,'div.product-container'
    end
end