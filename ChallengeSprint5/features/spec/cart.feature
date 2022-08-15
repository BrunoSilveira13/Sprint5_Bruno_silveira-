#language: pt

@regression
Funcionalidade: Carrinho 
    COMO usuário do sistema
    QUERO adicionar produtos ao meu carrinho
    PARA poder finalizar a compra

    Contexto:
        Dado que esteja na home
        Quando fazer uma busca por um estilo ou produto específico
        E acessar a página do produto
    
    @purchase
    Cenário: Fazer a compra 
        Quando adicionar o produto ao carrinho e finalizar a compra
        Então tela de comfirmação deve aparecer 