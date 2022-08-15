Quando('adicionar o produto ao carrinho e finalizar a compra') do
    @product_page.add_cart()
end
  
Então('tela de comfirmação deve aparecer') do
    expect(@product_page).to have_content 'Your order on My Store is complete.'
end