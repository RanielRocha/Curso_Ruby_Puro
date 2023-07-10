### MISSÂO ESPECIAL AULA 09
## Crie uma expressão regular (regex) que faça o casamento de padrão com o número de telefone presente no texto a seguir.
# “Olá, tudo bem? Meu whats app é (99) 7 4321-1234”

text = "Olá, tudo bem? Meu whats app é (99) 7 4321-1234"

#O elemento '{x}' representa uma repetição da expressão anterior
regex = text.match(/\(\d{2}\) \d \d{4}-\d{4}/)

puts "O match do padrão do nº de telefone do texto trás: #{regex}"