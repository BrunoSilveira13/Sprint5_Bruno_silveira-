#language: pt

@regression
Funcionalidade: Pagina do produto 
    COMO usuário do sistema 
    QUERO mudar a cor, o tamanho e a quantidade de um produto especifico 
    PARA deixar o produto ao meu gosto

    Contexto: 
        Dado que esteja na home
        Quando fazer uma busca por um estilo ou produto específico
        E acessar a página do produto
    @PDP
    Cenário: Produto
        Quando mudar a cor, o tamanho e a quantidade do produto
        Então deverá alternar a imagem do produto