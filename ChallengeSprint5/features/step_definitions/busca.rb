Dado('que esteja na home') do
    @home_page = Pages::Home.new
    @home_page.load
    binding.pry
end

Quando('fazer uma busca por um estilo ou produto específico') do
    @home_page.search_for("DRESSES")
    @search_results_page = Pages::SearchResults.new
    binding.pry
end


Então('deve ser retornado os resultados da busca') do
    binding.pry
    expect(@search_results_page).to have_products
    
end