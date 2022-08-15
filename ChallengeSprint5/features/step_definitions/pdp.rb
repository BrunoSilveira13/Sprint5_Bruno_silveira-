Quando('acessar a página do produto') do
    @search_results_page.access_product_page(0)
    @product_page = Pages::ProductPage.new
end
  
Quando('mudar a cor, o tamanho e a quantidade do produto') do
    @image_before = @product_page.image['src']
    @product_page.changes_product()
end
  
Então('deverá alternar a imagem do produto') do
    expect(@product_page.image['src']).not_to eql @image_before
end