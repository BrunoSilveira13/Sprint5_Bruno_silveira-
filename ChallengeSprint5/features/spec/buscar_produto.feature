#language: pt

@regression
Funcionalidade: Busca um produto 
    COMO úsuario do Ecommerce Automation Practice
    QUERO buscar por um produto específico
    PARA poder comprar o produto desejado

    Contexto: Estar na Home
        Dado que esteja na home
    
    @search_for_product
    Cenário: Buscar por produtos existentes
        Quando fazer uma busca por um estilo ou produto específico
        Então deve ser retornado os resultados da busca