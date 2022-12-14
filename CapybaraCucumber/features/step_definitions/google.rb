Dado('que acesse a home') do
    @google_home = GoogleHome.new
    @google_home.load 
end
  
Então('deverá exibir a logo da Google') do
    expect(@google_home).to have_content 'Gmail' 
    expect(@google_home).to have_css '.lnXdpd'
end

Quando('buscar por {string}') do |termo|
    @google_home.serch_for(termo)
    @google_results = GoogleResults.new
end
  
Então('deveram mostrar resultados') do
    expect(@google_results).to have_content 'Jeep Compass'
end