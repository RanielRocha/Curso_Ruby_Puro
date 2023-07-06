## Crie uma expressão regular que faça o casamento de padrão com o número de telefone presente no texto a seguir.
# “Olá, tudo bem? Meu whats app é (99) 7 4321-1234”

text = "Olá, tudo bem? Meu whats app é (99) 7 4321-1234"

regex = text.match(/\(\d{2}\) \d \d{4}-\d{4}/)

puts "O match do padrão do nº de telefone do texto trás: #{regex}"