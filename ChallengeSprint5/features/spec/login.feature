#language: pt 

Funcionalidade: login e cadastro 
    COMO usuário do sistema
    QUERO me autenticar na aplicação  
    PARA realizar compras 

    Contexto:
        Dado que esteja na home
        E avance para a pagina de autenticação
        
    @registration
    Cenário: Cadastrar-se no sistema
        Quando preencher o campo de e-mail 
        Então realizar o cadastro preenchendo os campos 
        Então deve cadastrar o usuário ao sistema

    @login
    Esquema do Cenário: Fazer login no sistema 
        Quando realizar o login "<tipo>"
        Então mensagem deve ser exibida "<msg>"
        
        Exemplos:
        |tipo      |msg    |
        | válido   |  N/A  |
        | inválido |  N/A  |