Before do 
    puts 'estou executando antes de cada scenario'
end

After do |scenario|
    puts 'estou executando depois'
    puts scenario.failed?
end

After('@limpar_banco') do
    puts 'EXECUTANDO DEPOIS DO CENÁRIO Carregar uma pagina do Google CENÁRIO 2'
end