Dado('avance para a pagina de autenticação') do 
    @home_page = Pages::Home.new
    @home_page.registration() 
end
Quando('preencher o campo de e-mail') do
    @authentication = Pages::Authentication.new
    @authentication.registration()
    email_input = Factory::Dynamic.user_email
    @authentication.registration()
end
  
Então('realizar o cadastro preenchendo os campos') do 
    @authentication = Pages::Authentication.new
    @authentication.registration()
    binding.pry
end

Então('deve cadastrar o usuário ao sistema') do
    @authentication = Pages::Authentication.new
    expect(@authentication).to have_content 'My account'
end