Quando('realizar o login com senha e e-mail') do
    @authentication = Pages::Authentication.new
    @authentication.log_in()

end
  
Então('usuário deve ser logado') do
    @authentication = Pages::Authentication.new
    expect(@authentication).to have_content 'My account'
end